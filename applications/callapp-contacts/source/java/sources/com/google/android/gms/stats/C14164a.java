package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p350b.C11938a;
import com.google.android.gms.common.util.C12114r;
import com.google.android.gms.common.util.C12116t;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.stats.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a.class */
public final class C14164a {

    /* renamed from: i */
    public static ScheduledExecutorService f52107i;

    /* renamed from: o */
    private static volatile AbstractC14165a f52108o = new C14166b();

    /* renamed from: a */
    public final Object f52109a;

    /* renamed from: b */
    public final PowerManager.WakeLock f52110b;

    /* renamed from: c */
    public WorkSource f52111c;

    /* renamed from: d */
    public final String f52112d;

    /* renamed from: e */
    public boolean f52113e;

    /* renamed from: f */
    public final Map<String, Integer[]> f52114f;

    /* renamed from: g */
    public int f52115g;

    /* renamed from: h */
    public AtomicInteger f52116h;

    /* renamed from: j */
    private final int f52117j;

    /* renamed from: k */
    private final String f52118k;

    /* renamed from: l */
    private final String f52119l;

    /* renamed from: m */
    private final Context f52120m;

    /* renamed from: n */
    private final Set<Future<?>> f52121n;

    /* renamed from: com.google.android.gms.stats.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a$a.class */
    public interface AbstractC14165a {
    }

    public C14164a(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private C14164a(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

    private C14164a(Context context, int i, String str, String str2, String str3, String str4) {
        this.f52109a = this;
        this.f52113e = true;
        this.f52114f = new HashMap();
        this.f52121n = Collections.synchronizedSet(new HashSet());
        this.f52116h = new AtomicInteger(0);
        C12045o.m19161a(context, "WakeLock: context must not be null");
        C12045o.m19159a(str, (Object) "WakeLock: wakeLockName must not be empty");
        this.f52117j = i;
        this.f52118k = null;
        this.f52119l = null;
        Context applicationContext = context.getApplicationContext();
        this.f52120m = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f52112d = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f52112d = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        this.f52110b = newWakeLock;
        if (C12116t.m19004a(context)) {
            WorkSource m19003a = C12116t.m19003a(context, C12114r.m19007a(str3) ? context.getPackageName() : str3);
            this.f52111c = m19003a;
            if (m19003a != null && C12116t.m19004a(applicationContext)) {
                WorkSource workSource = this.f52111c;
                if (workSource != null) {
                    workSource.add(m19003a);
                } else {
                    this.f52111c = m19003a;
                }
                try {
                    newWakeLock.setWorkSource(this.f52111c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f52107i == null) {
            f52107i = C11938a.m19278a().mo19277a();
        }
    }

    /* renamed from: a */
    public final void m11507a() {
        if (this.f52110b.isHeld()) {
            try {
                this.f52110b.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e("WakeLock", String.valueOf(this.f52112d).concat(" was already released!"), e);
            }
            this.f52110b.isHeld();
        }
    }

    /* renamed from: b */
    public final String m11505b() {
        if (!this.f52113e || TextUtils.isEmpty(null)) {
            return this.f52118k;
        }
        return null;
    }
}

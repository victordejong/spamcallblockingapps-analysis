package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.r;
import com.google.android.gms.common.util.t;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a.class */
public final class a {
    public static ScheduledExecutorService i;
    private static volatile AbstractC0482a o = new b();

    /* renamed from: a  reason: collision with root package name */
    public final Object f29992a;

    /* renamed from: b  reason: collision with root package name */
    public final PowerManager.WakeLock f29993b;

    /* renamed from: c  reason: collision with root package name */
    public WorkSource f29994c;

    /* renamed from: d  reason: collision with root package name */
    public final String f29995d;
    public boolean e;
    public final Map<String, Integer[]> f;
    public int g;
    public AtomicInteger h;
    private final int j;
    private final String k;
    private final String l;
    private final Context m;
    private final Set<Future<?>> n;

    /* renamed from: com.google.android.gms.stats.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/a$a.class */
    public interface AbstractC0482a {
    }

    public a(Context context, int i2, String str) {
        this(context, i2, str, null, context == null ? null : context.getPackageName());
    }

    private a(Context context, int i2, String str, String str2, String str3) {
        this(context, i2, str, null, str3, null);
    }

    private a(Context context, int i2, String str, String str2, String str3, String str4) {
        this.f29992a = this;
        this.e = true;
        this.f = new HashMap();
        this.n = Collections.synchronizedSet(new HashSet());
        this.h = new AtomicInteger(0);
        o.a(context, "WakeLock: context must not be null");
        o.a(str, (Object) "WakeLock: wakeLockName must not be empty");
        this.j = i2;
        this.k = null;
        this.l = null;
        Context applicationContext = context.getApplicationContext();
        this.m = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.f29995d = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.f29995d = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i2, str);
        this.f29993b = newWakeLock;
        if (t.a(context)) {
            WorkSource a2 = t.a(context, r.a(str3) ? context.getPackageName() : str3);
            this.f29994c = a2;
            if (a2 != null && t.a(applicationContext)) {
                WorkSource workSource = this.f29994c;
                if (workSource != null) {
                    workSource.add(a2);
                } else {
                    this.f29994c = a2;
                }
                try {
                    newWakeLock.setWorkSource(this.f29994c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (i == null) {
            i = com.google.android.gms.common.b.a.a().a();
        }
    }

    public final void a() {
        if (this.f29993b.isHeld()) {
            try {
                this.f29993b.release();
            } catch (RuntimeException e) {
                if (e.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.f29995d).concat(" was already released!"), e);
                } else {
                    throw e;
                }
            }
            this.f29993b.isHeld();
        }
    }

    public final String b() {
        if (!this.e || TextUtils.isEmpty(null)) {
            return this.k;
        }
        return null;
    }
}

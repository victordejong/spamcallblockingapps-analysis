package com.google.android.gms.p129c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p131b.C2580a;
import com.google.android.gms.common.util.C2720q;
import com.google.android.gms.common.util.C2722s;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* renamed from: com.google.android.gms.c.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/c/a.class */
public class C2465a {

    /* renamed from: n */
    private static ScheduledExecutorService f7001n;

    /* renamed from: o */
    private static volatile AbstractC2466a f7002o = new C2467b();

    /* renamed from: a */
    private final Object f7003a;

    /* renamed from: b */
    private final PowerManager.WakeLock f7004b;

    /* renamed from: c */
    private WorkSource f7005c;

    /* renamed from: d */
    private final int f7006d;

    /* renamed from: e */
    private final String f7007e;

    /* renamed from: f */
    private final String f7008f;

    /* renamed from: g */
    private final String f7009g;

    /* renamed from: h */
    private final Context f7010h;

    /* renamed from: i */
    private boolean f7011i;

    /* renamed from: j */
    private final Map<String, Integer[]> f7012j;

    /* renamed from: k */
    private final Set<Future<?>> f7013k;

    /* renamed from: l */
    private int f7014l;

    /* renamed from: m */
    private AtomicInteger f7015m;

    /* renamed from: com.google.android.gms.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/c/a$a.class */
    public interface AbstractC2466a {
    }

    public C2465a(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private C2465a(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x011b -> B:22:0x00ea). Please submit an issue!!! */
    @SuppressLint({"UnwrappedWakeLock"})
    private C2465a(Context context, int i, String str, String str2, String str3, String str4) {
        this.f7003a = this;
        this.f7011i = true;
        this.f7012j = new HashMap();
        this.f7013k = Collections.synchronizedSet(new HashSet());
        this.f7015m = new AtomicInteger(0);
        C2662s.m13980a(context, "WakeLock: context must not be null");
        C2662s.m13978a(str, (Object) "WakeLock: wakeLockName must not be empty");
        this.f7006d = i;
        this.f7008f = null;
        this.f7009g = null;
        this.f7010h = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf("*gcore*:");
            String valueOf2 = String.valueOf(str);
            this.f7007e = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            this.f7007e = str;
        }
        this.f7004b = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (C2722s.m13821a(context)) {
            this.f7005c = C2722s.m13820a(context, C2720q.m13826a(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.f7005c;
            if (workSource != null && C2722s.m13821a(this.f7010h)) {
                if (this.f7005c != null) {
                    this.f7005c.add(workSource);
                } else {
                    this.f7005c = workSource;
                }
                try {
                    this.f7004b.setWorkSource(this.f7005c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (f7001n == null) {
            f7001n = C2580a.m14206a().mo14205a();
        }
    }

    /* renamed from: a */
    private final String m14472a(String str) {
        if (!this.f7011i) {
            str = this.f7008f;
        } else if (TextUtils.isEmpty(str)) {
            str = this.f7008f;
        }
        return str;
    }

    /* renamed from: a */
    private final List<String> m14476a() {
        return C2722s.m13819a(this.f7005c);
    }

    /* renamed from: a */
    public final void m14475a(int i) {
        if (this.f7004b.isHeld()) {
            try {
                this.f7004b.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e("WakeLock", String.valueOf(this.f7007e).concat(" was already released!"), e);
            }
            this.f7004b.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        if (r18 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0086, code lost:
        if (r12.f7014l == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008c, code lost:
        com.google.android.gms.common.stats.C2697d.m13886a().m13884a(r12.f7010h, com.google.android.gms.common.stats.C2696c.m13889a(r12.f7004b, r0), 7, r12.f7007e, r0, null, r12.f7006d, m14476a(), r13);
        r12.f7014l++;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m14474a(long r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.p129c.C2465a.m14474a(long):void");
    }

    /* renamed from: a */
    public void m14471a(boolean z) {
        this.f7004b.setReferenceCounted(z);
        this.f7011i = z;
    }
}

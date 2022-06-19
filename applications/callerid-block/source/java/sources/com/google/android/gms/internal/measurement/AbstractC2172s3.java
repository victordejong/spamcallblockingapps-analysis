package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.s3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s3.class */
public abstract class AbstractC2172s3<T> {
    @Nullable

    /* renamed from: h */
    private static volatile AbstractC2167r3 f9816h;

    /* renamed from: j */
    public static final /* synthetic */ int f9818j = 0;

    /* renamed from: a */
    final C2163q3 f9819a;

    /* renamed from: b */
    final String f9820b;

    /* renamed from: c */
    private final T f9821c;

    /* renamed from: d */
    private volatile int f9822d = -1;

    /* renamed from: e */
    private volatile T f9823e;

    /* renamed from: f */
    private final boolean f9824f;

    /* renamed from: g */
    private static final Object f9815g = new Object();

    /* renamed from: i */
    private static final AtomicInteger f9817i = new AtomicInteger();

    static {
        new AtomicReference();
        new C2188u3(l3.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ AbstractC2172s3(C2163q3 c2163q3, String str, Object obj, boolean z, m3 m3Var) {
        if (c2163q3.f9799b != null) {
            this.f9819a = c2163q3;
            this.f9820b = str;
            this.f9821c = obj;
            this.f9824f = true;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    @Deprecated
    /* renamed from: b */
    public static void m4190b(Context context) {
        synchronized (f9815g) {
            AbstractC2167r3 abstractC2167r3 = f9816h;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (abstractC2167r3 == null || abstractC2167r3.m4195a() != context) {
                y2.d();
                t3.b();
                f3.c();
                f9816h = new v2(context, C2210z3.m4117a(new j3(context)));
                f9817i.incrementAndGet();
            }
        }
    }

    /* renamed from: c */
    public static void m4189c() {
        f9817i.incrementAndGet();
    }

    /* renamed from: a */
    abstract T m4191a(Object obj);

    /* renamed from: d */
    public final String m4188d() {
        String str = this.f9819a.f9801d;
        return this.f9820b;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0115 A[Catch: all -> 0x01db, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:12:0x002c, B:14:0x0034, B:16:0x003c, B:18:0x005e, B:20:0x006b, B:22:0x0074, B:24:0x0083, B:25:0x008d, B:27:0x0099, B:30:0x00a3, B:32:0x00ad, B:34:0x00be, B:36:0x00e1, B:39:0x00f9, B:41:0x0108, B:44:0x0115, B:46:0x014e, B:50:0x0163, B:52:0x0169, B:54:0x0178, B:56:0x017e, B:58:0x01af, B:59:0x01b7, B:61:0x01be, B:62:0x01ca, B:63:0x01d5, B:65:0x01d7), top: B:74:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017e A[Catch: all -> 0x01db, TRY_LEAVE, TryCatch #0 {, blocks: (B:12:0x002c, B:14:0x0034, B:16:0x003c, B:18:0x005e, B:20:0x006b, B:22:0x0074, B:24:0x0083, B:25:0x008d, B:27:0x0099, B:30:0x00a3, B:32:0x00ad, B:34:0x00be, B:36:0x00e1, B:39:0x00f9, B:41:0x0108, B:44:0x0115, B:46:0x014e, B:50:0x0163, B:52:0x0169, B:54:0x0178, B:56:0x017e, B:58:0x01af, B:59:0x01b7, B:61:0x01be, B:62:0x01ca, B:63:0x01d5, B:65:0x01d7), top: B:74:0x002c }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m4187e() {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC2172s3.m4187e():java.lang.Object");
    }
}

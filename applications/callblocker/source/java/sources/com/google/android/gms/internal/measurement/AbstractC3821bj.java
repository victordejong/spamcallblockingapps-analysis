package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.measurement.bj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bj.class */
public abstract class AbstractC3821bj<T> {

    /* renamed from: d */
    private static AbstractC3836by<AbstractC3835bx<C3817bf>> f17888d;

    /* renamed from: e */
    private final C3827bp f17890e;

    /* renamed from: f */
    private final String f17891f;

    /* renamed from: g */
    private final T f17892g;

    /* renamed from: i */
    private volatile int f17893i;

    /* renamed from: j */
    private volatile T f17894j;

    /* renamed from: k */
    private final boolean f17895k;

    /* renamed from: a */
    private static final Object f17885a = new Object();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    private static Context f17886b = null;

    /* renamed from: c */
    private static boolean f17887c = false;

    /* renamed from: h */
    private static final AtomicInteger f17889h = new AtomicInteger();

    private AbstractC3821bj(C3827bp c3827bp, String str, T t, boolean z) {
        this.f17893i = -1;
        if (c3827bp.f17899b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f17890e = c3827bp;
        this.f17891f = str;
        this.f17892g = t;
        this.f17895k = z;
    }

    public /* synthetic */ AbstractC3821bj(C3827bp c3827bp, String str, Object obj, boolean z, C3823bl c3823bl) {
        this(c3827bp, str, obj, z);
    }

    /* renamed from: a */
    private final String m5872a(String str) {
        String concat;
        if (str == null || !str.isEmpty()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(this.f17891f);
            concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            concat = this.f17891f;
        }
        return concat;
    }

    /* renamed from: a */
    public static void m5878a() {
        f17889h.incrementAndGet();
    }

    /* renamed from: a */
    public static void m5877a(Context context) {
        synchronized (f17885a) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (f17886b != context) {
                C3806av.m5898c();
                C3830bs.m5856a();
                C3816be.m5888a();
                f17889h.incrementAndGet();
                f17886b = context;
                f17888d = C3840cb.m5846a(C3824bm.f17897a);
            }
        }
    }

    /* renamed from: b */
    public static AbstractC3821bj<Double> m5870b(C3827bp c3827bp, String str, double d, boolean z) {
        return new C3825bn(c3827bp, str, Double.valueOf(d), false);
    }

    /* renamed from: b */
    public static AbstractC3821bj<Long> m5869b(C3827bp c3827bp, String str, long j, boolean z) {
        return new C3823bl(c3827bp, str, Long.valueOf(j), false);
    }

    /* renamed from: b */
    public static AbstractC3821bj<String> m5868b(C3827bp c3827bp, String str, String str2, boolean z) {
        return new C3828bq(c3827bp, str, str2, false);
    }

    /* renamed from: b */
    public static AbstractC3821bj<Boolean> m5867b(C3827bp c3827bp, String str, boolean z, boolean z2) {
        return new C3826bo(c3827bp, str, Boolean.valueOf(z), false);
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC3835bx m5865d() {
        new C3820bi();
        return C3820bi.m5881a(f17886b);
    }

    /* renamed from: a */
    abstract T mo5857a(Object obj);

    /* renamed from: b */
    public final String m5871b() {
        return m5872a(this.f17890e.f17901d);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:11:0x002a, B:17:0x0030, B:19:0x0043, B:28:0x005c, B:30:0x0066, B:32:0x0076, B:35:0x008b, B:37:0x009a, B:40:0x00a4, B:42:0x00b9, B:44:0x00dc, B:46:0x00e2, B:48:0x00ec, B:54:0x00fc, B:55:0x0107, B:57:0x0111, B:59:0x0120, B:61:0x012b, B:64:0x0135, B:65:0x0143, B:67:0x015e, B:71:0x016d, B:73:0x017b), top: B:75:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0143 A[Catch: all -> 0x002b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0011, B:8:0x0019, B:10:0x001f, B:11:0x002a, B:17:0x0030, B:19:0x0043, B:28:0x005c, B:30:0x0066, B:32:0x0076, B:35:0x008b, B:37:0x009a, B:40:0x00a4, B:42:0x00b9, B:44:0x00dc, B:46:0x00e2, B:48:0x00ec, B:54:0x00fc, B:55:0x0107, B:57:0x0111, B:59:0x0120, B:61:0x012b, B:64:0x0135, B:65:0x0143, B:67:0x015e, B:71:0x016d, B:73:0x017b), top: B:75:0x0011 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m5866c() {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.AbstractC3821bj.m5866c():java.lang.Object");
    }
}

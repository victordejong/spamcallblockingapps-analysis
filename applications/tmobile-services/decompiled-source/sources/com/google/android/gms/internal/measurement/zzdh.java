package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdh.class */
public abstract class zzdh<T> {
    @Nullable

    /* renamed from: h */
    private static volatile zzdp f8346h;

    /* renamed from: a */
    private final zzdm f8349a;

    /* renamed from: b */
    private final String f8350b;

    /* renamed from: c */
    private final T f8351c;

    /* renamed from: d */
    private volatile int f8352d;

    /* renamed from: e */
    private volatile T f8353e;

    /* renamed from: f */
    private final boolean f8354f;

    /* renamed from: g */
    private static final Object f8345g = new Object();

    /* renamed from: i */
    private static zzdq f8347i = new zzdq(zzdj.f8355a);

    /* renamed from: j */
    private static final AtomicInteger f8348j = new AtomicInteger();

    static {
        new AtomicReference();
    }

    private zzdh(zzdm zzdmVar, String str, T t, boolean z) {
        this.f8352d = -1;
        if (zzdmVar.f8356a != null) {
            this.f8349a = zzdmVar;
            this.f8350b = str;
            this.f8351c = t;
            this.f8354f = z;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdh(zzdm zzdmVar, String str, Object obj, boolean z, zzdi zzdiVar) {
        this(zzdmVar, str, obj, z);
    }

    /* renamed from: f */
    private final String m12773f(String str) {
        if (str != null && str.isEmpty()) {
            return this.f8350b;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f8350b);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m12772g() {
        f8348j.incrementAndGet();
    }

    @Deprecated
    /* renamed from: h */
    public static void m12771h(final Context context) {
        synchronized (f8345g) {
            zzdp zzdpVar = f8346h;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzdpVar == null || zzdpVar.mo12751a() != context) {
                zzct.m12792d();
                zzdo.m12754b();
                zzcy.m12787b();
                f8346h = new zzcq(context, zzef.m12732a(new zzec(context) { // from class: com.google.android.gms.internal.measurement.zzdg

                    /* renamed from: f */
                    private final Context f8344f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8344f = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzec
                    public final Object zza() {
                        return zzdh.m12766m(this.f8344f);
                    }
                }));
                f8348j.incrementAndGet();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static zzdh<Double> m12770i(zzdm zzdmVar, String str, double d, boolean z) {
        return new zzdk(zzdmVar, str, Double.valueOf(-3.0d), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static zzdh<Long> m12769j(zzdm zzdmVar, String str, long j, boolean z) {
        return new zzdi(zzdmVar, str, Long.valueOf(j), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static zzdh<String> m12768k(zzdm zzdmVar, String str, String str2, boolean z) {
        return new zzdn(zzdmVar, str, str2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static zzdh<Boolean> m12767l(zzdm zzdmVar, String str, boolean z, boolean z2) {
        return new zzdl(zzdmVar, str, Boolean.valueOf(z), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static final /* synthetic */ zzdy m12766m(Context context) {
        new zzdc();
        return zzdc.m12783b(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static final /* synthetic */ boolean m12763p() {
        return true;
    }

    /* renamed from: e */
    abstract T mo12756e(Object obj);

    /* renamed from: n */
    public final String m12765n() {
        return m12773f(this.f8349a.f8358c);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0121 A[Catch: all -> 0x01b4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0027, B:11:0x002f, B:16:0x0042, B:18:0x005f, B:24:0x0076, B:26:0x0080, B:28:0x0091, B:30:0x00ad, B:33:0x00bc, B:35:0x00ce, B:36:0x00d9, B:38:0x00e3, B:40:0x00f4, B:41:0x0101, B:43:0x0110, B:48:0x0121, B:50:0x013f, B:54:0x0155, B:56:0x015c, B:58:0x0169, B:60:0x016f, B:62:0x0193, B:63:0x019c, B:65:0x01a5, B:67:0x01b0), top: B:76:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016f A[Catch: all -> 0x01b4, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0027, B:11:0x002f, B:16:0x0042, B:18:0x005f, B:24:0x0076, B:26:0x0080, B:28:0x0091, B:30:0x00ad, B:33:0x00bc, B:35:0x00ce, B:36:0x00d9, B:38:0x00e3, B:40:0x00f4, B:41:0x0101, B:43:0x0110, B:48:0x0121, B:50:0x013f, B:54:0x0155, B:56:0x015c, B:58:0x0169, B:60:0x016f, B:62:0x0193, B:63:0x019c, B:65:0x01a5, B:67:0x01b0), top: B:76:0x0027 }] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m12764o() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzdh.m12764o():java.lang.Object");
    }
}

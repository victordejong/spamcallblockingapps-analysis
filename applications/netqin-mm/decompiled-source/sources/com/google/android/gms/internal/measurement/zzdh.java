package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzdh;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4483e1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4455a1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4462b1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4469c1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4476d1;
import p131c.p161d.p170b.p224d.p252g.p258f.C4577r0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4603v0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4627z0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdh.class */
public abstract class zzdh<T> {

    /* renamed from: h */
    public static volatile AbstractC4483e1 f29457h;

    /* renamed from: a */
    public final zzdm f29460a;

    /* renamed from: b */
    public final String f29461b;

    /* renamed from: c */
    public final T f29462c;

    /* renamed from: d */
    public volatile int f29463d;

    /* renamed from: e */
    public volatile T f29464e;

    /* renamed from: f */
    public final boolean f29465f;

    /* renamed from: g */
    public static final Object f29456g = new Object();

    /* renamed from: i */
    public static zzdq f29458i = new zzdq(C4455a1.f16680a);

    /* renamed from: j */
    public static final AtomicInteger f29459j = new AtomicInteger();

    static {
        new AtomicReference();
    }

    public zzdh(zzdm zzdmVar, String str, T t, boolean z) {
        this.f29463d = -1;
        if (zzdmVar.f29466a != null) {
            this.f29460a = zzdmVar;
            this.f29461b = str;
            this.f29462c = t;
            this.f29465f = z;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public /* synthetic */ zzdh(zzdm zzdmVar, String str, Object obj, boolean z, C4627z0 z0Var) {
        this(zzdmVar, str, obj, z);
    }

    @Deprecated
    /* renamed from: a */
    public static void m9845a(final Context context) {
        synchronized (f29456g) {
            AbstractC4483e1 e1Var = f29457h;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (e1Var == null || e1Var.mo25255a() != context) {
                zzct.m9855e();
                zzdo.m9826a();
                C4603v0.m25236a();
                f29457h = new C4577r0(context, zzef.m9808a(new zzec(context) { // from class: c.d.b.d.g.f.y0

                    /* renamed from: a */
                    public final Context f16935a;

                    {
                        this.f16935a = context;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzec
                    public final Object zza() {
                        return zzdh.m9837b(this.f16935a);
                    }
                }));
                f29459j.incrementAndGet();
            }
        }
    }

    /* renamed from: b */
    public static zzdh<Double> m9836b(zzdm zzdmVar, String str, double d, boolean z) {
        return new C4462b1(zzdmVar, str, Double.valueOf(-3.0d), true);
    }

    /* renamed from: b */
    public static zzdh<Long> m9835b(zzdm zzdmVar, String str, long j, boolean z) {
        return new C4627z0(zzdmVar, str, Long.valueOf(j), true);
    }

    /* renamed from: b */
    public static zzdh<String> m9834b(zzdm zzdmVar, String str, String str2, boolean z) {
        return new C4476d1(zzdmVar, str, str2, true);
    }

    /* renamed from: b */
    public static zzdh<Boolean> m9833b(zzdm zzdmVar, String str, boolean z, boolean z2) {
        return new C4469c1(zzdmVar, str, Boolean.valueOf(z), true);
    }

    /* renamed from: b */
    public static final /* synthetic */ zzdy m9837b(Context context) {
        new zzdc();
        return zzdc.m9853a(context);
    }

    /* renamed from: c */
    public static void m9832c() {
        f29459j.incrementAndGet();
    }

    /* renamed from: d */
    public static final /* synthetic */ boolean m9831d() {
        return true;
    }

    /* renamed from: a */
    public abstract T mo9840a(Object obj);

    /* renamed from: a */
    public final String m9846a() {
        return m9839a(this.f29460a.f29468c);
    }

    /* renamed from: a */
    public final String m9839a(String str) {
        if (str != null && str.isEmpty()) {
            return this.f29461b;
        }
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(this.f29461b);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0121 A[Catch: all -> 0x01b4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0027, B:11:0x002f, B:16:0x0042, B:18:0x005f, B:24:0x0076, B:26:0x0080, B:28:0x0091, B:30:0x00ad, B:33:0x00bc, B:35:0x00ce, B:36:0x00d9, B:38:0x00e3, B:40:0x00f4, B:41:0x0101, B:43:0x0110, B:48:0x0121, B:50:0x013f, B:54:0x0155, B:56:0x015c, B:58:0x0169, B:60:0x016f, B:62:0x0193, B:63:0x019c, B:65:0x01a5, B:67:0x01b0), top: B:76:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016f A[Catch: all -> 0x01b4, TRY_LEAVE, TryCatch #0 {, blocks: (B:9:0x0027, B:11:0x002f, B:16:0x0042, B:18:0x005f, B:24:0x0076, B:26:0x0080, B:28:0x0091, B:30:0x00ad, B:33:0x00bc, B:35:0x00ce, B:36:0x00d9, B:38:0x00e3, B:40:0x00f4, B:41:0x0101, B:43:0x0110, B:48:0x0121, B:50:0x013f, B:54:0x0155, B:56:0x015c, B:58:0x0169, B:60:0x016f, B:62:0x0193, B:63:0x019c, B:65:0x01a5, B:67:0x01b0), top: B:76:0x0027 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m9838b() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzdh.m9838b():java.lang.Object");
    }
}

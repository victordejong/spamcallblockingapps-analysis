package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zznt;
import com.google.android.gms.internal.measurement.zzpi;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzek.class */
public final class zzek extends zzg {

    /* renamed from: c */
    private String f9085c;

    /* renamed from: d */
    private String f9086d;

    /* renamed from: e */
    private int f9087e;

    /* renamed from: f */
    private String f9088f;

    /* renamed from: g */
    private long f9089g;

    /* renamed from: h */
    private long f9090h;

    /* renamed from: i */
    private List<String> f9091i;

    /* renamed from: j */
    private int f9092j;

    /* renamed from: k */
    private String f9093k;

    /* renamed from: l */
    private String f9094l;

    /* renamed from: m */
    private String f9095m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzek(zzfv zzfvVar, long j) {
        super(zzfvVar);
        this.f9090h = j;
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: I */
    private final String m11583I() {
        if (!zzpi.m11840a() || !m11311l().m10880r(zzat.f8951l0)) {
            try {
                Class<?> loadClass = mo11075f().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (loadClass == null) {
                    return null;
                }
                try {
                    Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, mo11075f());
                    if (invoke == null) {
                        return null;
                    }
                    try {
                        return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                    } catch (Exception e) {
                        mo11081c().m11555I().m11540a("Failed to retrieve Firebase Instance Id");
                        return null;
                    }
                } catch (Exception e2) {
                    mo11081c().m11556H().m11540a("Failed to obtain Firebase Analytics instance");
                    return null;
                }
            } catch (ClassNotFoundException e3) {
                return null;
            }
        } else {
            mo11081c().m11552L().m11540a("Disabled IID for tests.");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: A */
    public final zzn m11591A(String str) {
        mo11316e();
        String B = m11590B();
        String C = m11589C();
        m11321v();
        String str2 = this.f9086d;
        long F = m11586F();
        m11321v();
        String str3 = this.f9088f;
        m11321v();
        mo11316e();
        if (this.f9089g == 0) {
            this.f9089g = this.f9354a.m11381G().m10937w(mo11075f(), mo11075f().getPackageName());
        }
        long j = this.f9089g;
        boolean p = this.f9354a.m11357p();
        boolean z = m11312k().f9203v;
        mo11316e();
        String I = !this.f9354a.m11357p() ? null : m11583I();
        zzfv zzfvVar = this.f9354a;
        Long valueOf = Long.valueOf(zzfvVar.m11349x().f9191j.m11433a());
        long min = valueOf.longValue() == 0 ? zzfvVar.f9275G : Math.min(zzfvVar.f9275G, valueOf.longValue());
        int G = m11585G();
        boolean booleanValue = m11311l().m10898E().booleanValue();
        Boolean C2 = m11311l().m10900C("google_analytics_ssaid_collection_enabled");
        boolean booleanValue2 = Boolean.valueOf(C2 == null || C2.booleanValue()).booleanValue();
        zzfd k = m11312k();
        k.mo11316e();
        boolean z2 = k.m11460C().getBoolean("deferred_analytics_collection", false);
        String D = m11588D();
        Boolean C3 = m11311l().m10900C("google_analytics_default_allow_ad_personalization_signals");
        return new zzn(B, C, str2, F, str3, 32053L, j, str, p, !z, I, 0L, min, G, booleanValue, booleanValue2, z2, D, C3 == null ? null : Boolean.valueOf(true ^ C3.booleanValue()), this.f9090h, this.f9091i, (!zznt.m11872a() || !m11311l().m10880r(zzat.f8947j0)) ? null : m11587E(), (!zzmj.m11898a() || !m11311l().m10880r(zzat.f8902H0)) ? "" : m11312k().m11453J().m11733e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public final String m11590B() {
        m11321v();
        return this.f9085c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public final String m11589C() {
        m11321v();
        return this.f9093k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public final String m11588D() {
        m11321v();
        return this.f9094l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public final String m11587E() {
        m11321v();
        return this.f9095m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public final int m11586F() {
        m11321v();
        return this.f9087e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public final int m11585G() {
        m11321v();
        return this.f9092j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: H */
    public final List<String> m11584H() {
        return this.f9091i;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:2|(1:4)(8:137|5|8|(1:10)(2:11|(1:13))|139|14|15|(7:17|(1:19)(1:20)|135|21|22|23|24))|30|(1:35)(1:34)|36|(1:41)(1:40)|42|(2:44|(1:46)(1:47))|48|(4:50|51|62|(19:64|66|(1:68)|133|69|(1:74)(1:73)|75|76|(2:78|79)(1:80)|81|(2:96|(1:98))(4:85|(2:87|88)(1:89)|90|(2:94|95))|99|(4:101|(1:103)(1:104)|105|106)|109|(3:111|(1:113)(3:115|(2:116|(1:118)(1:142))|141)|114)|120|(1:122)|123|(2:125|(2:127|128)(2:129|130))(2:131|132)))|65|66|(0)|133|69|(1:71)|74|75|76|(0)(0)|81|(1:83)|96|(0)|99|(0)|109|(0)|120|(0)|123|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03cf, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x03d1, code lost:
        mo11081c().m11560D().m11538c("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzer.m11546v(r0), r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x039a A[Catch: IllegalStateException -> 0x03cf, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c2), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02d7 A[Catch: IllegalStateException -> 0x03cf, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c2), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0319 A[Catch: IllegalStateException -> 0x03cf, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c2), top: B:133:0x02d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x037b A[Catch: IllegalStateException -> 0x03cf, TryCatch #0 {IllegalStateException -> 0x03cf, blocks: (B:69:0x02d1, B:71:0x02d7, B:73:0x02e4, B:74:0x02f3, B:76:0x02fa, B:81:0x030a, B:83:0x0319, B:85:0x0326, B:90:0x034f, B:92:0x035c, B:95:0x0365, B:96:0x0373, B:98:0x037b, B:101:0x039a, B:103:0x03b2, B:104:0x03bb, B:106:0x03c2), top: B:133:0x02d1 }] */
    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo11318z() {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzek.mo11318z():void");
    }
}

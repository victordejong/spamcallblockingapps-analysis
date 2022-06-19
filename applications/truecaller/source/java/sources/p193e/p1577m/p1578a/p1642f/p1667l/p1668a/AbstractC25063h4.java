package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.math.BigDecimal;
/* renamed from: e.m.a.f.l.a.h4 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h4.class */
public abstract class AbstractC25063h4 {

    /* renamed from: a */
    public final String f70123a;

    /* renamed from: b */
    public final int f70124b;

    /* renamed from: c */
    public Boolean f70125c;

    /* renamed from: d */
    public Boolean f70126d;

    /* renamed from: e */
    public Long f70127e;

    /* renamed from: f */
    public Long f70128f;

    public AbstractC25063h4(String str, int i) {
        this.f70123a = str;
        this.f70124b = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ca, code lost:
        if (r18 != null) goto L37;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m4215d(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.zzeq r8, double r9) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1642f.p1667l.p1668a.AbstractC25063h4.m4215d(java.math.BigDecimal, com.google.android.gms.internal.measurement.zzeq, double):java.lang.Boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fb, code lost:
        if (r5.size() != 0) goto L49;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m4214e(java.lang.String r4, com.google.android.gms.internal.measurement.zzex r5, com.google.android.gms.measurement.internal.zzeh r6) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1642f.p1667l.p1668a.AbstractC25063h4.m4214e(java.lang.String, com.google.android.gms.internal.measurement.zzex, com.google.android.gms.measurement.internal.zzeh):java.lang.Boolean");
    }

    /* renamed from: f */
    public static Boolean m4213f(long j, zzeq zzeqVar) {
        try {
            return m4215d(new BigDecimal(j), zzeqVar, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: g */
    public static Boolean m4212g(String str, zzeq zzeqVar) {
        if (!zzkr.H(str)) {
            return null;
        }
        try {
            return m4215d(new BigDecimal(str), zzeqVar, PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: h */
    public static Boolean m4211h(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: a */
    public abstract int m4218a();

    /* renamed from: b */
    public abstract boolean m4217b();

    /* renamed from: c */
    public abstract boolean m4216c();
}

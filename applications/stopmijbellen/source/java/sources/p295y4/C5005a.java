package p295y4;

import android.os.Bundle;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.internal.zzgt;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: y4.a */
/* loaded from: classes-dex2jar.jar:y4/a.class */
public final class C5005a {

    /* renamed from: a */
    public static final Set<String> f15250a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    public static final List<String> f15251b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    public static final List<String> f15252c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    public static final List<String> f15253d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    public static final List<String> f15254e = Arrays.asList((String[]) ArrayUtils.concat(new String[]{zzgt.zza, zzgt.zzb}));

    /* renamed from: f */
    public static final List<String> f15255f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static boolean m145a(String str) {
        return !f15252c.contains(str);
    }

    /* renamed from: b */
    public static boolean m144b(String str, Bundle bundle) {
        if (f15251b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f15253d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m143c(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lb
            r0 = 1
            return r0
        Lb:
            r0 = r4
            boolean r0 = m145a(r0)
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r6
            if (r0 != 0) goto L1a
            r0 = 0
            return r0
        L1a:
            java.util.List<java.lang.String> r0 = p295y4.C5005a.f15253d
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L23:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L3e
            r0 = r6
            r1 = r5
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L23
            r0 = 0
            return r0
        L3e:
            r0 = r4
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = 101200(0x18b50, float:1.41811E-40)
            if (r0 == r1) goto L74
            r0 = r7
            r1 = 101230(0x18b6e, float:1.41853E-40)
            if (r0 == r1) goto L66
            r0 = r7
            r1 = 3142703(0x2ff42f, float:4.403865E-39)
            if (r0 == r1) goto L58
            goto L82
        L58:
            r0 = r4
            java.lang.String r1 = "fiam"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 2
            r7 = r0
            goto L84
        L66:
            r0 = r4
            java.lang.String r1 = "fdl"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 1
            r7 = r0
            goto L84
        L74:
            r0 = r4
            java.lang.String r1 = "fcm"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L82
            r0 = 0
            r7 = r0
            goto L84
        L82:
            r0 = -1
            r7 = r0
        L84:
            r0 = r7
            if (r0 == 0) goto La8
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L9e
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L94
            r0 = 0
            return r0
        L94:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fiam_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        L9e:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fdl_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        La8:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fcm_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p295y4.C5005a.m143c(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }
}

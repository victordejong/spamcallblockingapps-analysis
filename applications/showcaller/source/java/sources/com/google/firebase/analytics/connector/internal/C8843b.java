package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.C6224b;
import com.google.android.gms.measurement.internal.C7837q5;
import com.google.android.gms.measurement.internal.C7859s5;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.analytics.connector.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/b.class */
public final class C8843b {

    /* renamed from: a */
    private static final Set<String> f38762a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    private static final List<String> f38763b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    private static final List<String> f38764c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    private static final List<String> f38765d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    private static final List<String> f38766e = Arrays.asList((String[]) C6224b.m16831a(new String[]{C7859s5.f35669a, C7859s5.f35670b}));

    /* renamed from: f */
    private static final List<String> f38767f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static boolean m2550a(String str) {
        return !f38764c.contains(str);
    }

    /* renamed from: b */
    public static boolean m2549b(String str, Bundle bundle) {
        if (f38763b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f38765d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m2548c(String str) {
        return !f38762a.contains(str);
    }

    /* renamed from: d */
    public static boolean m2547d(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        } else if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        } else if (f38766e.contains(str2)) {
            return false;
        } else {
            for (String str3 : f38767f) {
                if (str2.matches(str3)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2546e(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lb
            r0 = 1
            return r0
        Lb:
            r0 = r4
            boolean r0 = m2550a(r0)
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r6
            if (r0 != 0) goto L1a
            r0 = 0
            return r0
        L1a:
            java.util.List<java.lang.String> r0 = com.google.firebase.analytics.connector.internal.C8843b.f38765d
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.C8843b.m2546e(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    /* renamed from: f */
    public static String m2545f(String str) {
        String m6093a = C7837q5.m6093a(str);
        return m6093a != null ? m6093a : str;
    }

    /* renamed from: g */
    public static void m2544g(String str, String str2, Bundle bundle) {
        if (!"clx".equals(str) || !"_ae".equals(str2)) {
            return;
        }
        bundle.putLong("_r", 1L);
    }
}

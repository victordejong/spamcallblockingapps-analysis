package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12098b;
import com.google.android.gms.measurement.internal.C14003fp;
import com.google.android.gms.measurement.internal.C14004fq;
import com.google.android.gms.measurement.internal.C14006fs;
import com.google.android.gms.measurement.internal.C14043hb;
import com.google.firebase.analytics.connector.AbstractC15587a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.analytics.connector.internal.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/b.class */
public final class C15596b {

    /* renamed from: a */
    private static final Set<String> f55957a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    private static final List<String> f55958b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    private static final List<String> f55959c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    private static final List<String> f55960d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    private static final List<String> f55961e = Arrays.asList((String[]) C12098b.m19047a(new String[]{C14006fs.f51647a, C14006fs.f51648b}));

    /* renamed from: f */
    private static final List<String> f55962f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static AbstractC15587a.C15590c m8594a(Bundle bundle) {
        C12045o.m19162a(bundle);
        AbstractC15587a.C15590c c15590c = new AbstractC15587a.C15590c();
        c15590c.f55934a = (String) C12045o.m19162a((String) C14003fp.m11877a(bundle, "origin", String.class, null));
        c15590c.f55935b = (String) C12045o.m19162a((String) C14003fp.m11877a(bundle, "name", String.class, null));
        c15590c.f55936c = C14003fp.m11877a(bundle, "value", Object.class, null);
        c15590c.f55937d = (String) C14003fp.m11877a(bundle, "trigger_event_name", String.class, null);
        c15590c.f55938e = ((Long) C14003fp.m11877a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
        c15590c.f55939f = (String) C14003fp.m11877a(bundle, "timed_out_event_name", String.class, null);
        c15590c.f55940g = (Bundle) C14003fp.m11877a(bundle, "timed_out_event_params", Bundle.class, null);
        c15590c.f55941h = (String) C14003fp.m11877a(bundle, "triggered_event_name", String.class, null);
        c15590c.f55942i = (Bundle) C14003fp.m11877a(bundle, "triggered_event_params", Bundle.class, null);
        c15590c.f55943j = ((Long) C14003fp.m11877a(bundle, "time_to_live", Long.class, 0L)).longValue();
        c15590c.f55944k = (String) C14003fp.m11877a(bundle, "expired_event_name", String.class, null);
        c15590c.f55945l = (Bundle) C14003fp.m11877a(bundle, "expired_event_params", Bundle.class, null);
        c15590c.f55947n = ((Boolean) C14003fp.m11877a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
        c15590c.f55946m = ((Long) C14003fp.m11877a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
        c15590c.f55948o = ((Long) C14003fp.m11877a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        return c15590c;
    }

    /* renamed from: a */
    public static boolean m8593a(AbstractC15587a.C15590c c15590c) {
        String str;
        if (c15590c == null || (str = c15590c.f55934a) == null || str.isEmpty()) {
            return false;
        }
        if ((c15590c.f55936c != null && C14043hb.m11832a(c15590c.f55936c) == null) || !m8592a(str) || !m8590a(str, c15590c.f55935b)) {
            return false;
        }
        if (c15590c.f55944k != null && (!m8591a(c15590c.f55944k, c15590c.f55945l) || !m8589a(str, c15590c.f55944k, c15590c.f55945l))) {
            return false;
        }
        if (c15590c.f55941h != null && (!m8591a(c15590c.f55941h, c15590c.f55942i) || !m8589a(str, c15590c.f55941h, c15590c.f55942i))) {
            return false;
        }
        if (c15590c.f55939f == null) {
            return true;
        }
        return m8591a(c15590c.f55939f, c15590c.f55940g) && m8589a(str, c15590c.f55939f, c15590c.f55940g);
    }

    /* renamed from: a */
    public static boolean m8592a(String str) {
        return !f55959c.contains(str);
    }

    /* renamed from: a */
    public static boolean m8591a(String str, Bundle bundle) {
        if (f55958b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f55960d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m8590a(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        } else if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        } else if (f55961e.contains(str2)) {
            return false;
        } else {
            for (String str3 : f55962f) {
                if (str2.matches(str3)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8589a(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Lc
            r0 = 1
            return r0
        Lc:
            r0 = r4
            boolean r0 = m8592a(r0)
            if (r0 != 0) goto L15
            r0 = 0
            return r0
        L15:
            r0 = r6
            if (r0 != 0) goto L1b
            r0 = 0
            return r0
        L1b:
            java.util.List<java.lang.String> r0 = com.google.firebase.analytics.connector.internal.C15596b.f55960d
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L24:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L3f
            r0 = r6
            r1 = r5
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L24
            r0 = 0
            return r0
        L3f:
            r0 = r4
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = 101200(0x18b50, float:1.41811E-40)
            if (r0 == r1) goto L7a
            r0 = r7
            r1 = 101230(0x18b6e, float:1.41853E-40)
            if (r0 == r1) goto L6b
            r0 = r7
            r1 = 3142703(0x2ff42f, float:4.403865E-39)
            if (r0 == r1) goto L5c
            goto L89
        L5c:
            r0 = r4
            java.lang.String r1 = "fiam"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L89
            r0 = 2
            r7 = r0
            goto L8b
        L6b:
            r0 = r4
            java.lang.String r1 = "fdl"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L89
            r0 = 1
            r7 = r0
            goto L8b
        L7a:
            r0 = r4
            java.lang.String r1 = "fcm"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L89
            r0 = 0
            r7 = r0
            goto L8b
        L89:
            r0 = -1
            r7 = r0
        L8b:
            r0 = r7
            if (r0 == 0) goto Lb3
            r0 = r7
            r1 = 1
            if (r0 == r1) goto La7
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L9b
            r0 = 0
            return r0
        L9b:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fiam_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        La7:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fdl_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        Lb3:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fcm_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.C15596b.m8589a(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    /* renamed from: b */
    public static Bundle m8588b(AbstractC15587a.C15590c c15590c) {
        Bundle bundle = new Bundle();
        if (c15590c.f55934a != null) {
            bundle.putString("origin", c15590c.f55934a);
        }
        if (c15590c.f55935b != null) {
            bundle.putString("name", c15590c.f55935b);
        }
        if (c15590c.f55936c != null) {
            C14003fp.m11878a(bundle, c15590c.f55936c);
        }
        if (c15590c.f55937d != null) {
            bundle.putString("trigger_event_name", c15590c.f55937d);
        }
        bundle.putLong("trigger_timeout", c15590c.f55938e);
        if (c15590c.f55939f != null) {
            bundle.putString("timed_out_event_name", c15590c.f55939f);
        }
        if (c15590c.f55940g != null) {
            bundle.putBundle("timed_out_event_params", c15590c.f55940g);
        }
        if (c15590c.f55941h != null) {
            bundle.putString("triggered_event_name", c15590c.f55941h);
        }
        if (c15590c.f55942i != null) {
            bundle.putBundle("triggered_event_params", c15590c.f55942i);
        }
        bundle.putLong("time_to_live", c15590c.f55943j);
        if (c15590c.f55944k != null) {
            bundle.putString("expired_event_name", c15590c.f55944k);
        }
        if (c15590c.f55945l != null) {
            bundle.putBundle("expired_event_params", c15590c.f55945l);
        }
        bundle.putLong("creation_timestamp", c15590c.f55946m);
        bundle.putBoolean("active", c15590c.f55947n);
        bundle.putLong("triggered_timestamp", c15590c.f55948o);
        return bundle;
    }

    /* renamed from: b */
    public static void m8586b(String str, String str2, Bundle bundle) {
        if (!"clx".equals(str) || !"_ae".equals(str2)) {
            return;
        }
        bundle.putLong("_r", 1L);
    }

    /* renamed from: b */
    public static boolean m8587b(String str) {
        return !f55957a.contains(str);
    }

    /* renamed from: c */
    public static String m8585c(String str) {
        String m11876a = C14004fq.m11876a(str);
        return m11876a != null ? m11876a : str;
    }
}

package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.measurement.internal.fp;
import com.google.android.gms.measurement.internal.fq;
import com.google.android.gms.measurement.internal.fs;
import com.google.android.gms.measurement.internal.hb;
import com.google.firebase.analytics.connector.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f32197a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f32198b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f32199c = Arrays.asList("auto", "app", "am");

    /* renamed from: d  reason: collision with root package name */
    private static final List<String> f32200d = Arrays.asList("_r", "_dbg");
    private static final List<String> e = Arrays.asList((String[]) com.google.android.gms.common.util.b.a(new String[]{fs.f29656a, fs.f29657b}));
    private static final List<String> f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static a.c a(Bundle bundle) {
        o.a(bundle);
        a.c cVar = new a.c();
        cVar.f32185a = (String) o.a((String) fp.a(bundle, "origin", String.class, null));
        cVar.f32186b = (String) o.a((String) fp.a(bundle, "name", String.class, null));
        cVar.f32187c = fp.a(bundle, "value", Object.class, null);
        cVar.f32188d = (String) fp.a(bundle, "trigger_event_name", String.class, null);
        cVar.e = ((Long) fp.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
        cVar.f = (String) fp.a(bundle, "timed_out_event_name", String.class, null);
        cVar.g = (Bundle) fp.a(bundle, "timed_out_event_params", Bundle.class, null);
        cVar.h = (String) fp.a(bundle, "triggered_event_name", String.class, null);
        cVar.i = (Bundle) fp.a(bundle, "triggered_event_params", Bundle.class, null);
        cVar.j = ((Long) fp.a(bundle, "time_to_live", Long.class, 0L)).longValue();
        cVar.k = (String) fp.a(bundle, "expired_event_name", String.class, null);
        cVar.l = (Bundle) fp.a(bundle, "expired_event_params", Bundle.class, null);
        cVar.n = ((Boolean) fp.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
        cVar.m = ((Long) fp.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
        cVar.o = ((Long) fp.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        return cVar;
    }

    public static boolean a(a.c cVar) {
        String str;
        if (cVar == null || (str = cVar.f32185a) == null || str.isEmpty()) {
            return false;
        }
        if ((cVar.f32187c != null && hb.a(cVar.f32187c) == null) || !a(str) || !a(str, cVar.f32186b)) {
            return false;
        }
        if (cVar.k != null && (!a(cVar.k, cVar.l) || !a(str, cVar.k, cVar.l))) {
            return false;
        }
        if (cVar.h != null && (!a(cVar.h, cVar.i) || !a(str, cVar.h, cVar.i))) {
            return false;
        }
        if (cVar.f != null) {
            return a(cVar.f, cVar.g) && a(str, cVar.f, cVar.g);
        }
        return true;
    }

    public static boolean a(String str) {
        return !f32199c.contains(str);
    }

    public static boolean a(String str, Bundle bundle) {
        if (f32198b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f32200d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (e.contains(str2)) {
            return false;
        }
        for (String str3 : f) {
            if (str2.matches(str3)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r4, java.lang.String r5, android.os.Bundle r6) {
        /*
            java.lang.String r0 = "_cmp"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r4
            boolean r0 = a(r0)
            if (r0 != 0) goto L_0x0015
            r0 = 0
            return r0
        L_0x0015:
            r0 = r6
            if (r0 != 0) goto L_0x001b
            r0 = 0
            return r0
        L_0x001b:
            java.util.List<java.lang.String> r0 = com.google.firebase.analytics.connector.internal.b.f32200d
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x0024:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x003f
            r0 = r6
            r1 = r5
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0024
            r0 = 0
            return r0
        L_0x003f:
            r0 = r4
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = 101200(0x18b50, float:1.41811E-40)
            if (r0 == r1) goto L_0x007a
            r0 = r7
            r1 = 101230(0x18b6e, float:1.41853E-40)
            if (r0 == r1) goto L_0x006b
            r0 = r7
            r1 = 3142703(0x2ff42f, float:4.403865E-39)
            if (r0 == r1) goto L_0x005c
            goto L_0x0089
        L_0x005c:
            r0 = r4
            java.lang.String r1 = "fiam"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0089
            r0 = 2
            r7 = r0
            goto L_0x008b
        L_0x006b:
            r0 = r4
            java.lang.String r1 = "fdl"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0089
            r0 = 1
            r7 = r0
            goto L_0x008b
        L_0x007a:
            r0 = r4
            java.lang.String r1 = "fcm"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0089
            r0 = 0
            r7 = r0
            goto L_0x008b
        L_0x0089:
            r0 = -1
            r7 = r0
        L_0x008b:
            r0 = r7
            if (r0 == 0) goto L_0x00b3
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x00a7
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x009b
            r0 = 0
            return r0
        L_0x009b:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fiam_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        L_0x00a7:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fdl_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        L_0x00b3:
            r0 = r6
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "fcm_integration"
            r0.putString(r1, r2)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.analytics.connector.internal.b.a(java.lang.String, java.lang.String, android.os.Bundle):boolean");
    }

    public static Bundle b(a.c cVar) {
        Bundle bundle = new Bundle();
        if (cVar.f32185a != null) {
            bundle.putString("origin", cVar.f32185a);
        }
        if (cVar.f32186b != null) {
            bundle.putString("name", cVar.f32186b);
        }
        if (cVar.f32187c != null) {
            fp.a(bundle, cVar.f32187c);
        }
        if (cVar.f32188d != null) {
            bundle.putString("trigger_event_name", cVar.f32188d);
        }
        bundle.putLong("trigger_timeout", cVar.e);
        if (cVar.f != null) {
            bundle.putString("timed_out_event_name", cVar.f);
        }
        if (cVar.g != null) {
            bundle.putBundle("timed_out_event_params", cVar.g);
        }
        if (cVar.h != null) {
            bundle.putString("triggered_event_name", cVar.h);
        }
        if (cVar.i != null) {
            bundle.putBundle("triggered_event_params", cVar.i);
        }
        bundle.putLong("time_to_live", cVar.j);
        if (cVar.k != null) {
            bundle.putString("expired_event_name", cVar.k);
        }
        if (cVar.l != null) {
            bundle.putBundle("expired_event_params", cVar.l);
        }
        bundle.putLong("creation_timestamp", cVar.m);
        bundle.putBoolean("active", cVar.n);
        bundle.putLong("triggered_timestamp", cVar.o);
        return bundle;
    }

    public static void b(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean b(String str) {
        return !f32197a.contains(str);
    }

    public static String c(String str) {
        String a2 = fq.a(str);
        return a2 != null ? a2 : str;
    }
}

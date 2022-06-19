package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.util.C2705b;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.google.firebase.analytics.connector.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/b.class */
public final class C4864b {

    /* renamed from: a */
    private static final Set<String> f20931a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    private static final List<String> f20932b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    private static final List<String> f20933c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    private static final List<String> f20934d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    private static final List<String> f20935e = Arrays.asList((String[]) C2705b.m13878a(new String[]{AppMeasurement.C4153a.f18978a, AppMeasurement.C4153a.f18979b}));

    /* renamed from: f */
    private static final List<String> f20936f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static boolean m2164a(String str) {
        return !f20933c.contains(str);
    }

    /* renamed from: a */
    public static boolean m2163a(String str, Bundle bundle) {
        boolean z;
        if (f20932b.contains(str)) {
            z = false;
        } else {
            if (bundle != null) {
                for (String str2 : f20934d) {
                    if (bundle.containsKey(str2)) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m2162a(String str, String str2, Bundle bundle) {
        boolean z;
        if ("_cmp".equals(str2)) {
            if (m2164a(str)) {
                if (bundle != null) {
                    Iterator<String> it = f20934d.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            boolean z2 = true;
                            switch (str.hashCode()) {
                                case 101200:
                                    if (str.equals("fcm")) {
                                        z2 = false;
                                        break;
                                    }
                                    break;
                                case 101230:
                                    if (str.equals("fdl")) {
                                        z2 = true;
                                        break;
                                    }
                                    break;
                                case 3142703:
                                    if (str.equals("fiam")) {
                                        z2 = true;
                                        break;
                                    }
                                    break;
                            }
                            switch (z2) {
                                case false:
                                    bundle.putString("_cis", "fcm_integration");
                                    z = true;
                                    break;
                                case true:
                                    bundle.putString("_cis", "fdl_integration");
                                    z = true;
                                    break;
                                case true:
                                    bundle.putString("_cis", "fiam_integration");
                                    z = true;
                                    break;
                                default:
                                    z = false;
                                    break;
                            }
                        } else if (bundle.containsKey(it.next())) {
                            z = false;
                            break;
                        }
                    }
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static void m2161b(String str, String str2, Bundle bundle) {
        if (!"clx".equals(str) || !"_ae".equals(str2)) {
            return;
        }
        bundle.putLong("_r", 1L);
    }
}

package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.rj2;
import com.google.android.gms.internal.ads.xj2;
import com.google.android.gms.internal.ads.zzbdg;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/n.class */
public final class C5827n {
    /* renamed from: a */
    public static boolean m17783a(rj2 rj2Var) {
        if (!m17779e(rj2Var)) {
            return false;
        }
        zzbdg zzbdgVar = rj2Var.f28998a.f27577a.f32077d;
        return (zzbdgVar.f33677v == null && zzbdgVar.f33658A == null) ? false : true;
    }

    /* renamed from: b */
    public static String m17782b(rj2 rj2Var) {
        return !m17779e(rj2Var) ? "" : rj2Var.f28998a.f27577a.f32077d.f33674s;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public static String m17781c(rj2 rj2Var) {
        boolean z;
        if (!m17779e(rj2Var)) {
            return "unspecified";
        }
        String m17780d = m17780d(rj2Var.f28998a.f27577a);
        if (!TextUtils.isEmpty(m17780d)) {
            switch (m17780d.hashCode()) {
                case 1743582862:
                    if (m17780d.equals("requester_type_0")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 1743582863:
                    if (m17780d.equals("requester_type_1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582864:
                    if (m17780d.equals("requester_type_2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582865:
                    if (m17780d.equals("requester_type_3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582866:
                    if (m17780d.equals("requester_type_4")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582867:
                    if (m17780d.equals("requester_type_5")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582868:
                    if (m17780d.equals("requester_type_6")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    return "0";
                case true:
                    return "1";
                case true:
                    return "2";
                case true:
                    return "3";
                case true:
                    return "4";
                case true:
                    return "5";
                case true:
                    return "6";
            }
        }
        m17780d = "unspecified";
        return m17780d;
    }

    /* renamed from: d */
    public static String m17780d(xj2 xj2Var) {
        Bundle bundle = xj2Var.f32077d.f33661f;
        return bundle == null ? "unspecified" : bundle.getString("query_info_type");
    }

    /* renamed from: e */
    private static boolean m17779e(rj2 rj2Var) {
        return rj2Var != null;
    }
}

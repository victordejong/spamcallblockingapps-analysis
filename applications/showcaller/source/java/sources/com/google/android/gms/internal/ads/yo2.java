package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yo2.class */
public final class yo2 {

    /* renamed from: a */
    private final e02 f32574a;

    /* renamed from: b */
    private final String f32575b;

    /* renamed from: c */
    private final String f32576c;

    /* renamed from: d */
    private final String f32577d;

    /* renamed from: e */
    private final Context f32578e;

    /* renamed from: f */
    private final sj2 f32579f;

    /* renamed from: g */
    private final AbstractC6227e f32580g;

    /* renamed from: h */
    private final C7016u f32581h;

    public yo2(e02 e02Var, zzcgz zzcgzVar, String str, String str2, Context context, sj2 sj2Var, AbstractC6227e abstractC6227e, C7016u c7016u) {
        this.f32574a = e02Var;
        this.f32575b = zzcgzVar.f33854d;
        this.f32576c = str;
        this.f32577d = str2;
        this.f32578e = context;
        this.f32579f = sj2Var;
        this.f32580g = abstractC6227e;
        this.f32581h = c7016u;
    }

    /* renamed from: d */
    public static final List<String> m8748d(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            StringBuilder sb = new StringBuilder(23);
            sb.append("2.");
            sb.append(i2);
            arrayList.add(m8747e(str, "@gw_mpe@", sb.toString()));
        }
        return arrayList;
    }

    /* renamed from: e */
    private static String m8747e(String str, String str2, String str3) {
        String str4 = str3;
        if (true == TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: f */
    private static String m8746f(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (di0.m15804j()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public final List<String> m8751a(rj2 rj2Var, ej2 ej2Var, List<String> list) {
        return m8750b(rj2Var, ej2Var, false, "", "", list);
    }

    /* renamed from: b */
    public final List<String> m8750b(rj2 rj2Var, ej2 ej2Var, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = true != z ? "0" : "1";
        for (String str5 : list) {
            String m8747e = m8747e(m8747e(m8747e(str5, "@gw_adlocid@", rj2Var.f28998a.f27577a.f32079f), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.f32575b);
            String str6 = m8747e;
            if (ej2Var != null) {
                str6 = ng0.m12915a(m8747e(m8747e(m8747e(m8747e, "@gw_qdata@", ej2Var.f22253y), "@gw_adnetid@", ej2Var.f22252x), "@gw_allocid@", ej2Var.f22251w), this.f32578e, ej2Var.f22211S);
            }
            String m8747e2 = m8747e(m8747e(m8747e(str6, "@gw_adnetstatus@", this.f32574a.m15613g()), "@gw_seqnum@", this.f32576c), "@gw_sessid@", this.f32577d);
            boolean z2 = false;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25646a2)).booleanValue()) {
                z2 = false;
                if (!TextUtils.isEmpty(str)) {
                    z2 = true;
                }
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            boolean z4 = z3;
            if (!z2) {
                str3 = m8747e2;
                if (z3) {
                    z4 = true;
                } else {
                    arrayList.add(str3);
                }
            }
            str3 = m8747e2;
            if (this.f32581h.m10451a(Uri.parse(m8747e2))) {
                Uri.Builder buildUpon = Uri.parse(m8747e2).buildUpon();
                Uri.Builder builder = buildUpon;
                if (z2) {
                    builder = buildUpon.appendQueryParameter("ms", str);
                }
                Uri.Builder builder2 = builder;
                if (z4) {
                    builder2 = builder.appendQueryParameter("attok", str2);
                }
                str3 = builder2.build().toString();
            }
            arrayList.add(str3);
        }
        return arrayList;
    }

    /* renamed from: c */
    public final List<String> m8749c(ej2 ej2Var, List<String> list, nd0 nd0Var) {
        ArrayList arrayList = new ArrayList();
        long mo16807a = this.f32580g.mo16807a();
        try {
            String mo12951b = nd0Var.mo12951b();
            String num = Integer.toString(nd0Var.mo12950c());
            sj2 sj2Var = this.f32579f;
            String str = "";
            String m8746f = sj2Var == null ? "" : m8746f(sj2Var.f29545a);
            sj2 sj2Var2 = this.f32579f;
            if (sj2Var2 != null) {
                str = m8746f(sj2Var2.f29546b);
            }
            for (String str2 : list) {
                arrayList.add(ng0.m12915a(m8747e(m8747e(m8747e(m8747e(m8747e(m8747e(str2, "@gw_rwd_userid@", Uri.encode(m8746f)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(mo16807a)), "@gw_rwd_itm@", Uri.encode(mo12951b)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f32575b), this.f32578e, ej2Var.f22211S));
            }
            return arrayList;
        } catch (RemoteException e) {
            ei0.m15466d("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}

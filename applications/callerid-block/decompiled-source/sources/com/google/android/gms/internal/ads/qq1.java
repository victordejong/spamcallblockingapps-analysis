package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC1610f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qq1.class */
public final class qq1 {

    /* renamed from: a */
    private final l31 f8246a;

    /* renamed from: b */
    private final String f8247b;

    /* renamed from: c */
    private final String f8248c;

    /* renamed from: d */
    private final String f8249d;

    /* renamed from: e */
    private final Context f8250e;

    /* renamed from: f */
    private final nl1 f8251f;

    /* renamed from: g */
    private final AbstractC1610f f8252g;

    /* renamed from: h */
    private final zh2 f8253h;

    public qq1(l31 l31Var, zzbbq zzbbqVar, String str, String str2, Context context, nl1 nl1Var, AbstractC1610f fVar, zh2 zh2Var) {
        this.f8246a = l31Var;
        this.f8247b = zzbbqVar.b;
        this.f8248c = str;
        this.f8249d = str2;
        this.f8250e = context;
        this.f8251f = nl1Var;
        this.f8252g = fVar;
        this.f8253h = zh2Var;
    }

    /* renamed from: d */
    public static final List<String> m6069d(int i, int i2, List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            StringBuilder sb = new StringBuilder(23);
            sb.append("2.");
            sb.append(i2);
            arrayList.add(m6068e(str, "@gw_mpe@", sb.toString()));
        }
        return arrayList;
    }

    /* renamed from: e */
    private static String m6068e(String str, String str2, String str3) {
        String str4 = str3;
        if (true == TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: f */
    private static String m6067f(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (C1879oo.m6290j()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public final List<String> m6072a(ml1 ml1Var, al1 al1Var, List<String> list) {
        return m6071b(ml1Var, al1Var, false, "", "", list);
    }

    /* renamed from: b */
    public final List<String> m6071b(ml1 ml1Var, al1 al1Var, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = true != z ? "0" : "1";
        for (String str5 : list) {
            String e = m6068e(m6068e(m6068e(str5, "@gw_adlocid@", ml1Var.f7582a.f6809a.f8501f), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.f8247b);
            String str6 = e;
            if (al1Var != null) {
                str6 = C2054ym.m4737a(m6068e(m6068e(m6068e(e, "@gw_qdata@", al1Var.f6037x), "@gw_adnetid@", al1Var.f6036w), "@gw_allocid@", al1Var.f6035v), this.f8250e, al1Var.f5997Q);
            }
            String e2 = m6068e(m6068e(m6068e(str6, "@gw_adnetstatus@", this.f8246a.m6726b()), "@gw_seqnum@", this.f8248c), "@gw_sessid@", this.f8249d);
            boolean z2 = false;
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7270J1)).booleanValue()) {
                z2 = false;
                if (!TextUtils.isEmpty(str)) {
                    z2 = true;
                }
            }
            boolean z3 = !TextUtils.isEmpty(str2);
            boolean z4 = z3;
            if (!z2) {
                str3 = e2;
                if (z3) {
                    z4 = true;
                } else {
                    arrayList.add(str3);
                }
            }
            str3 = e2;
            if (this.f8253h.m4634a(Uri.parse(e2))) {
                Uri.Builder buildUpon = Uri.parse(e2).buildUpon();
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
    public final List<String> m6070c(al1 al1Var, List<String> list, AbstractC2071zj zjVar) {
        ArrayList arrayList = new ArrayList();
        long a = this.f8252g.m8247a();
        try {
            String b = zjVar.m4618b();
            String num = Integer.toString(zjVar.m4617c());
            nl1 nl1Var = this.f8251f;
            String str = "";
            String f = nl1Var == null ? "" : m6067f(nl1Var.f7724a);
            nl1 nl1Var2 = this.f8251f;
            if (nl1Var2 != null) {
                str = m6067f(nl1Var2.f7725b);
            }
            for (String str2 : list) {
                arrayList.add(C2054ym.m4737a(m6068e(m6068e(m6068e(m6068e(m6068e(m6068e(str2, "@gw_rwd_userid@", Uri.encode(f)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(a)), "@gw_rwd_itm@", Uri.encode(b)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f8247b), this.f8250e, al1Var.f5997Q));
            }
            return arrayList;
        } catch (RemoteException e) {
            C1894po.m6182d("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }
}

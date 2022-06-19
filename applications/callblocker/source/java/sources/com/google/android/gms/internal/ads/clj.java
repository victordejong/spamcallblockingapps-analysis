package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clj.class */
public final class clj {

    /* renamed from: a */
    private final Executor f13273a;

    /* renamed from: b */
    private final C3649yf f13274b;

    /* renamed from: c */
    private final bpv f13275c;

    /* renamed from: d */
    private final String f13276d;

    /* renamed from: e */
    private final String f13277e;

    /* renamed from: f */
    private final String f13278f;

    /* renamed from: g */
    private final Context f13279g;

    /* renamed from: h */
    private final chb f13280h;

    /* renamed from: i */
    private final AbstractC2708e f13281i;

    /* renamed from: j */
    private final ctl f13282j;

    public clj(Executor executor, C3649yf c3649yf, bpv bpvVar, C3647yd c3647yd, String str, String str2, Context context, chb chbVar, AbstractC2708e abstractC2708e, ctl ctlVar) {
        this.f13273a = executor;
        this.f13274b = c3649yf;
        this.f13275c = bpvVar;
        this.f13276d = c3647yd.f17636a;
        this.f13277e = str;
        this.f13278f = str2;
        this.f13279g = context;
        this.f13280h = chbVar;
        this.f13281i = abstractC2708e;
        this.f13282j = ctlVar;
    }

    /* renamed from: a */
    private static String m11099a(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: c */
    private static String m11096c(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (C3638xv.m6760c()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public final void m11103a(chd chdVar, cgr cgrVar, List<String> list) {
        m11101a(chdVar, cgrVar, false, "", list);
    }

    /* renamed from: a */
    public final void m11102a(chd chdVar, cgr cgrVar, List<String> list, AbstractC3445qr abstractC3445qr) {
        long mo13862a = this.f13281i.mo13862a();
        try {
            String mo7292a = abstractC3445qr.mo7292a();
            String num = Integer.toString(abstractC3445qr.mo7291b());
            ArrayList arrayList = new ArrayList();
            String m11096c = this.f13280h == null ? "" : m11096c(this.f13280h.f13027a);
            String m11096c2 = this.f13280h == null ? "" : m11096c(this.f13280h.f13028b);
            for (String str : list) {
                arrayList.add(C3525tq.m7131a(m11099a(m11099a(m11099a(m11099a(m11099a(m11099a(str, "@gw_rwd_userid@", Uri.encode(m11096c)), "@gw_rwd_custom_data@", Uri.encode(m11096c2)), "@gw_tmstmp@", Long.toString(mo13862a)), "@gw_rwd_itm@", Uri.encode(mo7292a)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f13276d), this.f13279g, cgrVar.f12967M));
            }
            m11098a(arrayList);
        } catch (RemoteException e) {
        }
    }

    /* renamed from: a */
    public final void m11101a(chd chdVar, cgr cgrVar, boolean z, String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str2 = z ? "1" : "0";
        for (String str3 : list) {
            String m11099a = m11099a(m11099a(m11099a(str3, "@gw_adlocid@", chdVar.f13034a.f13017a.f13042f), "@gw_adnetrefresh@", str2), "@gw_sdkver@", this.f13276d);
            String str4 = m11099a;
            if (cgrVar != null) {
                str4 = C3525tq.m7131a(m11099a(m11099a(m11099a(m11099a, "@gw_qdata@", cgrVar.f13000v), "@gw_adnetid@", cgrVar.f12999u), "@gw_allocid@", cgrVar.f12998t), this.f13279g, cgrVar.f12967M);
            }
            String m11099a2 = m11099a(m11099a(m11099a(str4, "@gw_adnetstatus@", this.f13275c.m11727a()), "@gw_seqnum@", this.f13277e), "@gw_sessid@", this.f13278f);
            if (((Boolean) dyx.m8158e().m7876a(edi.f16437bq)).booleanValue() && !TextUtils.isEmpty(str)) {
                if (this.f13282j.m10669a(Uri.parse(m11099a2))) {
                    m11099a2 = Uri.parse(m11099a2).buildUpon().appendQueryParameter("ms", str).build().toString();
                }
            }
            arrayList.add(m11099a2);
        }
        m11098a(arrayList);
    }

    /* renamed from: a */
    public final void m11100a(String str) {
        this.f13273a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.clm

            /* renamed from: a */
            private final clj f13296a;

            /* renamed from: b */
            private final String f13297b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13296a = this;
                this.f13297b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13296a.m11097b(this.f13297b);
            }
        });
    }

    /* renamed from: a */
    public final void m11098a(List<String> list) {
        for (String str : list) {
            m11100a(str);
        }
    }

    /* renamed from: b */
    public final /* synthetic */ void m11097b(String str) {
        this.f13274b.mo6739a(str);
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuq.class */
public final class cuq {

    /* renamed from: a */
    private final bvx f46584a;

    /* renamed from: b */
    private final String f46585b;

    /* renamed from: c */
    private final String f46586c;

    /* renamed from: d */
    private final String f46587d;

    /* renamed from: e */
    private final Context f46588e;

    /* renamed from: f */
    private final cpj f46589f;

    /* renamed from: g */
    private final AbstractC12102f f46590g;

    /* renamed from: h */
    private final die f46591h;

    public cuq(bvx bvxVar, zzbar zzbarVar, String str, String str2, Context context, cpj cpjVar, AbstractC12102f abstractC12102f, die dieVar) {
        this.f46584a = bvxVar;
        this.f46585b = zzbarVar.zzbrz;
        this.f46586c = str;
        this.f46587d = str2;
        this.f46588e = context;
        this.f46589f = cpjVar;
        this.f46590g = abstractC12102f;
        this.f46591h = dieVar;
    }

    /* renamed from: a */
    private static String m17209a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (C13081yu.m13908c()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m17208a(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: a */
    public final List<String> m17212a(cov covVar, List<String> list, AbstractC12939tp abstractC12939tp) {
        ArrayList arrayList = new ArrayList();
        long mo19039a = this.f46590g.mo19039a();
        try {
            String mo14154a = abstractC12939tp.mo14154a();
            String num = Integer.toString(abstractC12939tp.mo14153b());
            cpj cpjVar = this.f46589f;
            String str = "";
            String m17209a = cpjVar == null ? "" : m17209a(cpjVar.f46316a);
            cpj cpjVar2 = this.f46589f;
            if (cpjVar2 != null) {
                str = m17209a(cpjVar2.f46317b);
            }
            for (String str2 : list) {
                arrayList.add(C13040xg.m14007a(m17208a(m17208a(m17208a(m17208a(m17208a(m17208a(str2, "@gw_rwd_userid@", Uri.encode(m17209a)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(mo19039a)), "@gw_rwd_itm@", Uri.encode(mo14154a)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f46585b), this.f46588e, covVar.f46237Q));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzd.zzc("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }

    /* renamed from: a */
    public final List<String> m17211a(cpk cpkVar, cov covVar, List<String> list) {
        return m17210a(cpkVar, covVar, false, "", "", list);
    }

    /* renamed from: a */
    public final List<String> m17210a(cpk cpkVar, cov covVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = z ? "1" : "0";
        for (String str5 : list) {
            String m17208a = m17208a(m17208a(m17208a(str5, "@gw_adlocid@", cpkVar.f46318a.f46306a.f46326f), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.f46585b);
            String str6 = m17208a;
            if (covVar != null) {
                str6 = C13040xg.m14007a(m17208a(m17208a(m17208a(m17208a, "@gw_qdata@", covVar.f46277x), "@gw_adnetid@", covVar.f46276w), "@gw_allocid@", covVar.f46275v), this.f46588e, covVar.f46237Q);
            }
            String m17208a2 = m17208a(m17208a(m17208a(str6, "@gw_adnetstatus@", this.f46584a.m17599a()), "@gw_seqnum@", this.f46586c), "@gw_sessid@", this.f46587d);
            boolean z2 = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42704bN)).booleanValue() && !TextUtils.isEmpty(str);
            boolean isEmpty = true ^ TextUtils.isEmpty(str2);
            if (!z2) {
                str3 = m17208a2;
                if (!isEmpty) {
                    arrayList.add(str3);
                }
            }
            str3 = m17208a2;
            if (this.f46591h.m16643a(Uri.parse(m17208a2))) {
                Uri.Builder buildUpon = Uri.parse(m17208a2).buildUpon();
                Uri.Builder builder = buildUpon;
                if (z2) {
                    builder = buildUpon.appendQueryParameter("ms", str);
                }
                Uri.Builder builder2 = builder;
                if (isEmpty) {
                    builder2 = builder.appendQueryParameter("attok", str2);
                }
                str3 = builder2.build().toString();
            }
            arrayList.add(str3);
        }
        return arrayList;
    }
}

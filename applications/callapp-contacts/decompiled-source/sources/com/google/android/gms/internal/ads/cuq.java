package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.f;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuq.class */
public final class cuq {

    /* renamed from: a  reason: collision with root package name */
    private final bvx f26431a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26432b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26433c;

    /* renamed from: d  reason: collision with root package name */
    private final String f26434d;
    private final Context e;
    private final cpj f;
    private final f g;
    private final die h;

    public cuq(bvx bvxVar, zzbar zzbarVar, String str, String str2, Context context, cpj cpjVar, f fVar, die dieVar) {
        this.f26431a = bvxVar;
        this.f26432b = zzbarVar.zzbrz;
        this.f26433c = str;
        this.f26434d = str2;
        this.e = context;
        this.f = cpjVar;
        this.g = fVar;
        this.h = dieVar;
    }

    private static String a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (yu.c()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    public final List<String> a(cov covVar, List<String> list, tp tpVar) {
        ArrayList arrayList = new ArrayList();
        long a2 = this.g.a();
        try {
            String a3 = tpVar.a();
            String num = Integer.toString(tpVar.b());
            cpj cpjVar = this.f;
            String str = "";
            String a4 = cpjVar == null ? "" : a(cpjVar.f26219a);
            cpj cpjVar2 = this.f;
            if (cpjVar2 != null) {
                str = a(cpjVar2.f26220b);
            }
            for (String str2 : list) {
                arrayList.add(xg.a(a(a(a(a(a(a(str2, "@gw_rwd_userid@", Uri.encode(a4)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(a2)), "@gw_rwd_itm@", Uri.encode(a3)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f26432b), this.e, covVar.Q));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzd.zzc("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }

    public final List<String> a(cpk cpkVar, cov covVar, List<String> list) {
        return a(cpkVar, covVar, false, "", "", list);
    }

    public final List<String> a(cpk cpkVar, cov covVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = z ? "1" : "0";
        for (String str5 : list) {
            String a2 = a(a(a(str5, "@gw_adlocid@", cpkVar.f26221a.f26209a.f), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.f26432b);
            String str6 = a2;
            if (covVar != null) {
                str6 = xg.a(a(a(a(a2, "@gw_qdata@", covVar.x), "@gw_adnetid@", covVar.w), "@gw_allocid@", covVar.v), this.e, covVar.Q);
            }
            String a3 = a(a(a(str6, "@gw_adnetstatus@", this.f26431a.a()), "@gw_seqnum@", this.f26433c), "@gw_sessid@", this.f26434d);
            boolean z2 = ((Boolean) ekb.e().a(aq.bN)).booleanValue() && !TextUtils.isEmpty(str);
            boolean isEmpty = true ^ TextUtils.isEmpty(str2);
            if (!z2) {
                str3 = a3;
                if (!isEmpty) {
                    arrayList.add(str3);
                }
            }
            str3 = a3;
            if (this.h.a(Uri.parse(a3))) {
                Uri.Builder buildUpon = Uri.parse(a3).buildUpon();
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

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsr.class */
public final class zzdsr {

    /* renamed from: a */
    public final zzcwj f27790a;

    /* renamed from: b */
    public final String f27791b;

    /* renamed from: c */
    public final String f27792c;

    /* renamed from: d */
    public final String f27793d;

    /* renamed from: e */
    public final Context f27794e;

    /* renamed from: f */
    public final zzdoj f27795f;

    /* renamed from: g */
    public final Clock f27796g;

    /* renamed from: h */
    public final zzeg f27797h;

    public zzdsr(zzcwj zzcwjVar, zzbbx zzbbxVar, String str, String str2, Context context, zzdoj zzdojVar, Clock clock, zzeg zzegVar) {
        this.f27790a = zzcwjVar;
        this.f27791b = zzbbxVar.f24759a;
        this.f27792c = str;
        this.f27793d = str2;
        this.f27794e = context;
        this.f27795f = zzdojVar;
        this.f27796g = clock;
        this.f27797h = zzegVar;
    }

    /* renamed from: a */
    public static String m13239a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (zzbbk.m15880a()) {
                str2 = "fakeForAdDebugLog";
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m13238a(String str, String str2, String str3) {
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "";
        }
        return str.replaceAll(str2, str4);
    }

    /* renamed from: a */
    public final List<String> m13242a(zzdnv zzdnvVar, List<String> list, zzatw zzatwVar) {
        ArrayList arrayList = new ArrayList();
        long b = this.f27796g.mo17091b();
        try {
            String type = zzatwVar.getType();
            String num = Integer.toString(zzatwVar.mo16345y());
            zzdoj zzdojVar = this.f27795f;
            String str = "";
            String a = zzdojVar == null ? "" : m13239a(zzdojVar.f27637a);
            zzdoj zzdojVar2 = this.f27795f;
            if (zzdojVar2 != null) {
                str = m13239a(zzdojVar2.f27638b);
            }
            for (String str2 : list) {
                arrayList.add(zzaxh.m16219a(m13238a(m13238a(m13238a(m13238a(m13238a(m13238a(str2, "@gw_rwd_userid@", Uri.encode(a)), "@gw_rwd_custom_data@", Uri.encode(str)), "@gw_tmstmp@", Long.toString(b)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f27791b), this.f27794e, zzdnvVar.f27570Q));
            }
            return arrayList;
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to determine award type and amount.", e);
            return arrayList;
        }
    }

    /* renamed from: a */
    public final List<String> m13241a(zzdog zzdogVar, zzdnv zzdnvVar, List<String> list) {
        return m13240a(zzdogVar, zzdnvVar, false, "", "", list);
    }

    /* renamed from: a */
    public final List<String> m13240a(zzdog zzdogVar, zzdnv zzdnvVar, boolean z, String str, String str2, List<String> list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        String str4 = z ? "1" : "0";
        for (String str5 : list) {
            String a = m13238a(m13238a(m13238a(str5, "@gw_adlocid@", zzdogVar.f27633a.f27632a.f27644f), "@gw_adnetrefresh@", str4), "@gw_sdkver@", this.f27791b);
            String str6 = a;
            if (zzdnvVar != null) {
                str6 = zzaxh.m16219a(m13238a(m13238a(m13238a(a, "@gw_qdata@", zzdnvVar.f27608x), "@gw_adnetid@", zzdnvVar.f27607w), "@gw_allocid@", zzdnvVar.f27606v), this.f27794e, zzdnvVar.f27570Q);
            }
            String a2 = m13238a(m13238a(m13238a(str6, "@gw_adnetstatus@", this.f27790a.m13822a()), "@gw_seqnum@", this.f27792c), "@gw_sessid@", this.f27793d);
            boolean z2 = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23896u1)).booleanValue() && !TextUtils.isEmpty(str);
            boolean isEmpty = true ^ TextUtils.isEmpty(str2);
            if (!z2) {
                str3 = a2;
                if (!isEmpty) {
                    arrayList.add(str3);
                }
            }
            str3 = a2;
            if (this.f27797h.m12598b(Uri.parse(a2))) {
                Uri.Builder buildUpon = Uri.parse(a2).buildUpon();
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

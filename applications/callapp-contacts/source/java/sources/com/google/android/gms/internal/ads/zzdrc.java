package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdrc.class */
public final class zzdrc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdrc> CREATOR = new crg();
    public final Context context;
    private final crf[] zzhqk;
    private final int[] zzhql;
    private final int[] zzhqm;
    private final int zzhqn;
    public final crf zzhqo;
    public final int zzhqp;
    public final int zzhqq;
    public final int zzhqr;
    public final String zzhqs;
    private final int zzhqt;
    public final int zzhqu;
    private final int zzhqv;
    private final int zzhqw;

    public zzdrc(int i, int i2, int i3, int i4, String str, int i5, int i6) {
        crf[] values = crf.values();
        this.zzhqk = values;
        int[] m17297a = cre.m17297a();
        this.zzhql = m17297a;
        int[] m17296a = crh.m17296a();
        this.zzhqm = m17296a;
        this.context = null;
        this.zzhqn = i;
        this.zzhqo = values[i];
        this.zzhqp = i2;
        this.zzhqq = i3;
        this.zzhqr = i4;
        this.zzhqs = str;
        this.zzhqt = i5;
        this.zzhqu = m17297a[i5];
        this.zzhqv = i6;
        this.zzhqw = m17296a[i6];
    }

    private zzdrc(Context context, crf crfVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzhqk = crf.values();
        this.zzhql = cre.m17297a();
        this.zzhqm = crh.m17296a();
        this.context = context;
        this.zzhqn = crfVar.ordinal();
        this.zzhqo = crfVar;
        this.zzhqp = i;
        this.zzhqq = i2;
        this.zzhqr = i3;
        this.zzhqs = str;
        int i4 = "oldest".equals(str2) ? cre.f46423a : ("lru".equals(str2) || !"lfu".equals(str2)) ? cre.f46424b : cre.f46425c;
        this.zzhqu = i4;
        this.zzhqt = i4 - 1;
        "onAdClosed".equals(str3);
        int i5 = crh.f46427a;
        this.zzhqw = i5;
        this.zzhqv = i5 - 1;
    }

    public static zzdrc zza(crf crfVar, Context context) {
        if (crfVar == crf.Rewarded) {
            return new zzdrc(context, crfVar, ((Integer) ekb.m14831e().m18571a(C12187aq.f42815dS)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42821dY)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42876ea)).intValue(), (String) ekb.m14831e().m18571a(C12187aq.f42878ec), (String) ekb.m14831e().m18571a(C12187aq.f42817dU), (String) ekb.m14831e().m18571a(C12187aq.f42819dW));
        } else if (crfVar == crf.Interstitial) {
            return new zzdrc(context, crfVar, ((Integer) ekb.m14831e().m18571a(C12187aq.f42816dT)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42822dZ)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42877eb)).intValue(), (String) ekb.m14831e().m18571a(C12187aq.f42879ed), (String) ekb.m14831e().m18571a(C12187aq.f42818dV), (String) ekb.m14831e().m18571a(C12187aq.f42820dX));
        } else if (crfVar != crf.AppOpen) {
            return null;
        } else {
            return new zzdrc(context, crfVar, ((Integer) ekb.m14831e().m18571a(C12187aq.f42882eg)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42884ei)).intValue(), ((Integer) ekb.m14831e().m18571a(C12187aq.f42885ej)).intValue(), (String) ekb.m14831e().m18571a(C12187aq.f42880ee), (String) ekb.m14831e().m18571a(C12187aq.f42881ef), (String) ekb.m14831e().m18571a(C12187aq.f42883eh));
        }
    }

    public static boolean zzaxd() {
        return ((Boolean) ekb.m14831e().m18571a(C12187aq.f42814dR)).booleanValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzhqn);
        C12050a.m19112a(parcel, 2, this.zzhqp);
        C12050a.m19112a(parcel, 3, this.zzhqq);
        C12050a.m19112a(parcel, 4, this.zzhqr);
        C12050a.m19104a(parcel, 5, this.zzhqs, false);
        C12050a.m19112a(parcel, 6, this.zzhqt);
        C12050a.m19112a(parcel, 7, this.zzhqv);
        C12050a.m19095b(parcel, m19116a);
    }
}

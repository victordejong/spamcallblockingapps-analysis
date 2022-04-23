package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
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
        int[] a2 = cre.a();
        this.zzhql = a2;
        int[] a3 = crh.a();
        this.zzhqm = a3;
        this.context = null;
        this.zzhqn = i;
        this.zzhqo = values[i];
        this.zzhqp = i2;
        this.zzhqq = i3;
        this.zzhqr = i4;
        this.zzhqs = str;
        this.zzhqt = i5;
        this.zzhqu = a2[i5];
        this.zzhqv = i6;
        this.zzhqw = a3[i6];
    }

    private zzdrc(Context context, crf crfVar, int i, int i2, int i3, String str, String str2, String str3) {
        this.zzhqk = crf.values();
        this.zzhql = cre.a();
        this.zzhqm = crh.a();
        this.context = context;
        this.zzhqn = crfVar.ordinal();
        this.zzhqo = crfVar;
        this.zzhqp = i;
        this.zzhqq = i2;
        this.zzhqr = i3;
        this.zzhqs = str;
        int i4 = "oldest".equals(str2) ? cre.f26295a : ("lru".equals(str2) || !"lfu".equals(str2)) ? cre.f26296b : cre.f26297c;
        this.zzhqu = i4;
        this.zzhqt = i4 - 1;
        "onAdClosed".equals(str3);
        int i5 = crh.f26299a;
        this.zzhqw = i5;
        this.zzhqv = i5 - 1;
    }

    public static zzdrc zza(crf crfVar, Context context) {
        if (crfVar == crf.Rewarded) {
            return new zzdrc(context, crfVar, ((Integer) ekb.e().a(aq.dS)).intValue(), ((Integer) ekb.e().a(aq.dY)).intValue(), ((Integer) ekb.e().a(aq.ea)).intValue(), (String) ekb.e().a(aq.ec), (String) ekb.e().a(aq.dU), (String) ekb.e().a(aq.dW));
        } else if (crfVar == crf.Interstitial) {
            return new zzdrc(context, crfVar, ((Integer) ekb.e().a(aq.dT)).intValue(), ((Integer) ekb.e().a(aq.dZ)).intValue(), ((Integer) ekb.e().a(aq.eb)).intValue(), (String) ekb.e().a(aq.ed), (String) ekb.e().a(aq.dV), (String) ekb.e().a(aq.dX));
        } else if (crfVar != crf.AppOpen) {
            return null;
        } else {
            return new zzdrc(context, crfVar, ((Integer) ekb.e().a(aq.eg)).intValue(), ((Integer) ekb.e().a(aq.ei)).intValue(), ((Integer) ekb.e().a(aq.ej)).intValue(), (String) ekb.e().a(aq.ee), (String) ekb.e().a(aq.ef), (String) ekb.e().a(aq.eh));
        }
    }

    public static boolean zzaxd() {
        return ((Boolean) ekb.e().a(aq.dR)).booleanValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzhqn);
        a.a(parcel, 2, this.zzhqp);
        a.a(parcel, 3, this.zzhqq);
        a.a(parcel, 4, this.zzhqr);
        a.a(parcel, 5, this.zzhqs, false);
        a.a(parcel, 6, this.zzhqt);
        a.a(parcel, 7, this.zzhqv);
        a.b(parcel, a2);
    }
}

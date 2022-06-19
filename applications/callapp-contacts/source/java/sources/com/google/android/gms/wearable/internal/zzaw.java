package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14226f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzaw.class */
public final class zzaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaw> CREATOR = new C14341n();
    private final int type;
    private final int zzcj;
    private final zzay zzck;
    private final int zzg;

    public zzaw(zzay zzayVar, int i, int i2, int i3) {
        this.zzck = zzayVar;
        this.type = i;
        this.zzg = i2;
        this.zzcj = i3;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzck);
        int i = this.type;
        String num = i != 1 ? i != 2 ? i != 3 ? i != 4 ? Integer.toString(i) : "OUTPUT_CLOSED" : "INPUT_CLOSED" : "CHANNEL_CLOSED" : "CHANNEL_OPENED";
        int i2 = this.zzg;
        String num2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? Integer.toString(i2) : "CLOSE_REASON_LOCAL_CLOSE" : "CLOSE_REASON_REMOTE_CLOSE" : "CLOSE_REASON_DISCONNECTED" : "CLOSE_REASON_NORMAL";
        int i3 = this.zzcj;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81 + String.valueOf(num).length() + String.valueOf(num2).length());
        sb.append("ChannelEventParcelable[, channel=");
        sb.append(valueOf);
        sb.append(", type=");
        sb.append(num);
        sb.append(", closeReason=");
        sb.append(num2);
        sb.append(", appErrorCode=");
        sb.append(i3);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, this.zzck, i, false);
        C12050a.m19112a(parcel, 3, this.type);
        C12050a.m19112a(parcel, 4, this.zzg);
        C12050a.m19112a(parcel, 5, this.zzcj);
        C12050a.m19095b(parcel, m19116a);
    }

    public final void zza(AbstractC14226f.AbstractC14227a abstractC14227a) {
        int i = this.type;
        if (i == 1) {
            abstractC14227a.mo11359a(this.zzck);
        } else if (i == 2) {
            abstractC14227a.mo11358a(this.zzck, this.zzg, this.zzcj);
        } else if (i == 3) {
            abstractC14227a.mo11357b(this.zzck, this.zzg, this.zzcj);
        } else if (i == 4) {
            abstractC14227a.mo11356c(this.zzck, this.zzg, this.zzcj);
        } else {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Unknown type: ");
            sb.append(i);
            Log.w("ChannelEventParcelable", sb.toString());
        }
    }
}

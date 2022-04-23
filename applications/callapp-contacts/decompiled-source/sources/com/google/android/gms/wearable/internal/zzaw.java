package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzaw.class */
public final class zzaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaw> CREATOR = new n();
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzck, i, false);
        a.a(parcel, 3, this.type);
        a.a(parcel, 4, this.zzg);
        a.a(parcel, 5, this.zzcj);
        a.b(parcel, a2);
    }

    public final void zza(f.a aVar) {
        int i = this.type;
        if (i == 1) {
            aVar.a(this.zzck);
        } else if (i == 2) {
            aVar.a(this.zzck, this.zzg, this.zzcj);
        } else if (i == 3) {
            aVar.b(this.zzck, this.zzg, this.zzcj);
        } else if (i != 4) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Unknown type: ");
            sb.append(i);
            Log.w("ChannelEventParcelable", sb.toString());
        } else {
            aVar.c(this.zzck, this.zzg, this.zzcj);
        }
    }
}

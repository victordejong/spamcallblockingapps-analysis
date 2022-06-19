package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14360m;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfe.class */
public final class zzfe extends AbstractSafeParcelable implements AbstractC14360m {
    public static final Parcelable.Creator<zzfe> CREATOR = new C14284bz();
    private final byte[] data;
    private final String zzcl;
    private final int zzeh;
    private final String zzek;

    public zzfe(int i, String str, byte[] bArr, String str2) {
        this.zzeh = i;
        this.zzcl = str;
        this.data = bArr;
        this.zzek = str2;
    }

    @Override // com.google.android.gms.wearable.AbstractC14360m
    public final byte[] getData() {
        return this.data;
    }

    @Override // com.google.android.gms.wearable.AbstractC14360m
    public final String getPath() {
        return this.zzcl;
    }

    @Override // com.google.android.gms.wearable.AbstractC14360m
    public final int getRequestId() {
        return this.zzeh;
    }

    public final String getSourceNodeId() {
        return this.zzek;
    }

    public final String toString() {
        int i = this.zzeh;
        String str = this.zzcl;
        byte[] bArr = this.data;
        String valueOf = String.valueOf(bArr == null ? JsonReaderKt.NULL : Integer.valueOf(bArr.length));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length());
        sb.append("MessageEventParcelable[");
        sb.append(i);
        sb.append(",");
        sb.append(str);
        sb.append(", size=");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, getRequestId());
        C12050a.m19104a(parcel, 3, getPath(), false);
        C12050a.m19100a(parcel, 4, getData(), false);
        C12050a.m19104a(parcel, 5, getSourceNodeId(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}

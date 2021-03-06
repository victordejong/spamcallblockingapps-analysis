package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.AbstractC14230i;
import com.google.android.gms.wearable.AbstractC14354j;
import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdd.class */
public final class zzdd extends AbstractSafeParcelable implements AbstractC14230i {
    public static final Parcelable.Creator<zzdd> CREATOR = new C14246ao();
    private byte[] data;
    private final Uri uri;
    private final Map<String, AbstractC14354j> zzdo;

    public zzdd(Uri uri, Bundle bundle, byte[] bArr) {
        this.uri = uri;
        HashMap hashMap = new HashMap();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (String str : bundle.keySet()) {
            hashMap.put(str, (DataItemAssetParcelable) bundle.getParcelable(str));
        }
        this.zzdo = hashMap;
        this.data = bArr;
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final Map<String, AbstractC14354j> getAssets() {
        return this.zzdo;
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final byte[] getData() {
        return this.data;
    }

    @Override // com.google.android.gms.wearable.AbstractC14230i
    public final Uri getUri() {
        return this.uri;
    }

    public final boolean isDataValid() {
        return true;
    }

    public final /* synthetic */ AbstractC14230i setData(byte[] bArr) {
        this.data = bArr;
        return this;
    }

    public final String toString() {
        boolean isLoggable = Log.isLoggable("DataItem", 3);
        StringBuilder sb = new StringBuilder("DataItemParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        byte[] bArr = this.data;
        String valueOf = String.valueOf(bArr == null ? JsonReaderKt.NULL : Integer.valueOf(bArr.length));
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb2.append(",dataSz=");
        sb2.append(valueOf);
        sb.append(sb2.toString());
        int size = this.zzdo.size();
        StringBuilder sb3 = new StringBuilder(23);
        sb3.append(", numAssets=");
        sb3.append(size);
        sb.append(sb3.toString());
        String valueOf2 = String.valueOf(this.uri);
        StringBuilder sb4 = new StringBuilder(String.valueOf(valueOf2).length() + 6);
        sb4.append(", uri=");
        sb4.append(valueOf2);
        sb.append(sb4.toString());
        if (!isLoggable) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (String str : this.zzdo.keySet()) {
            String valueOf3 = String.valueOf(this.zzdo.get(str));
            StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(valueOf3).length());
            sb5.append("\n    ");
            sb5.append(str);
            sb5.append(": ");
            sb5.append(valueOf3);
            sb.append(sb5.toString());
        }
        sb.append("\n  ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, getUri(), i, false);
        Bundle bundle = new Bundle();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (Map.Entry<String, AbstractC14354j> entry : this.zzdo.entrySet()) {
            bundle.putParcelable(entry.getKey(), new DataItemAssetParcelable(entry.getValue()));
        }
        C12050a.m19110a(parcel, 4, bundle, false);
        C12050a.m19100a(parcel, 5, getData(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}

package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzait.class */
public final class zzait extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzait> CREATOR = new zzais();
    private final String url;
    private final String[] zzdin;
    private final String[] zzdio;

    public zzait(String str, String[] strArr, String[] strArr2) {
        this.url = str;
        this.zzdin = strArr;
        this.zzdio = strArr2;
    }

    public static zzait zzh(zzab<?> zzabVar) throws zzl {
        Map<String, String> headers = zzabVar.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzait(zzabVar.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.url, false);
        SafeParcelWriter.writeStringArray(parcel, 2, this.zzdin, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzdio, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

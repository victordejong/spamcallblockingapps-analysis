package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaiy.class */
public final class zzaiy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiy> CREATOR = new ic();
    private final String url;
    private final String[] zzdju;
    private final String[] zzdjv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaiy(String str, String[] strArr, String[] strArr2) {
        this.url = str;
        this.zzdju = strArr;
        this.zzdjv = strArr2;
    }

    public static zzaiy zzh(z<?> zVar) throws zzl {
        Map<String, String> headers = zVar.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzaiy(zVar.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.url, false);
        a.a(parcel, 2, this.zzdju, false);
        a.a(parcel, 3, this.zzdjv, false);
        a.b(parcel, a2);
    }
}

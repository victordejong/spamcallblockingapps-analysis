package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaiy.class */
public final class zzaiy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiy> CREATOR = new C12628ic();
    private final String url;
    private final String[] zzdju;
    private final String[] zzdjv;

    public zzaiy(String str, String[] strArr, String[] strArr2) {
        this.url = str;
        this.zzdju = strArr;
        this.zzdjv = strArr2;
    }

    public static zzaiy zzh(AbstractC13087z<?> abstractC13087z) throws zzl {
        Map<String, String> headers = abstractC13087z.getHeaders();
        int size = headers.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new zzaiy(abstractC13087z.getUrl(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.url, false);
        C12050a.m19097a(parcel, 2, this.zzdju, false);
        C12050a.m19097a(parcel, 3, this.zzdjv, false);
        C12050a.m19095b(parcel, m19116a);
    }
}

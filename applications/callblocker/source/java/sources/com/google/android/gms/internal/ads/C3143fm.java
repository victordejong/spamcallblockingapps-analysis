package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fm.class */
public final class C3143fm extends AbstractC2663a {
    public static final Parcelable.Creator<C3143fm> CREATOR = new C3146fp();

    /* renamed from: a */
    private final String f16666a;

    /* renamed from: b */
    private final String[] f16667b;

    /* renamed from: c */
    private final String[] f16668c;

    public C3143fm(String str, String[] strArr, String[] strArr2) {
        this.f16666a = str;
        this.f16667b = strArr;
        this.f16668c = strArr2;
    }

    /* renamed from: a */
    public static C3143fm m7826a(dts<?> dtsVar) {
        Map<String, String> mo6866b = dtsVar.mo6866b();
        int size = mo6866b.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : mo6866b.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        return new C3143fm(dtsVar.m8596e(), strArr, strArr2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f16666a, false);
        C2664b.m13927a(parcel, 2, this.f16667b, false);
        C2664b.m13927a(parcel, 3, this.f16668c, false);
        C2664b.m13943a(parcel, m13944a);
    }
}

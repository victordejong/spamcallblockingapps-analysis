package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.gl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gl.class */
public final class C3169gl extends AbstractC2663a {
    public static final Parcelable.Creator<C3169gl> CREATOR = new C3172go();

    /* renamed from: a */
    public final String f16692a;

    /* renamed from: b */
    public final Bundle f16693b;

    public C3169gl(String str, Bundle bundle) {
        this.f16692a = str;
        this.f16693b = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f16692a, false);
        C2664b.m13939a(parcel, 2, this.f16693b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}

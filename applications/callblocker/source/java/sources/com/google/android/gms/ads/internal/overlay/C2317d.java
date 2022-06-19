package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.ads.internal.overlay.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/d.class */
public final class C2317d extends AbstractC2663a {
    public static final Parcelable.Creator<C2317d> CREATOR = new C2314a();

    /* renamed from: a */
    public final String f6710a;

    /* renamed from: b */
    public final String f6711b;

    /* renamed from: c */
    public final String f6712c;

    /* renamed from: d */
    public final String f6713d;

    /* renamed from: e */
    public final String f6714e;

    /* renamed from: f */
    public final Intent f6715f;

    /* renamed from: g */
    private final String f6716g;

    /* renamed from: h */
    private final String f6717h;

    public C2317d(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    public C2317d(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    public C2317d(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent) {
        this.f6716g = str;
        this.f6710a = str2;
        this.f6711b = str3;
        this.f6712c = str4;
        this.f6713d = str5;
        this.f6714e = str6;
        this.f6717h = str7;
        this.f6715f = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f6716g, false);
        C2664b.m13932a(parcel, 3, this.f6710a, false);
        C2664b.m13932a(parcel, 4, this.f6711b, false);
        C2664b.m13932a(parcel, 5, this.f6712c, false);
        C2664b.m13932a(parcel, 6, this.f6713d, false);
        C2664b.m13932a(parcel, 7, this.f6714e, false);
        C2664b.m13932a(parcel, 8, this.f6717h, false);
        C2664b.m13937a(parcel, 9, (Parcelable) this.f6715f, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}

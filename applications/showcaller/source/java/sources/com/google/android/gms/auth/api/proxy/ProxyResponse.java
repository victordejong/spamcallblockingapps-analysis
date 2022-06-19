package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyResponse.class */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new C5899c();

    /* renamed from: d */
    private final int f18964d;

    /* renamed from: e */
    public final int f18965e;

    /* renamed from: f */
    public final PendingIntent f18966f;

    /* renamed from: g */
    public final int f18967g;

    /* renamed from: h */
    private final Bundle f18968h;

    /* renamed from: i */
    public final byte[] f18969i;

    public ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.f18964d = i;
        this.f18965e = i2;
        this.f18967g = i3;
        this.f18968h = bundle;
        this.f18969i = bArr;
        this.f18966f = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f18965e);
        C6170a.m16931q(parcel, 2, this.f18966f, i, false);
        C6170a.m16937k(parcel, 3, this.f18967g);
        C6170a.m16943e(parcel, 4, this.f18968h, false);
        C6170a.m16942f(parcel, 5, this.f18969i, false);
        C6170a.m16937k(parcel, 1000, this.f18964d);
        C6170a.m16946b(parcel, m16947a);
    }
}

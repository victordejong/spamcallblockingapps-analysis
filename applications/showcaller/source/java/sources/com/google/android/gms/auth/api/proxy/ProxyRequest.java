package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyRequest.class */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new C5898b();

    /* renamed from: d */
    public static final int f18949d = 0;

    /* renamed from: e */
    public static final int f18950e = 1;

    /* renamed from: f */
    public static final int f18951f = 2;

    /* renamed from: g */
    public static final int f18952g = 3;

    /* renamed from: h */
    public static final int f18953h = 4;

    /* renamed from: i */
    public static final int f18954i = 5;

    /* renamed from: j */
    public static final int f18955j = 6;

    /* renamed from: k */
    public static final int f18956k = 7;

    /* renamed from: l */
    public static final int f18957l = 7;

    /* renamed from: m */
    private final int f18958m;

    /* renamed from: n */
    public final String f18959n;

    /* renamed from: o */
    public final int f18960o;

    /* renamed from: p */
    public final long f18961p;

    /* renamed from: q */
    public final byte[] f18962q;

    /* renamed from: r */
    private Bundle f18963r;

    public ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.f18958m = i;
        this.f18959n = str;
        this.f18960o = i2;
        this.f18961p = j;
        this.f18962q = bArr;
        this.f18963r = bundle;
    }

    public String toString() {
        String str = this.f18959n;
        int i = this.f18960o;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42);
        sb.append("ProxyRequest[ url: ");
        sb.append(str);
        sb.append(", method: ");
        sb.append(i);
        sb.append(" ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f18959n, false);
        C6170a.m16937k(parcel, 2, this.f18960o);
        C6170a.m16934n(parcel, 3, this.f18961p);
        C6170a.m16942f(parcel, 4, this.f18962q, false);
        C6170a.m16943e(parcel, 5, this.f18963r, false);
        C6170a.m16937k(parcel, 1000, this.f18958m);
        C6170a.m16946b(parcel, m16947a);
    }
}

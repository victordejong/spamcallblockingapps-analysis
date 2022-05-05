package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p231g.C6736b;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyRequest.class */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new C6736b();

    /* renamed from: a */
    public final int f6417a;

    /* renamed from: b */
    public final String f6418b;

    /* renamed from: c */
    public final int f6419c;

    /* renamed from: d */
    public final long f6420d;

    /* renamed from: e */
    public final byte[] f6421e;

    /* renamed from: f */
    public Bundle f6422f;

    public ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.f6417a = i;
        this.f6418b = str;
        this.f6419c = i2;
        this.f6420d = j;
        this.f6421e = bArr;
        this.f6422f = bundle;
    }

    public String toString() {
        String str = this.f6418b;
        int i = this.f6419c;
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
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6418b, false);
        C7031b.m21225a(parcel, 2, this.f6419c);
        C7031b.m21224a(parcel, 3, this.f6420d);
        C7031b.m21211a(parcel, 4, this.f6421e, false);
        C7031b.m21223a(parcel, 5, this.f6422f, false);
        C7031b.m21225a(parcel, 1000, this.f6417a);
        C7031b.m21229a(parcel, a);
    }
}

package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p231g.C6737c;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyResponse.class */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new C6737c();

    /* renamed from: a */
    public final int f6423a;

    /* renamed from: b */
    public final int f6424b;

    /* renamed from: c */
    public final PendingIntent f6425c;

    /* renamed from: d */
    public final int f6426d;

    /* renamed from: e */
    public final Bundle f6427e;

    /* renamed from: f */
    public final byte[] f6428f;

    public ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.f6423a = i;
        this.f6424b = i2;
        this.f6426d = i3;
        this.f6427e = bundle;
        this.f6428f = bArr;
        this.f6425c = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6424b);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f6425c, i, false);
        C7031b.m21225a(parcel, 3, this.f6426d);
        C7031b.m21223a(parcel, 4, this.f6427e, false);
        C7031b.m21211a(parcel, 5, this.f6428f, false);
        C7031b.m21225a(parcel, 1000, this.f6423a);
        C7031b.m21229a(parcel, a);
    }
}

package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p255h.p256a.p257a.C7143b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/identity/intents/model/UserAddress.class */
public final class UserAddress extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new C7143b();

    /* renamed from: a */
    public String f6714a;

    /* renamed from: b */
    public String f6715b;

    /* renamed from: c */
    public String f6716c;

    /* renamed from: d */
    public String f6717d;

    /* renamed from: e */
    public String f6718e;

    /* renamed from: f */
    public String f6719f;

    /* renamed from: g */
    public String f6720g;

    /* renamed from: h */
    public String f6721h;

    /* renamed from: i */
    public String f6722i;

    /* renamed from: j */
    public String f6723j;

    /* renamed from: k */
    public String f6724k;

    /* renamed from: l */
    public String f6725l;

    /* renamed from: m */
    public boolean f6726m;

    /* renamed from: n */
    public String f6727n;

    /* renamed from: o */
    public String f6728o;

    public UserAddress() {
    }

    public UserAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.f6714a = str;
        this.f6715b = str2;
        this.f6716c = str3;
        this.f6717d = str4;
        this.f6718e = str5;
        this.f6719f = str6;
        this.f6720g = str7;
        this.f6721h = str8;
        this.f6722i = str9;
        this.f6723j = str10;
        this.f6724k = str11;
        this.f6725l = str12;
        this.f6726m = z;
        this.f6727n = str13;
        this.f6728o = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f6714a, false);
        C7031b.m21215a(parcel, 3, this.f6715b, false);
        C7031b.m21215a(parcel, 4, this.f6716c, false);
        C7031b.m21215a(parcel, 5, this.f6717d, false);
        C7031b.m21215a(parcel, 6, this.f6718e, false);
        C7031b.m21215a(parcel, 7, this.f6719f, false);
        C7031b.m21215a(parcel, 8, this.f6720g, false);
        C7031b.m21215a(parcel, 9, this.f6721h, false);
        C7031b.m21215a(parcel, 10, this.f6722i, false);
        C7031b.m21215a(parcel, 11, this.f6723j, false);
        C7031b.m21215a(parcel, 12, this.f6724k, false);
        C7031b.m21215a(parcel, 13, this.f6725l, false);
        C7031b.m21212a(parcel, 14, this.f6726m);
        C7031b.m21215a(parcel, 15, this.f6727n, false);
        C7031b.m21215a(parcel, 16, this.f6728o, false);
        C7031b.m21229a(parcel, a);
    }
}

package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import e.m.e.d0.b;
import java.util.List;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Payload.class */
public class Payload implements Parcelable {
    public static final Parcelable.Creator<Payload> CREATOR = new C3926a();
    @b("type")

    /* renamed from: a */
    private final String f12007a;
    @b("message")

    /* renamed from: b */
    private final String f12008b;
    @b("responses")

    /* renamed from: c */
    private final List<String> f12009c;
    @b("attachment")

    /* renamed from: d */
    private String f12010d;
    @b("extra")

    /* renamed from: e */
    private String f12011e;

    /* renamed from: com.truecaller.flashsdk.models.Payload$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Payload$a.class */
    public class C3926a implements Parcelable.Creator<Payload> {
        @Override // android.os.Parcelable.Creator
        public Payload createFromParcel(Parcel parcel) {
            return new Payload(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Payload[] newArray(int i) {
            return new Payload[i];
        }
    }

    public Payload(Parcel parcel) {
        this.f12007a = parcel.readString();
        this.f12008b = parcel.readString();
        this.f12009c = parcel.createStringArrayList();
        this.f12010d = parcel.readString();
        this.f12011e = parcel.readString();
    }

    public Payload(String str, String str2, List<String> list, String str3) {
        this.f12007a = str;
        this.f12008b = str2;
        this.f12009c = list;
        this.f12010d = str3;
        this.f12011e = null;
    }

    /* renamed from: a */
    public String m35386a() {
        return this.f12010d;
    }

    /* renamed from: b */
    public String m35385b() {
        return this.f12011e;
    }

    /* renamed from: c */
    public String m35384c() {
        return this.f12008b;
    }

    /* renamed from: d */
    public List<String> m35383d() {
        return this.f12009c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m35382e() {
        return this.f12007a;
    }

    /* renamed from: f */
    public void m35381f(String str) {
        this.f12010d = str;
    }

    /* renamed from: g */
    public void m35380g(String str) {
        this.f12011e = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12007a);
        parcel.writeString(this.f12008b);
        parcel.writeStringList(this.f12009c);
        parcel.writeString(this.f12010d);
        parcel.writeString(this.f12011e);
    }
}

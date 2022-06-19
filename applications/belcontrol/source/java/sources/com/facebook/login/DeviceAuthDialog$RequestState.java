package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState.class */
public class DeviceAuthDialog$RequestState implements Parcelable {
    public static final Parcelable.Creator<DeviceAuthDialog$RequestState> CREATOR = new C0346a();

    /* renamed from: a */
    public String f2515a;

    /* renamed from: b */
    public String f2516b;

    /* renamed from: c */
    public String f2517c;

    /* renamed from: d */
    public long f2518d;

    /* renamed from: f */
    public long f2519f;

    /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/DeviceAuthDialog$RequestState$a.class */
    public static final class C0346a implements Parcelable.Creator<DeviceAuthDialog$RequestState> {
        /* renamed from: a */
        public DeviceAuthDialog$RequestState createFromParcel(Parcel parcel) {
            return new DeviceAuthDialog$RequestState(parcel);
        }

        /* renamed from: b */
        public DeviceAuthDialog$RequestState[] newArray(int i) {
            return new DeviceAuthDialog$RequestState[i];
        }
    }

    public DeviceAuthDialog$RequestState() {
    }

    public DeviceAuthDialog$RequestState(Parcel parcel) {
        this.f2515a = parcel.readString();
        this.f2516b = parcel.readString();
        this.f2517c = parcel.readString();
        this.f2518d = parcel.readLong();
        this.f2519f = parcel.readLong();
    }

    /* renamed from: a */
    public String m5122a() {
        return this.f2515a;
    }

    /* renamed from: b */
    public long m5121b() {
        return this.f2518d;
    }

    /* renamed from: c */
    public String m5120c() {
        return this.f2517c;
    }

    /* renamed from: d */
    public String m5119d() {
        return this.f2516b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m5118e(long j) {
        this.f2518d = j;
    }

    /* renamed from: f */
    public void m5117f(long j) {
        this.f2519f = j;
    }

    /* renamed from: g */
    public void m5116g(String str) {
        this.f2517c = str;
    }

    /* renamed from: h */
    public void m5115h(String str) {
        this.f2516b = str;
        this.f2515a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
    }

    /* renamed from: i */
    public boolean m5114i() {
        boolean z = false;
        if (this.f2519f == 0) {
            return false;
        }
        if ((new Date().getTime() - this.f2519f) - (this.f2518d * 1000) < 0) {
            z = true;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2515a);
        parcel.writeString(this.f2516b);
        parcel.writeString(this.f2517c);
        parcel.writeLong(this.f2518d);
        parcel.writeLong(this.f2519f);
    }
}

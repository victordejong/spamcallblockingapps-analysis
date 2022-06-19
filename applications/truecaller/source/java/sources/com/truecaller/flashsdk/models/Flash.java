package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.Random;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Flash.class */
public class Flash implements Parcelable {
    public static final Parcelable.Creator<Flash> CREATOR = new C3920a();
    @b(AnalyticsConstants.SENDER)

    /* renamed from: a */
    public Sender f11991a;
    @b(RemoteMessageConst.f7718TO)

    /* renamed from: b */
    public long f11992b;
    @b("threadId")

    /* renamed from: c */
    public String f11993c;
    @b("state")

    /* renamed from: d */
    public String f11994d;
    @b("history")

    /* renamed from: e */
    public String f11995e;
    @b("payload")

    /* renamed from: f */
    public Payload f11996f;
    @b("timestamp")

    /* renamed from: g */
    public long f11997g;
    @b("instanceId")

    /* renamed from: h */
    public String f11998h;

    /* renamed from: com.truecaller.flashsdk.models.Flash$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/Flash$a.class */
    public class C3920a implements Parcelable.Creator<Flash> {
        @Override // android.os.Parcelable.Creator
        public Flash createFromParcel(Parcel parcel) {
            return new Flash(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Flash[] newArray(int i) {
            return new Flash[i];
        }
    }

    public Flash() {
    }

    public Flash(Parcel parcel) {
        this.f11991a = (Sender) parcel.readParcelable(Sender.class.getClassLoader());
        this.f11992b = parcel.readLong();
        this.f11993c = parcel.readString();
        this.f11994d = parcel.readString();
        this.f11995e = parcel.readString();
        this.f11996f = (Payload) parcel.readParcelable(Payload.class.getClassLoader());
        this.f11997g = parcel.readLong();
        this.f11998h = parcel.readString();
    }

    /* renamed from: a */
    public String m35393a() {
        String str = this.f11995e;
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: b */
    public final String m35392b(String str) {
        return String.format("%s-%s", Long.toHexString(SystemClock.elapsedRealtime()), Integer.toHexString(new Random(str.hashCode()).nextInt()));
    }

    /* renamed from: c */
    public boolean m35391c() {
        Payload payload;
        Sender sender = this.f11991a;
        return (sender == null || sender.m35377c() == null || (payload = this.f11996f) == null || TextUtils.isEmpty(payload.m35382e()) || TextUtils.isEmpty(this.f11996f.m35382e())) ? false : true;
    }

    /* renamed from: d */
    public void m35390d() {
        long j = this.f11992b;
        this.f11998h = String.format("-%s-%s", Long.valueOf(j), m35392b(String.valueOf(this.f11993c + System.currentTimeMillis())));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m35389e() {
        this.f11993c = m35392b(Long.toString(this.f11992b));
    }

    /* renamed from: f */
    public FlashRequest m35388f(String str) {
        String str2 = this.f11998h;
        long j = this.f11992b;
        String str3 = this.f11993c;
        String str4 = this.f11994d;
        String str5 = this.f11995e;
        if (str5 == null) {
            str5 = "";
        }
        return new FlashRequest(str2, String.valueOf(6), new Data(j, str3, str4, str5, str, this.f11996f));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11991a, i);
        parcel.writeLong(this.f11992b);
        parcel.writeString(this.f11993c);
        parcel.writeString(this.f11994d);
        parcel.writeString(this.f11995e);
        parcel.writeParcelable(this.f11996f, i);
        parcel.writeLong(this.f11997g);
        parcel.writeString(this.f11998h);
    }
}

package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/QueuedFlash.class */
public class QueuedFlash extends Flash implements Parcelable {
    public static final Parcelable.Creator<QueuedFlash> CREATOR = new C3927a();

    /* renamed from: i */
    public boolean f12012i = false;

    /* renamed from: j */
    public boolean f12013j = true;

    /* renamed from: k */
    public boolean f12014k = true;

    /* renamed from: l */
    public Payload f12015l;

    /* renamed from: com.truecaller.flashsdk.models.QueuedFlash$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/QueuedFlash$a.class */
    public class C3927a implements Parcelable.Creator<QueuedFlash> {
        @Override // android.os.Parcelable.Creator
        public QueuedFlash createFromParcel(Parcel parcel) {
            return new QueuedFlash(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public QueuedFlash[] newArray(int i) {
            return new QueuedFlash[i];
        }
    }

    public QueuedFlash() {
    }

    public QueuedFlash(Parcel parcel, C3927a c3927a) {
        this.f11991a = (Sender) parcel.readParcelable(Sender.class.getClassLoader());
        this.f11992b = parcel.readLong();
        this.f11993c = parcel.readString();
        this.f11994d = parcel.readString();
        this.f11995e = parcel.readString();
        this.f11996f = (Payload) parcel.readParcelable(Payload.class.getClassLoader());
        this.f11997g = parcel.readLong();
        this.f11998h = parcel.readString();
        this.f12015l = (Payload) parcel.readParcelable(Payload.class.getClassLoader());
    }

    @Override // com.truecaller.flashsdk.models.Flash, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("firstFlash: ");
        m8728C.append(this.f12012i);
        m8728C.append(", updateProgress: ");
        m8728C.append(this.f12013j);
        return m8728C.toString();
    }

    @Override // com.truecaller.flashsdk.models.Flash, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11991a, i);
        parcel.writeLong(this.f11992b);
        parcel.writeString(this.f11993c);
        parcel.writeString(this.f11994d);
        parcel.writeString(this.f11995e);
        parcel.writeParcelable(this.f11996f, i);
        parcel.writeLong(this.f11997g);
        parcel.writeString(this.f11998h);
        parcel.writeParcelable(this.f12015l, i);
    }
}

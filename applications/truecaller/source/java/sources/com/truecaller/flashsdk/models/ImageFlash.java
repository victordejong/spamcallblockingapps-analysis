package com.truecaller.flashsdk.models;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/ImageFlash.class */
public class ImageFlash extends Flash implements Parcelable {
    public static final Parcelable.Creator<ImageFlash> CREATOR = new C3924a();

    /* renamed from: i */
    public Uri f12002i;

    /* renamed from: j */
    public MediaUrl f12003j;

    /* renamed from: k */
    public boolean f12004k;

    /* renamed from: l */
    public boolean f12005l;

    /* renamed from: m */
    public String f12006m;

    /* renamed from: com.truecaller.flashsdk.models.ImageFlash$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/ImageFlash$a.class */
    public class C3924a implements Parcelable.Creator<ImageFlash> {
        @Override // android.os.Parcelable.Creator
        public ImageFlash createFromParcel(Parcel parcel) {
            return new ImageFlash(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public ImageFlash[] newArray(int i) {
            return new ImageFlash[i];
        }
    }

    public ImageFlash() {
    }

    public ImageFlash(Parcel parcel, C3924a c3924a) {
        super(parcel);
        this.f12002i = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f12003j = (MediaUrl) parcel.readParcelable(MediaUrl.class.getClassLoader());
        this.f12004k = parcel.readByte() != 0;
        this.f12005l = parcel.readByte() != 0;
        this.f12006m = parcel.readString();
    }

    @Override // com.truecaller.flashsdk.models.Flash, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: g */
    public void m35387g(Flash flash) {
        this.f11991a = flash.f11991a;
        this.f11992b = flash.f11992b;
        this.f11993c = flash.f11993c;
        this.f11994d = flash.f11994d;
        this.f11995e = flash.f11995e;
        this.f11996f = flash.f11996f;
        this.f11997g = flash.f11997g;
        this.f11998h = flash.f11998h;
    }

    @Override // com.truecaller.flashsdk.models.Flash, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f12002i, i);
        parcel.writeParcelable(this.f12003j, i);
        parcel.writeByte(this.f12004k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f12005l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f12006m);
    }
}

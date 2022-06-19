package android.support.p012v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0080a();

    /* renamed from: a */
    public final int f178a;

    /* renamed from: b */
    public final float f179b;

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat$a.class */
    public static final class C0080a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    public RatingCompat(int i, float f) {
        this.f178a = i;
        this.f179b = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f178a;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Rating:style=");
        m8752j.append(this.f178a);
        m8752j.append(" rating=");
        float f = this.f179b;
        m8752j.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return m8752j.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f178a);
        parcel.writeFloat(this.f179b);
    }
}

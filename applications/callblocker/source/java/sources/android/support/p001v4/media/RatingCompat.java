package android.support.p001v4.media;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        /* renamed from: a */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* renamed from: a */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };

    /* renamed from: a */
    private final int f102a;

    /* renamed from: b */
    private final float f103b;

    RatingCompat(int i, float f) {
        this.f102a = i;
        this.f103b = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f102a;
    }

    public String toString() {
        return "Rating:style=" + this.f102a + " rating=" + (this.f103b < 0.0f ? "unrated" : String.valueOf(this.f103b));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f102a);
        parcel.writeFloat(this.f103b);
    }
}

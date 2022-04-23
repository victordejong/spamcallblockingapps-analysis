package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat(), (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f162a;

    /* renamed from: b  reason: collision with root package name */
    private final float f163b;

    private RatingCompat(int i, float f) {
        this.f162a = i;
        this.f163b = f;
    }

    /* synthetic */ RatingCompat(int i, float f, byte b2) {
        this(i, f);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f162a;
    }

    public final String toString() {
        return "Rating:style=" + this.f162a + " rating=" + (this.f163b < 0.0f ? "unrated" : String.valueOf(this.f163b));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f162a);
        parcel.writeFloat(this.f163b);
    }
}

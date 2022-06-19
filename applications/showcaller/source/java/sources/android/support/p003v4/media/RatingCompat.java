package android.support.p003v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0035a();

    /* renamed from: d */
    private final int f77d;

    /* renamed from: e */
    private final float f78e;

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat$a.class */
    static final class C0035a implements Parcelable.Creator<RatingCompat> {
        C0035a() {
        }

        /* renamed from: a */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* renamed from: b */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    RatingCompat(int i, float f) {
        this.f77d = i;
        this.f78e = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f77d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f77d);
        sb.append(" rating=");
        float f = this.f78e;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f77d);
        parcel.writeFloat(this.f78e);
    }
}

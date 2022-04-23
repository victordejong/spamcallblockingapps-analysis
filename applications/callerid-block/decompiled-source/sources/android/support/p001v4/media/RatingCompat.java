package android.support.p001v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0029a();

    /* renamed from: b */
    private final int f78b;

    /* renamed from: c */
    private final float f79c;

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat$a.class */
    static final class C0029a implements Parcelable.Creator<RatingCompat> {
        C0029a() {
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
        this.f78b = i;
        this.f79c = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f78b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f78b);
        sb.append(" rating=");
        float f = this.f79c;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f78b);
        parcel.writeFloat(this.f79c);
    }
}

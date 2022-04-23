package android.support.p009v4.media;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0044a();

    /* renamed from: a */
    public final int f80a;

    /* renamed from: b */
    public final float f81b;

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat$a.class */
    public static final class C0044a implements Parcelable.Creator<RatingCompat> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    }

    public RatingCompat(int i, float f) {
        this.f80a = i;
        this.f81b = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f80a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f80a);
        sb.append(" rating=");
        float f = this.f81b;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f80a);
        parcel.writeFloat(this.f81b);
    }
}

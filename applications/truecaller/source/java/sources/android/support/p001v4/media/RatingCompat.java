package android.support.p001v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: android.support.v4.media.RatingCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat.class */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new C0007a();

    /* renamed from: a */
    public final int f20a;

    /* renamed from: b */
    public final float f21b;

    /* renamed from: android.support.v4.media.RatingCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/RatingCompat$a.class */
    public class C0007a implements Parcelable.Creator<RatingCompat> {
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
        this.f20a = i;
        this.f21b = f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f20a;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Rating:style=");
        m8728C.append(this.f20a);
        m8728C.append(" rating=");
        float f = this.f21b;
        m8728C.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f20a);
        parcel.writeFloat(this.f21b);
    }
}

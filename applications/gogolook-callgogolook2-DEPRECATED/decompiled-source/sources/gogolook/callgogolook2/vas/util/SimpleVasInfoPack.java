package gogolook.callgogolook2.vas.util;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.StringRes;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/util/SimpleVasInfoPack.class */
public class SimpleVasInfoPack implements Parcelable {
    public static final Parcelable.Creator<SimpleVasInfoPack> CREATOR = new C5268a();

    /* renamed from: a */
    public int f13007a;

    /* renamed from: b */
    public int f13008b;

    /* renamed from: c */
    public double f13009c;
    @StringRes

    /* renamed from: d */
    public int f13010d;

    /* renamed from: gogolook.callgogolook2.vas.util.SimpleVasInfoPack$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/util/SimpleVasInfoPack$a.class */
    public static final class C5268a implements Parcelable.Creator<SimpleVasInfoPack> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimpleVasInfoPack createFromParcel(Parcel parcel) {
            return new SimpleVasInfoPack(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SimpleVasInfoPack[] newArray(int i) {
            return new SimpleVasInfoPack[i];
        }
    }

    public SimpleVasInfoPack() {
        this.f13007a = 0;
        this.f13008b = 0;
        this.f13009c = 0.0d;
    }

    public SimpleVasInfoPack(Parcel parcel) {
        this.f13007a = 0;
        this.f13008b = 0;
        this.f13009c = 0.0d;
        this.f13007a = parcel.readInt();
        this.f13008b = parcel.readInt();
        this.f13009c = parcel.readDouble();
        this.f13010d = parcel.readInt();
    }

    /* renamed from: a */
    public String m25941a() {
        return C14017g4.m2835A() ? String.valueOf(this.f13009c).replace('.', ',') : String.valueOf(this.f13009c);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "SubscriptionType: " + this.f13007a + ", PromotionType: " + this.f13008b + ", Price: " + this.f13009c + ", Period: " + this.f13010d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13007a);
        parcel.writeInt(this.f13008b);
        parcel.writeDouble(this.f13009c);
        parcel.writeInt(this.f13010d);
    }
}

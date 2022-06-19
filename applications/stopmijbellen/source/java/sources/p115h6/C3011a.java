package p115h6;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: h6.a */
/* loaded from: classes-dex2jar.jar:h6/a.class */
public class C3011a implements Parcelable {
    public static final Parcelable.Creator<C3011a> CREATOR = new C3012a();

    /* renamed from: a */
    public final String f10107a;

    /* renamed from: b */
    public final AtomicLong f10108b;

    /* renamed from: h6.a$a */
    /* loaded from: classes-dex2jar.jar:h6/a$a.class */
    public class C3012a implements Parcelable.Creator<C3011a> {
        @Override // android.os.Parcelable.Creator
        public C3011a createFromParcel(Parcel parcel) {
            return new C3011a(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public C3011a[] newArray(int i) {
            return new C3011a[i];
        }
    }

    public C3011a(Parcel parcel, C3012a c3012a) {
        this.f10107a = parcel.readString();
        this.f10108b = new AtomicLong(parcel.readLong());
    }

    public C3011a(String str) {
        this.f10107a = str;
        this.f10108b = new AtomicLong(0L);
    }

    /* renamed from: a */
    public long m2748a() {
        return this.f10108b.get();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f10107a);
        parcel.writeLong(this.f10108b.get());
    }
}

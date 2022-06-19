package p180n6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.TimeUnit;
/* renamed from: n6.e */
/* loaded from: classes-dex2jar.jar:n6/e.class */
public class C3729e implements Parcelable {
    public static final Parcelable.Creator<C3729e> CREATOR = new C3730a();

    /* renamed from: a */
    public long f12119a;

    /* renamed from: b */
    public long f12120b;

    /* renamed from: n6.e$a */
    /* loaded from: classes-dex2jar.jar:n6/e$a.class */
    public class C3730a implements Parcelable.Creator<C3729e> {
        @Override // android.os.Parcelable.Creator
        public C3729e createFromParcel(Parcel parcel) {
            return new C3729e(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public C3729e[] newArray(int i) {
            return new C3729e[i];
        }
    }

    public C3729e() {
        this.f12119a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f12120b = System.nanoTime();
    }

    @VisibleForTesting
    public C3729e(long j) {
        this.f12119a = j;
        this.f12120b = TimeUnit.MICROSECONDS.toNanos(j);
    }

    public C3729e(Parcel parcel, C3730a c3730a) {
        this.f12119a = parcel.readLong();
        this.f12120b = parcel.readLong();
    }

    /* renamed from: a */
    public long m1840a() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.f12120b);
    }

    /* renamed from: b */
    public long m1839b(C3729e c3729e) {
        return TimeUnit.NANOSECONDS.toMicros(c3729e.f12120b - this.f12120b);
    }

    /* renamed from: c */
    public void m1838c() {
        this.f12119a = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.f12120b = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f12119a);
        parcel.writeLong(this.f12120b);
    }
}

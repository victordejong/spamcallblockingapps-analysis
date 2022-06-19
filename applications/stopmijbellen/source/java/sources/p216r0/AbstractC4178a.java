package p216r0;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: r0.a */
/* loaded from: classes-dex2jar.jar:r0/a.class */
public abstract class AbstractC4178a implements Parcelable {

    /* renamed from: a */
    public final Parcelable f13167a;

    /* renamed from: b */
    public static final AbstractC4178a f13166b = new C4179a();
    public static final Parcelable.Creator<AbstractC4178a> CREATOR = new C4180b();

    /* renamed from: r0.a$a */
    /* loaded from: classes-dex2jar.jar:r0/a$a.class */
    public class C4179a extends AbstractC4178a {
        public C4179a() {
            super((C4179a) null);
        }
    }

    /* renamed from: r0.a$b */
    /* loaded from: classes-dex2jar.jar:r0/a$b.class */
    public class C4180b implements Parcelable.ClassLoaderCreator<AbstractC4178a> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return AbstractC4178a.f13166b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public AbstractC4178a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbstractC4178a.f13166b;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new AbstractC4178a[i];
        }
    }

    public AbstractC4178a(Parcel parcel, ClassLoader classLoader) {
        AbstractC4178a readParcelable = parcel.readParcelable(classLoader);
        this.f13167a = readParcelable == null ? f13166b : readParcelable;
    }

    public AbstractC4178a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f13167a = parcelable == f13166b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbstractC4178a(C4179a c4179a) {
        this.f13167a = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f13167a, i);
    }
}

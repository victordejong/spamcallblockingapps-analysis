package androidx.p029d.p030a;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.d.a.a */
/* loaded from: classes-dex2jar.jar:androidx/d/a/a.class */
public abstract class AbstractC0633a implements Parcelable {

    /* renamed from: a */
    private final Parcelable f2203a;

    /* renamed from: c */
    public static final AbstractC0633a f2202c = new AbstractC0633a() { // from class: androidx.d.a.a.1
    };
    public static final Parcelable.Creator<AbstractC0633a> CREATOR = new Parcelable.ClassLoaderCreator<AbstractC0633a>() { // from class: androidx.d.a.a.2
        /* renamed from: a */
        public AbstractC0633a createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        /* renamed from: a */
        public AbstractC0633a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) != null) {
                throw new IllegalStateException("superState must be null");
            }
            return AbstractC0633a.f2202c;
        }

        /* renamed from: a */
        public AbstractC0633a[] newArray(int i) {
            return new AbstractC0633a[i];
        }
    };

    private AbstractC0633a() {
        this.f2203a = null;
    }

    public AbstractC0633a(Parcel parcel, ClassLoader classLoader) {
        AbstractC0633a readParcelable = parcel.readParcelable(classLoader);
        this.f2203a = readParcelable == null ? f2202c : readParcelable;
    }

    public AbstractC0633a(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f2203a = parcelable == f2202c ? null : parcelable;
    }

    /* renamed from: a */
    public final Parcelable m20121a() {
        return this.f2203a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2203a, i);
    }
}

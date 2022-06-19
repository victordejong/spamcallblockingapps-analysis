package p262v3;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* renamed from: v3.j */
/* loaded from: classes-dex2jar.jar:v3/j.class */
public class C4621j extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<C4621j> CREATOR = new C4622a();

    /* renamed from: v3.j$a */
    /* loaded from: classes-dex2jar.jar:v3/j$a.class */
    public static final class C4622a implements Parcelable.ClassLoaderCreator<C4621j> {
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new C4621j(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public C4621j createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C4621j(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new C4621j[i];
        }
    }

    public C4621j() {
    }

    public C4621j(Parcel parcel, ClassLoader classLoader) {
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        for (int i = 0; i < readInt; i++) {
            put(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = size();
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = keyAt(i2);
            parcelableArr[i2] = valueAt(i2);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}

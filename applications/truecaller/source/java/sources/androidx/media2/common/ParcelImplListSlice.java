package androidx.media2.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice.class */
public class ParcelImplListSlice implements Parcelable {
    public static final Parcelable.Creator<ParcelImplListSlice> CREATOR = new C0228b();

    /* renamed from: a */
    public final List<ParcelImpl> f934a;

    /* renamed from: androidx.media2.common.ParcelImplListSlice$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$a.class */
    public class BinderC0227a extends Binder {

        /* renamed from: a */
        public final /* synthetic */ int f935a;

        public BinderC0227a(int i) {
            ParcelImplListSlice.this = r4;
            this.f935a = i;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            int readInt = parcel.readInt();
            while (readInt < this.f935a && parcel2.dataSize() < 65536) {
                parcel2.writeInt(1);
                parcel2.writeParcelable(ParcelImplListSlice.this.f934a.get(readInt), i2);
                readInt++;
            }
            if (readInt >= this.f935a) {
                return true;
            }
            parcel2.writeInt(0);
            return true;
        }
    }

    /* renamed from: androidx.media2.common.ParcelImplListSlice$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$b.class */
    public class C0228b implements Parcelable.Creator<ParcelImplListSlice> {
        @Override // android.os.Parcelable.Creator
        public ParcelImplListSlice createFromParcel(Parcel parcel) {
            return new ParcelImplListSlice(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelImplListSlice[] newArray(int i) {
            return new ParcelImplListSlice[i];
        }
    }

    public ParcelImplListSlice(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f934a = new ArrayList(readInt);
        if (readInt <= 0) {
            return;
        }
        int i = 0;
        while (i < readInt && parcel.readInt() != 0) {
            this.f934a.add((ParcelImpl) parcel.readParcelable(ParcelImpl.class.getClassLoader()));
            i++;
        }
        if (i >= readInt) {
            return;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        while (i < readInt) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i);
                try {
                    readStrongBinder.transact(1, obtain, obtain2, 0);
                    while (i < readInt && obtain2.readInt() != 0) {
                        this.f934a.add((ParcelImpl) obtain2.readParcelable(ParcelImpl.class.getClassLoader()));
                        i++;
                    }
                } catch (RemoteException e) {
                    return;
                }
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public ParcelImplListSlice(List<ParcelImpl> list) {
        this.f934a = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f934a.size();
        parcel.writeInt(size);
        if (size > 0) {
            int i2 = 0;
            while (i2 < size && i2 < 1 && parcel.dataSize() < 65536) {
                parcel.writeInt(1);
                parcel.writeParcelable(this.f934a.get(i2), i);
                i2++;
            }
            if (i2 >= size) {
                return;
            }
            parcel.writeInt(0);
            parcel.writeStrongBinder(new BinderC0227a(size));
        }
    }
}

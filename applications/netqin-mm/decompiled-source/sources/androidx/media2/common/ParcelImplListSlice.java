package androidx.media2.common;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice.class */
public class ParcelImplListSlice implements Parcelable {
    public static final Parcelable.Creator<ParcelImplListSlice> CREATOR = new C0276b();

    /* renamed from: a */
    public final List<ParcelImpl> f1530a;

    /* renamed from: androidx.media2.common.ParcelImplListSlice$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$a.class */
    public class BinderC0275a extends Binder {

        /* renamed from: a */
        public final /* synthetic */ int f1531a;

        public BinderC0275a(int i) {
            this.f1531a = i;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            int readInt = parcel.readInt();
            while (readInt < this.f1531a && parcel2.dataSize() < 65536) {
                parcel2.writeInt(1);
                parcel2.writeParcelable(ParcelImplListSlice.this.f1530a.get(readInt), i2);
                readInt++;
            }
            if (readInt >= this.f1531a) {
                return true;
            }
            parcel2.writeInt(0);
            return true;
        }
    }

    /* renamed from: androidx.media2.common.ParcelImplListSlice$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$b.class */
    public static final class C0276b implements Parcelable.Creator<ParcelImplListSlice> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImplListSlice createFromParcel(Parcel parcel) {
            return new ParcelImplListSlice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelImplListSlice[] newArray(int i) {
            return new ParcelImplListSlice[i];
        }
    }

    public ParcelImplListSlice(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1530a = new ArrayList(readInt);
        if (readInt > 0) {
            int i = 0;
            while (i < readInt && parcel.readInt() != 0) {
                this.f1530a.add((ParcelImpl) parcel.readParcelable(ParcelImpl.class.getClassLoader()));
                i++;
            }
            if (i < readInt) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                while (i < readInt) {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    obtain.writeInt(i);
                    try {
                        readStrongBinder.transact(1, obtain, obtain2, 0);
                        while (i < readInt && obtain2.readInt() != 0) {
                            this.f1530a.add((ParcelImpl) obtain2.readParcelable(ParcelImpl.class.getClassLoader()));
                            i++;
                        }
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (RemoteException e) {
                        Log.w("ParcelImplListSlice", "Failure retrieving array; only received " + i + " of " + readInt, e);
                        return;
                    }
                }
            }
        }
    }

    public ParcelImplListSlice(List<ParcelImpl> list) {
        if (list != null) {
            this.f1530a = list;
            return;
        }
        throw new NullPointerException("list shouldn't be null");
    }

    /* renamed from: a */
    public List<ParcelImpl> m38220a() {
        return this.f1530a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f1530a.size();
        parcel.writeInt(size);
        if (size > 0) {
            int i2 = 0;
            while (i2 < size && parcel.dataSize() < 65536) {
                parcel.writeInt(1);
                parcel.writeParcelable(this.f1530a.get(i2), i);
                i2++;
            }
            if (i2 < size) {
                parcel.writeInt(0);
                parcel.writeStrongBinder(new BinderC0275a(size));
            }
        }
    }
}

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
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice.class */
public class ParcelImplListSlice implements Parcelable {
    public static final Parcelable.Creator<ParcelImplListSlice> CREATOR = new Parcelable.Creator<ParcelImplListSlice>() { // from class: androidx.media2.common.ParcelImplListSlice.2
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ParcelImplListSlice createFromParcel(Parcel parcel) {
            return new ParcelImplListSlice(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ParcelImplListSlice[] newArray(int i) {
            return new ParcelImplListSlice[i];
        }
    };
    private static final boolean DEBUG = false;
    private static final int INLINE_COUNT_LIMIT = 1;
    private static final int MAX_IPC_SIZE = 65536;
    private static final String TAG = "ParcelImplListSlice";
    final List<ParcelImpl> mList;

    ParcelImplListSlice(Parcel parcel) {
        int readInt = parcel.readInt();
        this.mList = new ArrayList(readInt);
        if (readInt > 0) {
            int i = 0;
            while (i < readInt && parcel.readInt() != 0) {
                this.mList.add((ParcelImpl) parcel.readParcelable(ParcelImpl.class.getClassLoader()));
                i++;
            }
            if (i < readInt) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                while (i < readInt) {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInt(i);
                        readStrongBinder.transact(1, obtain, obtain2, 0);
                        while (i < readInt && obtain2.readInt() != 0) {
                            this.mList.add((ParcelImpl) obtain2.readParcelable(ParcelImpl.class.getClassLoader()));
                            i++;
                        }
                    } catch (RemoteException e) {
                        Log.w(TAG, "Failure retrieving array; only received " + i + " of " + readInt, e);
                        return;
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }
            }
        }
    }

    public ParcelImplListSlice(List<ParcelImpl> list) {
        Objects.requireNonNull(list, "list shouldn't be null");
        this.mList = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<ParcelImpl> getList() {
        return this.mList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        final int size = this.mList.size();
        parcel.writeInt(size);
        if (size > 0) {
            int i2 = 0;
            while (i2 < size && i2 <= 0 && parcel.dataSize() < MAX_IPC_SIZE) {
                parcel.writeInt(1);
                parcel.writeParcelable(this.mList.get(0), i);
                i2++;
            }
            if (i2 < size) {
                parcel.writeInt(0);
                parcel.writeStrongBinder(new Binder() { // from class: androidx.media2.common.ParcelImplListSlice.1
                    @Override // android.os.Binder
                    protected final boolean onTransact(int i3, Parcel parcel2, Parcel parcel3, int i4) throws RemoteException {
                        if (i3 != 1) {
                            return super.onTransact(i3, parcel2, parcel3, i4);
                        }
                        int readInt = parcel2.readInt();
                        while (readInt < size && parcel3.dataSize() < ParcelImplListSlice.MAX_IPC_SIZE) {
                            parcel3.writeInt(1);
                            parcel3.writeParcelable(ParcelImplListSlice.this.mList.get(readInt), i4);
                            readInt++;
                        }
                        if (readInt >= size) {
                            return true;
                        }
                        parcel3.writeInt(0);
                        return true;
                    }
                });
            }
        }
    }
}

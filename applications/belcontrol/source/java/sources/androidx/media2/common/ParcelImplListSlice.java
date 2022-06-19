package androidx.media2.common;

import android.annotation.SuppressLint;
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
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice.class */
public class ParcelImplListSlice implements Parcelable {
    public static final Parcelable.Creator<ParcelImplListSlice> CREATOR = new C0147b();

    /* renamed from: a */
    public final List<ParcelImpl> f1101a;

    /* renamed from: androidx.media2.common.ParcelImplListSlice$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$a.class */
    public class BinderC0146a extends Binder {

        /* renamed from: a */
        public final /* synthetic */ int f1102a;

        public BinderC0146a(int i) {
            ParcelImplListSlice.this = r4;
            this.f1102a = i;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            int readInt = parcel.readInt();
            while (readInt < this.f1102a && parcel2.dataSize() < 65536) {
                parcel2.writeInt(1);
                parcel2.writeParcelable(ParcelImplListSlice.this.f1101a.get(readInt), i2);
                readInt++;
            }
            if (readInt >= this.f1102a) {
                return true;
            }
            parcel2.writeInt(0);
            return true;
        }
    }

    /* renamed from: androidx.media2.common.ParcelImplListSlice$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/ParcelImplListSlice$b.class */
    public static final class C0147b implements Parcelable.Creator<ParcelImplListSlice> {
        /* renamed from: a */
        public ParcelImplListSlice createFromParcel(Parcel parcel) {
            return new ParcelImplListSlice(parcel);
        }

        /* renamed from: b */
        public ParcelImplListSlice[] newArray(int i) {
            return new ParcelImplListSlice[i];
        }
    }

    public ParcelImplListSlice(Parcel parcel) {
        int readInt = parcel.readInt();
        this.f1101a = new ArrayList(readInt);
        if (readInt <= 0) {
            return;
        }
        int i = 0;
        while (i < readInt && parcel.readInt() != 0) {
            this.f1101a.add((ParcelImpl) parcel.readParcelable(ParcelImpl.class.getClassLoader()));
            i++;
        }
        if (i >= readInt) {
            return;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        while (i < readInt) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInt(i);
            try {
                readStrongBinder.transact(1, obtain, obtain2, 0);
                while (i < readInt && obtain2.readInt() != 0) {
                    this.f1101a.add((ParcelImpl) obtain2.readParcelable(ParcelImpl.class.getClassLoader()));
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

    public ParcelImplListSlice(List<ParcelImpl> list) {
        Objects.requireNonNull(list, "list shouldn't be null");
        this.f1101a = list;
    }

    /* renamed from: a */
    public List<ParcelImpl> m6518a() {
        return this.f1101a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.f1101a.size();
        parcel.writeInt(size);
        if (size > 0) {
            int i2 = 0;
            while (i2 < size && parcel.dataSize() < 65536) {
                parcel.writeInt(1);
                parcel.writeParcelable(this.f1101a.get(i2), i);
                i2++;
            }
            if (i2 >= size) {
                return;
            }
            parcel.writeInt(0);
            parcel.writeStrongBinder(new BinderC0146a(size));
        }
    }
}

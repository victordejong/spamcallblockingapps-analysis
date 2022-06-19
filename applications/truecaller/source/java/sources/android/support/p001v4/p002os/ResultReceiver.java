package android.support.p001v4.p002os;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p1719m3.p1720a.p1722b.p1726c.AbstractC25363a;
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new C0015a();

    /* renamed from: a */
    public AbstractC25363a f59a;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    public class C0015a implements Parcelable.Creator<ResultReceiver> {
        @Override // android.os.Parcelable.Creator
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }

    public ResultReceiver(Parcel parcel) {
        AbstractC25363a.AbstractBinderC25364a.C25365a c25365a;
        IBinder readStrongBinder = parcel.readStrongBinder();
        int i = AbstractC25363a.AbstractBinderC25364a.f70776a;
        if (readStrongBinder == null) {
            c25365a = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            c25365a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC25363a)) ? new AbstractC25363a.AbstractBinderC25364a.C25365a(readStrongBinder) : (AbstractC25363a) queryLocalInterface;
        }
        this.f59a = c25365a;
    }

    /* renamed from: a */
    public void mo43176a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f59a == null) {
                this.f59a = new b(this);
            }
            parcel.writeStrongBinder(this.f59a.asBinder());
        }
    }
}

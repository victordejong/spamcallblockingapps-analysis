package p014b;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p014b.AbstractC0707a;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: b.b */
/* loaded from: classes-dex2jar.jar:b/b.class */
public class C0710b implements Parcelable {
    public static final Parcelable.Creator<C0710b> CREATOR = new C0711a();

    /* renamed from: a */
    public AbstractC0707a f2747a;

    /* renamed from: b.b$a */
    /* loaded from: classes-dex2jar.jar:b/b$a.class */
    public class C0711a implements Parcelable.Creator<C0710b> {
        @Override // android.os.Parcelable.Creator
        public C0710b createFromParcel(Parcel parcel) {
            return new C0710b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public C0710b[] newArray(int i) {
            return new C0710b[i];
        }
    }

    /* renamed from: b.b$b */
    /* loaded from: classes-dex2jar.jar:b/b$b.class */
    public class BinderC0712b extends AbstractC0707a.AbstractBinderC0708a {
        public BinderC0712b() {
            C0710b.this = r4;
        }
    }

    public C0710b(Parcel parcel) {
        AbstractC0707a.AbstractBinderC0708a.C0709a c0709a;
        IBinder readStrongBinder = parcel.readStrongBinder();
        int i = AbstractC0707a.AbstractBinderC0708a.f2745a;
        if (readStrongBinder == null) {
            c0709a = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            c0709a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0707a)) ? new AbstractC0707a.AbstractBinderC0708a.C0709a(readStrongBinder) : (AbstractC0707a) queryLocalInterface;
        }
        this.f2747a = c0709a;
    }

    /* renamed from: a */
    public void mo7445a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f2747a == null) {
                this.f2747a = new BinderC0712b();
            }
            parcel.writeStrongBinder(this.f2747a.asBinder());
        }
    }
}

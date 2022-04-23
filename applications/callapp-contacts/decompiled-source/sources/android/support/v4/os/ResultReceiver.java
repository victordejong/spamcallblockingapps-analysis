package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.a;
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    };
    final Handler mHandler;
    final boolean mLocal;
    android.support.v4.os.a mReceiver;

    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    final class a extends a.AbstractBinderC0012a {
        a() {
        }

        @Override // android.support.v4.os.a
        public final void a(int i, Bundle bundle) {
            if (ResultReceiver.this.mHandler != null) {
                ResultReceiver.this.mHandler.post(new b(i, bundle));
            } else {
                ResultReceiver.this.onReceiveResult(i, bundle);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f483a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f484b;

        b(int i, Bundle bundle) {
            this.f483a = i;
            this.f484b = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ResultReceiver.this.onReceiveResult(this.f483a, this.f484b);
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = a.AbstractBinderC0012a.a(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void onReceiveResult(int i, Bundle bundle) {
    }

    public void send(int i, Bundle bundle) {
        if (this.mLocal) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new b(i, bundle));
            } else {
                onReceiveResult(i, bundle);
            }
        } else {
            android.support.v4.os.a aVar = this.mReceiver;
            if (aVar != null) {
                try {
                    aVar.a(i, bundle);
                } catch (RemoteException e) {
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new a();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }
}

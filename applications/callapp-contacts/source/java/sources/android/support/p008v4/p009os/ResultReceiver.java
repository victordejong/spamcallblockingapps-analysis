package android.support.p008v4.p009os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p008v4.p009os.AbstractC0094a;
/* renamed from: android.support.v4.os.ResultReceiver */
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
    AbstractC0094a mReceiver;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    final class BinderC0092a extends AbstractC0094a.AbstractBinderC0095a {
        BinderC0092a() {
            ResultReceiver.this = r4;
        }

        @Override // android.support.p008v4.p009os.AbstractC0094a
        /* renamed from: a */
        public final void mo46412a(int i, Bundle bundle) {
            if (ResultReceiver.this.mHandler != null) {
                ResultReceiver.this.mHandler.post(new RunnableC0093b(i, bundle));
            } else {
                ResultReceiver.this.onReceiveResult(i, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.os.ResultReceiver$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    public final class RunnableC0093b implements Runnable {

        /* renamed from: a */
        final int f189a;

        /* renamed from: b */
        final Bundle f190b;

        RunnableC0093b(int i, Bundle bundle) {
            ResultReceiver.this = r4;
            this.f189a = i;
            this.f190b = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ResultReceiver.this.onReceiveResult(this.f189a, this.f190b);
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = AbstractC0094a.AbstractBinderC0095a.m46413a(parcel.readStrongBinder());
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
                handler.post(new RunnableC0093b(i, bundle));
                return;
            } else {
                onReceiveResult(i, bundle);
                return;
            }
        }
        AbstractC0094a abstractC0094a = this.mReceiver;
        if (abstractC0094a == null) {
            return;
        }
        try {
            abstractC0094a.mo46412a(i, bundle);
        } catch (RemoteException e) {
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new BinderC0092a();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }
}

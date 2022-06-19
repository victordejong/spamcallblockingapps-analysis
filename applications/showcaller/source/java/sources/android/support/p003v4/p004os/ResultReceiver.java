package android.support.p003v4.p004os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p003v4.p004os.AbstractC0074a;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new C0071a();

    /* renamed from: d */
    final boolean f130d = false;

    /* renamed from: e */
    final Handler f131e = null;

    /* renamed from: f */
    AbstractC0074a f132f;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    class C0071a implements Parcelable.Creator<ResultReceiver> {
        C0071a() {
        }

        /* renamed from: a */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        /* renamed from: b */
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    }

    /* renamed from: android.support.v4.os.ResultReceiver$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    class BinderC0072b extends AbstractC0074a.AbstractBinderC0075a {
        BinderC0072b() {
            ResultReceiver.this = r4;
        }

        @Override // android.support.p003v4.p004os.AbstractC0074a
        /* renamed from: z6 */
        public void mo35766z6(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f131e;
            if (handler != null) {
                handler.post(new RunnableC0073c(i, bundle));
            } else {
                resultReceiver.mo35772a(i, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.os.ResultReceiver$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$c.class */
    public class RunnableC0073c implements Runnable {

        /* renamed from: d */
        final int f134d;

        /* renamed from: e */
        final Bundle f135e;

        RunnableC0073c(int i, Bundle bundle) {
            ResultReceiver.this = r4;
            this.f134d = i;
            this.f135e = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.mo35772a(this.f134d, this.f135e);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f132f = AbstractC0074a.AbstractBinderC0075a.m35767c0(parcel.readStrongBinder());
    }

    /* renamed from: a */
    protected void mo35772a(int i, Bundle bundle) {
    }

    /* renamed from: b */
    public void m35771b(int i, Bundle bundle) {
        if (this.f130d) {
            Handler handler = this.f131e;
            if (handler != null) {
                handler.post(new RunnableC0073c(i, bundle));
                return;
            } else {
                mo35772a(i, bundle);
                return;
            }
        }
        AbstractC0074a abstractC0074a = this.f132f;
        if (abstractC0074a == null) {
            return;
        }
        try {
            abstractC0074a.mo35766z6(i, bundle);
        } catch (RemoteException e) {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f132f == null) {
                this.f132f = new BinderC0072b();
            }
            parcel.writeStrongBinder(this.f132f.asBinder());
        }
    }
}

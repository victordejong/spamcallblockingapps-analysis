package android.support.p001v4.p002os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.p001v4.p002os.AbstractC0066a;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.os.ResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver.class */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new C0064a();

    /* renamed from: b */
    final boolean f116b = false;

    /* renamed from: c */
    final Handler f117c = null;

    /* renamed from: d */
    AbstractC0066a f118d;

    /* renamed from: android.support.v4.os.ResultReceiver$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    class C0064a implements Parcelable.Creator<ResultReceiver> {
        C0064a() {
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

    /* renamed from: android.support.v4.os.ResultReceiver$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$c.class */
    class RunnableC0065c implements Runnable {

        /* renamed from: b */
        final int f119b;

        /* renamed from: c */
        final Bundle f120c;

        RunnableC0065c(int i, Bundle bundle) {
            ResultReceiver.this = r4;
            this.f119b = i;
            this.f120c = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.m15016a(this.f119b, this.f120c);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.f118d = AbstractC0066a.a.h0(parcel.readStrongBinder());
    }

    /* renamed from: a */
    protected void m15016a(int i, Bundle bundle) {
    }

    /* renamed from: b */
    public void m15015b(int i, Bundle bundle) {
        if (this.f116b) {
            Handler handler = this.f117c;
            if (handler != null) {
                handler.post(new RunnableC0065c(i, bundle));
                return;
            } else {
                m15016a(i, bundle);
                return;
            }
        }
        AbstractC0066a abstractC0066a = this.f118d;
        if (abstractC0066a == null) {
            return;
        }
        try {
            abstractC0066a.m15012m6(i, bundle);
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
            if (this.f118d == null) {
                this.f118d = new b(this);
            }
            parcel.writeStrongBinder(this.f118d.asBinder());
        }
    }
}

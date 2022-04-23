package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
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

    /* renamed from: a  reason: collision with root package name */
    final boolean f175a = false;

    /* renamed from: b  reason: collision with root package name */
    final Handler f176b = null;
    android.support.v4.os.a c;

    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$a.class */
    final class a extends a.AbstractBinderC0009a {
        a() {
        }

        @Override // android.support.v4.os.a
        public final void a(int i, Bundle bundle) {
            if (ResultReceiver.this.f176b != null) {
                ResultReceiver.this.f176b.post(new b(i, bundle));
            } else {
                ResultReceiver.this.a(i, bundle);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/os/ResultReceiver$b.class */
    final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f178a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f179b;

        b(int i, Bundle bundle) {
            this.f178a = i;
            this.f179b = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ResultReceiver.this.a(this.f178a, this.f179b);
        }
    }

    ResultReceiver(Parcel parcel) {
        this.c = a.AbstractBinderC0009a.a(parcel.readStrongBinder());
    }

    public void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.c == null) {
                this.c = new a();
            }
            parcel.writeStrongBinder(this.c.asBinder());
        }
    }
}

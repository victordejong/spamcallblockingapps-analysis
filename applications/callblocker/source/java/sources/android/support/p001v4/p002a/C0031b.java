package android.support.p001v4.p002a;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.p002a.AbstractC0028a;
@SuppressLint({"BanParcelableUsage"})
/* renamed from: android.support.v4.a.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/a/b.class */
public class C0031b implements Parcelable {
    public static final Parcelable.Creator<C0031b> CREATOR = new Parcelable.Creator<C0031b>() { // from class: android.support.v4.a.b.1
        /* renamed from: a */
        public C0031b createFromParcel(Parcel parcel) {
            return new C0031b(parcel);
        }

        /* renamed from: a */
        public C0031b[] newArray(int i) {
            return new C0031b[i];
        }
    };

    /* renamed from: a */
    final boolean f61a = false;

    /* renamed from: b */
    final Handler f62b = null;

    /* renamed from: c */
    AbstractC0028a f63c;

    /* renamed from: android.support.v4.a.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/a/b$a.class */
    class BinderC0033a extends AbstractC0028a.AbstractBinderC0029a {
        BinderC0033a() {
            C0031b.this = r4;
        }

        @Override // android.support.p001v4.p002a.AbstractC0028a
        /* renamed from: a */
        public void mo22442a(int i, Bundle bundle) {
            if (C0031b.this.f62b != null) {
                C0031b.this.f62b.post(new RunnableC0034b(i, bundle));
            } else {
                C0031b.this.mo22439a(i, bundle);
            }
        }
    }

    /* renamed from: android.support.v4.a.b$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/a/b$b.class */
    class RunnableC0034b implements Runnable {

        /* renamed from: a */
        final int f65a;

        /* renamed from: b */
        final Bundle f66b;

        RunnableC0034b(int i, Bundle bundle) {
            C0031b.this = r4;
            this.f65a = i;
            this.f66b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0031b.this.mo22439a(this.f65a, this.f66b);
        }
    }

    C0031b(Parcel parcel) {
        this.f63c = AbstractC0028a.AbstractBinderC0029a.m22445a(parcel.readStrongBinder());
    }

    /* renamed from: a */
    protected void mo22439a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f63c == null) {
                this.f63c = new BinderC0033a();
            }
            parcel.writeStrongBinder(this.f63c.asBinder());
        }
    }
}

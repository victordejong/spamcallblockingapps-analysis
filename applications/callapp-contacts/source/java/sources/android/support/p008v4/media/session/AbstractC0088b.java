package android.support.p008v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.p008v4.media.MediaDescriptionCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.RatingCompat;
import android.support.p008v4.media.session.AbstractC0085a;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;
/* renamed from: android.support.v4.media.session.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b.class */
public interface AbstractC0088b extends IInterface {

    /* renamed from: android.support.v4.media.session.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a.class */
    public static abstract class AbstractBinderC0089a extends Binder implements AbstractC0088b {

        /* renamed from: android.support.v4.media.session.b$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a$a.class */
        public static final class C0090a implements AbstractC0088b {

            /* renamed from: a */
            public static AbstractC0088b f186a;

            /* renamed from: b */
            private IBinder f187b;

            C0090a(IBinder iBinder) {
                this.f187b = iBinder;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46464a(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeFloat(f);
                    if (this.f187b.transact(49, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46464a(f);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46463a(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f187b.transact(44, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46463a(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46462a(int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f187b.transact(11, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46462a(i, i2, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46461a(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    if (this.f187b.transact(17, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46461a(j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46460a(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(36, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46460a(uri, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46459a(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(41, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46459a(mediaDescriptionCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46458a(MediaDescriptionCompat mediaDescriptionCompat, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (this.f187b.transact(42, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46458a(mediaDescriptionCompat, i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46457a(RatingCompat ratingCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(25, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46457a(ratingCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46456a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (ratingCompat != null) {
                        obtain.writeInt(1);
                        ratingCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(51, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46456a(ratingCompat, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46455a(AbstractC0085a abstractC0085a) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC0085a != null ? abstractC0085a.asBinder() : null);
                    if (this.f187b.transact(3, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46455a(abstractC0085a);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46453a(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(34, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46453a(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46452a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (resultReceiverWrapper != null) {
                        obtain.writeInt(1);
                        resultReceiverWrapper.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(1, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46452a(str, bundle, resultReceiverWrapper);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final void mo46451a(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f187b.transact(46, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46451a(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46465a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f187b.transact(5, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46465a();
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: a */
            public final boolean mo46454a(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = true;
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f187b.transact(2, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46454a(keyEvent);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f187b;
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final String mo46450b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(6, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46450b();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46449b(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f187b.transact(39, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46449b(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46448b(int i, int i2, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    if (this.f187b.transact(12, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46448b(i, i2, str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46447b(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    if (this.f187b.transact(24, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46447b(j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46446b(Uri uri, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(16, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46446b(uri, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46445b(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (mediaDescriptionCompat != null) {
                        obtain.writeInt(1);
                        mediaDescriptionCompat.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(43, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46445b(mediaDescriptionCompat);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46444b(AbstractC0085a abstractC0085a) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC0085a != null ? abstractC0085a.asBinder() : null);
                    if (this.f187b.transact(4, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46444b(abstractC0085a);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46443b(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(35, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46443b(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: b */
            public final void mo46442b(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f187b.transact(40, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46442b(z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final String mo46441c() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(7, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46441c();
                    }
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46440c(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    if (this.f187b.transact(48, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46440c(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: c */
            public final void mo46439c(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(14, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46439c(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final PendingIntent mo46438d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(8, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46438d();
                    }
                    obtain2.readException();
                    PendingIntent pendingIntent = obtain2.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return pendingIntent;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: d */
            public final void mo46437d(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(15, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46437d(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final long mo46436e() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(9, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46436e();
                    }
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: e */
            public final void mo46435e(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f187b.transact(26, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46435e(str, bundle);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: f */
            public final ParcelableVolumeInfo mo46434f() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(10, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46434f();
                    }
                    obtain2.readException();
                    ParcelableVolumeInfo createFromParcel = obtain2.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: g */
            public final MediaMetadataCompat mo46433g() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(27, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46433g();
                    }
                    obtain2.readException();
                    MediaMetadataCompat createFromParcel = obtain2.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: h */
            public final PlaybackStateCompat mo46432h() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(28, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46432h();
                    }
                    obtain2.readException();
                    PlaybackStateCompat createFromParcel = obtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: i */
            public final List<MediaSessionCompat.QueueItem> mo46431i() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(29, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46431i();
                    }
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: j */
            public final CharSequence mo46430j() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(30, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46430j();
                    }
                    obtain2.readException();
                    CharSequence charSequence = obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return charSequence;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: k */
            public final Bundle mo46429k() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(31, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46429k();
                    }
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: l */
            public final int mo46428l() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(32, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46428l();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: m */
            public final boolean mo46427m() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f187b.transact(45, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46427m();
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: n */
            public final int mo46426n() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(37, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46426n();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: o */
            public final boolean mo46425o() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    if (!this.f187b.transact(38, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46425o();
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: p */
            public final int mo46424p() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(47, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46424p();
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: q */
            public final Bundle mo46423q() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (!this.f187b.transact(50, obtain, obtain2, 0) && AbstractBinderC0089a.m46466z() != null) {
                        return AbstractBinderC0089a.m46466z().mo46423q();
                    }
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: r */
            public final void mo46422r() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(33, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46422r();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: s */
            public final void mo46421s() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(13, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46421s();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: t */
            public final void mo46420t() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(18, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46420t();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: u */
            public final void mo46419u() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(19, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46419u();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: v */
            public final void mo46418v() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(20, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46418v();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: w */
            public final void mo46417w() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(21, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46417w();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: x */
            public final void mo46416x() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(22, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46416x();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0088b
            /* renamed from: y */
            public final void mo46415y() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (this.f187b.transact(23, obtain, obtain2, 0) || AbstractBinderC0089a.m46466z() == null) {
                        obtain2.readException();
                    } else {
                        AbstractBinderC0089a.m46466z().mo46415y();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0089a() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        /* renamed from: a */
        public static AbstractC0088b m46467a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0088b)) ? new C0090a(iBinder) : (AbstractC0088b) queryLocalInterface;
        }

        /* renamed from: z */
        public static AbstractC0088b m46466z() {
            return C0090a.f186a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            boolean z = false;
            Bundle bundle = null;
            MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString = parcel.readString();
                    Bundle bundle2 = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    if (parcel.readInt() != 0) {
                        resultReceiverWrapper = MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
                    }
                    mo46452a(readString, bundle2, resultReceiverWrapper);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    KeyEvent keyEvent = null;
                    if (parcel.readInt() != 0) {
                        keyEvent = (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel);
                    }
                    boolean a = mo46454a(keyEvent);
                    parcel2.writeNoException();
                    parcel2.writeInt(a ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46455a(AbstractC0085a.AbstractBinderC0086a.m46482a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46444b(AbstractC0085a.AbstractBinderC0086a.m46482a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean a2 = mo46465a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a2 ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String b = mo46450b();
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String c = mo46441c();
                    parcel2.writeNoException();
                    parcel2.writeString(c);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    PendingIntent d = mo46438d();
                    parcel2.writeNoException();
                    if (d == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    d.writeToParcel(parcel2, 1);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    long e = mo46436e();
                    parcel2.writeNoException();
                    parcel2.writeLong(e);
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    ParcelableVolumeInfo f = mo46434f();
                    parcel2.writeNoException();
                    if (f == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    f.writeToParcel(parcel2, 1);
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46462a(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46448b(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46421s();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString2 = parcel.readString();
                    Bundle bundle3 = null;
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46439c(readString2, bundle3);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString3 = parcel.readString();
                    Bundle bundle4 = null;
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46437d(readString3, bundle4);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle5 = null;
                    if (parcel.readInt() != 0) {
                        bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46446b(uri, bundle5);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46461a(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46420t();
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46419u();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46418v();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46417w();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46416x();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46415y();
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46447b(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    RatingCompat ratingCompat = null;
                    if (parcel.readInt() != 0) {
                        ratingCompat = RatingCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46457a(ratingCompat);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString4 = parcel.readString();
                    Bundle bundle6 = null;
                    if (parcel.readInt() != 0) {
                        bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46435e(readString4, bundle6);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    MediaMetadataCompat g = mo46433g();
                    parcel2.writeNoException();
                    if (g == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    g.writeToParcel(parcel2, 1);
                    return true;
                case 28:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    PlaybackStateCompat h = mo46432h();
                    parcel2.writeNoException();
                    if (h == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    h.writeToParcel(parcel2, 1);
                    return true;
                case 29:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    List<MediaSessionCompat.QueueItem> i3 = mo46431i();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(i3);
                    return true;
                case 30:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    CharSequence j = mo46430j();
                    parcel2.writeNoException();
                    if (j == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    TextUtils.writeToParcel(j, parcel2, 1);
                    return true;
                case 31:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Bundle k = mo46429k();
                    parcel2.writeNoException();
                    if (k == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    k.writeToParcel(parcel2, 1);
                    return true;
                case 32:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int l = mo46428l();
                    parcel2.writeNoException();
                    parcel2.writeInt(l);
                    return true;
                case 33:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46422r();
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString5 = parcel.readString();
                    Bundle bundle7 = null;
                    if (parcel.readInt() != 0) {
                        bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46453a(readString5, bundle7);
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String readString6 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46443b(readString6, bundle);
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle8 = null;
                    if (parcel.readInt() != 0) {
                        bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46460a(uri2, bundle8);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int n = mo46426n();
                    parcel2.writeNoException();
                    parcel2.writeInt(n);
                    return true;
                case 38:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean o = mo46425o();
                    parcel2.writeNoException();
                    parcel2.writeInt(o ? 1 : 0);
                    return true;
                case 39:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46449b(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean z2 = false;
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    mo46442b(z2);
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    MediaDescriptionCompat mediaDescriptionCompat = null;
                    if (parcel.readInt() != 0) {
                        mediaDescriptionCompat = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46459a(mediaDescriptionCompat);
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    MediaDescriptionCompat mediaDescriptionCompat2 = null;
                    if (parcel.readInt() != 0) {
                        mediaDescriptionCompat2 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46458a(mediaDescriptionCompat2, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    MediaDescriptionCompat mediaDescriptionCompat3 = null;
                    if (parcel.readInt() != 0) {
                        mediaDescriptionCompat3 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
                    }
                    mo46445b(mediaDescriptionCompat3);
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46463a(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean m = mo46427m();
                    parcel2.writeNoException();
                    parcel2.writeInt(m ? 1 : 0);
                    return true;
                case 46:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    mo46451a(z);
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int p = mo46424p();
                    parcel2.writeNoException();
                    parcel2.writeInt(p);
                    return true;
                case 48:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46440c(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo46464a(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Bundle q = mo46423q();
                    parcel2.writeNoException();
                    if (q == null) {
                        parcel2.writeInt(0);
                        return true;
                    }
                    parcel2.writeInt(1);
                    q.writeToParcel(parcel2, 1);
                    return true;
                case 51:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    RatingCompat createFromParcel = parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null;
                    Bundle bundle9 = null;
                    if (parcel.readInt() != 0) {
                        bundle9 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    mo46456a(createFromParcel, bundle9);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: a */
    void mo46464a(float f) throws RemoteException;

    /* renamed from: a */
    void mo46463a(int i) throws RemoteException;

    /* renamed from: a */
    void mo46462a(int i, int i2, String str) throws RemoteException;

    /* renamed from: a */
    void mo46461a(long j) throws RemoteException;

    /* renamed from: a */
    void mo46460a(Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo46459a(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    /* renamed from: a */
    void mo46458a(MediaDescriptionCompat mediaDescriptionCompat, int i) throws RemoteException;

    /* renamed from: a */
    void mo46457a(RatingCompat ratingCompat) throws RemoteException;

    /* renamed from: a */
    void mo46456a(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo46455a(AbstractC0085a abstractC0085a) throws RemoteException;

    /* renamed from: a */
    void mo46453a(String str, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo46452a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    /* renamed from: a */
    void mo46451a(boolean z) throws RemoteException;

    /* renamed from: a */
    boolean mo46465a() throws RemoteException;

    /* renamed from: a */
    boolean mo46454a(KeyEvent keyEvent) throws RemoteException;

    /* renamed from: b */
    String mo46450b() throws RemoteException;

    /* renamed from: b */
    void mo46449b(int i) throws RemoteException;

    /* renamed from: b */
    void mo46448b(int i, int i2, String str) throws RemoteException;

    /* renamed from: b */
    void mo46447b(long j) throws RemoteException;

    /* renamed from: b */
    void mo46446b(Uri uri, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    void mo46445b(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    /* renamed from: b */
    void mo46444b(AbstractC0085a abstractC0085a) throws RemoteException;

    /* renamed from: b */
    void mo46443b(String str, Bundle bundle) throws RemoteException;

    /* renamed from: b */
    void mo46442b(boolean z) throws RemoteException;

    /* renamed from: c */
    String mo46441c() throws RemoteException;

    /* renamed from: c */
    void mo46440c(int i) throws RemoteException;

    /* renamed from: c */
    void mo46439c(String str, Bundle bundle) throws RemoteException;

    /* renamed from: d */
    PendingIntent mo46438d() throws RemoteException;

    /* renamed from: d */
    void mo46437d(String str, Bundle bundle) throws RemoteException;

    /* renamed from: e */
    long mo46436e() throws RemoteException;

    /* renamed from: e */
    void mo46435e(String str, Bundle bundle) throws RemoteException;

    /* renamed from: f */
    ParcelableVolumeInfo mo46434f() throws RemoteException;

    /* renamed from: g */
    MediaMetadataCompat mo46433g() throws RemoteException;

    /* renamed from: h */
    PlaybackStateCompat mo46432h() throws RemoteException;

    /* renamed from: i */
    List<MediaSessionCompat.QueueItem> mo46431i() throws RemoteException;

    /* renamed from: j */
    CharSequence mo46430j() throws RemoteException;

    /* renamed from: k */
    Bundle mo46429k() throws RemoteException;

    /* renamed from: l */
    int mo46428l() throws RemoteException;

    /* renamed from: m */
    boolean mo46427m() throws RemoteException;

    /* renamed from: n */
    int mo46426n() throws RemoteException;

    /* renamed from: o */
    boolean mo46425o() throws RemoteException;

    /* renamed from: p */
    int mo46424p() throws RemoteException;

    /* renamed from: q */
    Bundle mo46423q() throws RemoteException;

    /* renamed from: r */
    void mo46422r() throws RemoteException;

    /* renamed from: s */
    void mo46421s() throws RemoteException;

    /* renamed from: t */
    void mo46420t() throws RemoteException;

    /* renamed from: u */
    void mo46419u() throws RemoteException;

    /* renamed from: v */
    void mo46418v() throws RemoteException;

    /* renamed from: w */
    void mo46417w() throws RemoteException;

    /* renamed from: x */
    void mo46416x() throws RemoteException;

    /* renamed from: y */
    void mo46415y() throws RemoteException;
}

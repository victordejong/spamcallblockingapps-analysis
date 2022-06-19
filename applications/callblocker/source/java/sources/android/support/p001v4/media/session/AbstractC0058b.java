package android.support.p001v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.AbstractC0055a;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;
/* renamed from: android.support.v4.media.session.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b.class */
public interface AbstractC0058b extends IInterface {

    /* renamed from: android.support.v4.media.session.b$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a.class */
    public static abstract class AbstractBinderC0059a extends Binder implements AbstractC0058b {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.b$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/b$a$a.class */
        public static class C0060a implements AbstractC0058b {

            /* renamed from: a */
            private IBinder f151a;

            C0060a(IBinder iBinder) {
                this.f151a = iBinder;
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22363a(float f) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeFloat(f);
                    this.f151a.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22362a(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    this.f151a.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22361a(int i, int i2, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    this.f151a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22360a(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    this.f151a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22359a(Uri uri, Bundle bundle) {
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
                    this.f151a.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22358a(MediaDescriptionCompat mediaDescriptionCompat) {
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
                    this.f151a.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22357a(MediaDescriptionCompat mediaDescriptionCompat, int i) {
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
                    this.f151a.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22356a(RatingCompat ratingCompat) {
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
                    this.f151a.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22355a(RatingCompat ratingCompat, Bundle bundle) {
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
                    this.f151a.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22354a(AbstractC0055a abstractC0055a) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC0055a != null ? abstractC0055a.asBinder() : null);
                    this.f151a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22352a(String str, Bundle bundle) {
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
                    this.f151a.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22351a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) {
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
                    this.f151a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public void mo22350a(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.f151a.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public boolean mo22364a() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: a */
            public boolean mo22353a(KeyEvent keyEvent) {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (keyEvent != null) {
                        obtain.writeInt(1);
                        keyEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f151a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f151a;
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public String mo22349b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22348b(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    this.f151a.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22347b(int i, int i2, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeString(str);
                    this.f151a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22346b(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeLong(j);
                    this.f151a.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22345b(Uri uri, Bundle bundle) {
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
                    this.f151a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22344b(MediaDescriptionCompat mediaDescriptionCompat) {
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
                    this.f151a.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22343b(AbstractC0055a abstractC0055a) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongBinder(abstractC0055a != null ? abstractC0055a.asBinder() : null);
                    this.f151a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22342b(String str, Bundle bundle) {
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
                    this.f151a.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: b */
            public void mo22341b(boolean z) {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.f151a.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: c */
            public String mo22340c() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: c */
            public void mo22339c(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeInt(i);
                    this.f151a.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: c */
            public void mo22338c(String str, Bundle bundle) {
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
                    this.f151a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: d */
            public PendingIntent mo22337d() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    PendingIntent pendingIntent = obtain2.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return pendingIntent;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: d */
            public void mo22336d(String str, Bundle bundle) {
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
                    this.f151a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: e */
            public long mo22335e() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: e */
            public void mo22334e(String str, Bundle bundle) {
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
                    this.f151a.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: f */
            public ParcelableVolumeInfo mo22333f() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    ParcelableVolumeInfo createFromParcel = obtain2.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: g */
            public MediaMetadataCompat mo22332g() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    MediaMetadataCompat createFromParcel = obtain2.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: h */
            public PlaybackStateCompat mo22331h() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    PlaybackStateCompat createFromParcel = obtain2.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return createFromParcel;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: i */
            public List<MediaSessionCompat.QueueItem> mo22330i() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: j */
            public CharSequence mo22329j() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    CharSequence charSequence = obtain2.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return charSequence;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: k */
            public Bundle mo22328k() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: l */
            public int mo22327l() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: m */
            public boolean mo22326m() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: n */
            public int mo22325n() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: o */
            public boolean mo22324o() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: p */
            public int mo22323p() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: q */
            public Bundle mo22322q() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                    Bundle bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: r */
            public void mo22321r() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: s */
            public void mo22320s() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: t */
            public void mo22319t() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: u */
            public void mo22318u() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: v */
            public void mo22317v() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: w */
            public void mo22316w() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: x */
            public void mo22315x() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0058b
            /* renamed from: y */
            public void mo22314y() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f151a.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [android.support.v4.media.session.b] */
        /* renamed from: a */
        public static AbstractC0058b m22365a(IBinder iBinder) {
            C0060a c0060a;
            if (iBinder == null) {
                c0060a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
                c0060a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0058b)) ? new C0060a(iBinder) : (AbstractC0058b) queryLocalInterface;
            }
            return c0060a;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            boolean z2 = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22351a(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean a = mo22353a(parcel.readInt() != 0 ? (KeyEvent) KeyEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(a ? 1 : 0);
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22354a(AbstractC0055a.AbstractBinderC0056a.m22379a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 4:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22343b(AbstractC0055a.AbstractBinderC0056a.m22379a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 5:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean a2 = mo22364a();
                    parcel2.writeNoException();
                    int i3 = 0;
                    if (a2) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    z = true;
                    break;
                case 6:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String b = mo22349b();
                    parcel2.writeNoException();
                    parcel2.writeString(b);
                    z = true;
                    break;
                case 7:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    String c = mo22340c();
                    parcel2.writeNoException();
                    parcel2.writeString(c);
                    z = true;
                    break;
                case 8:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    PendingIntent d = mo22337d();
                    parcel2.writeNoException();
                    if (d == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        d.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 9:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    long e = mo22335e();
                    parcel2.writeNoException();
                    parcel2.writeLong(e);
                    z = true;
                    break;
                case 10:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    ParcelableVolumeInfo f = mo22333f();
                    parcel2.writeNoException();
                    if (f == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        f.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 11:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22361a(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 12:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22347b(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 13:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22320s();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 14:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22338c(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 15:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22336d(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 16:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22345b(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 17:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22360a(parcel.readLong());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 18:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22319t();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 19:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22318u();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 20:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22317v();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 21:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22316w();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 22:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22315x();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 23:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22314y();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 24:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22346b(parcel.readLong());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 25:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22356a(parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 26:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22334e(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 27:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    MediaMetadataCompat g = mo22332g();
                    parcel2.writeNoException();
                    if (g == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        g.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 28:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    PlaybackStateCompat h = mo22331h();
                    parcel2.writeNoException();
                    if (h == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        h.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 29:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    List<MediaSessionCompat.QueueItem> i4 = mo22330i();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(i4);
                    z = true;
                    break;
                case 30:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    CharSequence j = mo22329j();
                    parcel2.writeNoException();
                    if (j == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(j, parcel2, 1);
                        z = true;
                        break;
                    }
                case 31:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Bundle k = mo22328k();
                    parcel2.writeNoException();
                    if (k == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        k.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 32:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int l = mo22327l();
                    parcel2.writeNoException();
                    parcel2.writeInt(l);
                    z = true;
                    break;
                case 33:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22321r();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 34:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22352a(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 35:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22342b(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 36:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22359a(parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 37:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int n = mo22325n();
                    parcel2.writeNoException();
                    parcel2.writeInt(n);
                    z = true;
                    break;
                case 38:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean o = mo22324o();
                    parcel2.writeNoException();
                    int i5 = 0;
                    if (o) {
                        i5 = 1;
                    }
                    parcel2.writeInt(i5);
                    z = true;
                    break;
                case 39:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22348b(parcel.readInt());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 40:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean z3 = false;
                    if (parcel.readInt() != 0) {
                        z3 = true;
                    }
                    mo22341b(z3);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 41:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22358a(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 42:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22357a(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 43:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22344b(parcel.readInt() != 0 ? MediaDescriptionCompat.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 44:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22362a(parcel.readInt());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 45:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    boolean m = mo22326m();
                    parcel2.writeNoException();
                    int i6 = 0;
                    if (m) {
                        i6 = 1;
                    }
                    parcel2.writeInt(i6);
                    z = true;
                    break;
                case 46:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    mo22350a(z2);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 47:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    int p = mo22323p();
                    parcel2.writeNoException();
                    parcel2.writeInt(p);
                    z = true;
                    break;
                case 48:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22339c(parcel.readInt());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 49:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22363a(parcel.readFloat());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 50:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    Bundle q = mo22322q();
                    parcel2.writeNoException();
                    if (q == null) {
                        parcel2.writeInt(0);
                        z = true;
                        break;
                    } else {
                        parcel2.writeInt(1);
                        q.writeToParcel(parcel2, 1);
                        z = true;
                        break;
                    }
                case 51:
                    parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                    mo22355a(parcel.readInt() != 0 ? RatingCompat.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("android.support.v4.media.session.IMediaSession");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    /* renamed from: a */
    void mo22363a(float f);

    /* renamed from: a */
    void mo22362a(int i);

    /* renamed from: a */
    void mo22361a(int i, int i2, String str);

    /* renamed from: a */
    void mo22360a(long j);

    /* renamed from: a */
    void mo22359a(Uri uri, Bundle bundle);

    /* renamed from: a */
    void mo22358a(MediaDescriptionCompat mediaDescriptionCompat);

    /* renamed from: a */
    void mo22357a(MediaDescriptionCompat mediaDescriptionCompat, int i);

    /* renamed from: a */
    void mo22356a(RatingCompat ratingCompat);

    /* renamed from: a */
    void mo22355a(RatingCompat ratingCompat, Bundle bundle);

    /* renamed from: a */
    void mo22354a(AbstractC0055a abstractC0055a);

    /* renamed from: a */
    void mo22352a(String str, Bundle bundle);

    /* renamed from: a */
    void mo22351a(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper);

    /* renamed from: a */
    void mo22350a(boolean z);

    /* renamed from: a */
    boolean mo22364a();

    /* renamed from: a */
    boolean mo22353a(KeyEvent keyEvent);

    /* renamed from: b */
    String mo22349b();

    /* renamed from: b */
    void mo22348b(int i);

    /* renamed from: b */
    void mo22347b(int i, int i2, String str);

    /* renamed from: b */
    void mo22346b(long j);

    /* renamed from: b */
    void mo22345b(Uri uri, Bundle bundle);

    /* renamed from: b */
    void mo22344b(MediaDescriptionCompat mediaDescriptionCompat);

    /* renamed from: b */
    void mo22343b(AbstractC0055a abstractC0055a);

    /* renamed from: b */
    void mo22342b(String str, Bundle bundle);

    /* renamed from: b */
    void mo22341b(boolean z);

    /* renamed from: c */
    String mo22340c();

    /* renamed from: c */
    void mo22339c(int i);

    /* renamed from: c */
    void mo22338c(String str, Bundle bundle);

    /* renamed from: d */
    PendingIntent mo22337d();

    /* renamed from: d */
    void mo22336d(String str, Bundle bundle);

    /* renamed from: e */
    long mo22335e();

    /* renamed from: e */
    void mo22334e(String str, Bundle bundle);

    /* renamed from: f */
    ParcelableVolumeInfo mo22333f();

    /* renamed from: g */
    MediaMetadataCompat mo22332g();

    /* renamed from: h */
    PlaybackStateCompat mo22331h();

    /* renamed from: i */
    List<MediaSessionCompat.QueueItem> mo22330i();

    /* renamed from: j */
    CharSequence mo22329j();

    /* renamed from: k */
    Bundle mo22328k();

    /* renamed from: l */
    int mo22327l();

    /* renamed from: m */
    boolean mo22326m();

    /* renamed from: n */
    int mo22325n();

    /* renamed from: o */
    boolean mo22324o();

    /* renamed from: p */
    int mo22323p();

    /* renamed from: q */
    Bundle mo22322q();

    /* renamed from: r */
    void mo22321r();

    /* renamed from: s */
    void mo22320s();

    /* renamed from: t */
    void mo22319t();

    /* renamed from: u */
    void mo22318u();

    /* renamed from: v */
    void mo22317v();

    /* renamed from: w */
    void mo22316w();

    /* renamed from: x */
    void mo22315x();

    /* renamed from: y */
    void mo22314y();
}

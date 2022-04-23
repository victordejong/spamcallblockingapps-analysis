package android.support.p009v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p009v4.media.MediaMetadataCompat;
import android.support.p009v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.AudioAttributesCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import p000a.p001a.p003b.p005b.p006a.AbstractC0009a;
import p000a.p001a.p003b.p005b.p006a.AbstractC0011b;
import p012b.p042i.p043h.C0849d;
import p012b.p130z.C1976a;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a */
    public final AbstractC0050b f82a;

    /* renamed from: b */
    public final MediaSessionCompat.Token f83b;

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    public static class MediaControllerImplApi21 implements AbstractC0050b {

        /* renamed from: a */
        public final MediaController f84a;

        /* renamed from: b */
        public final Object f85b = new Object();

        /* renamed from: c */
        public final List<AbstractC0046a> f86c = new ArrayList();

        /* renamed from: d */
        public HashMap<AbstractC0046a, BinderC0045a> f87d = new HashMap<>();

        /* renamed from: e */
        public final MediaSessionCompat.Token f88e;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a */
            public WeakReference<MediaControllerImplApi21> f89a;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f89a = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f89a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f85b) {
                        mediaControllerImplApi21.f88e.m39243a(AbstractC0011b.AbstractBinderC0012a.m39338a(C0849d.m35783a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.f88e.m39241a(C1976a.m31391a(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                        mediaControllerImplApi21.m39275a();
                    }
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        public static class BinderC0045a extends AbstractC0046a.BinderC0049c {
            public BinderC0045a(AbstractC0046a aVar) {
                super(aVar);
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39262a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39261a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39259a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39257a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: g */
            public void mo39255g(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0046a.BinderC0049c, p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: w1 */
            public void mo39251w1() throws RemoteException {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.f88e = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) this.f88e.m39237c());
            this.f84a = mediaController;
            if (mediaController == null) {
                throw new RemoteException();
            } else if (this.f88e.m39244a() == null) {
                m39273b();
            }
        }

        /* renamed from: a */
        public void m39275a() {
            if (this.f88e.m39244a() != null) {
                for (AbstractC0046a aVar : this.f86c) {
                    BinderC0045a aVar2 = new BinderC0045a(aVar);
                    this.f87d.put(aVar, aVar2);
                    aVar.f91b = aVar2;
                    try {
                        this.f88e.m39244a().mo39337a(aVar2);
                        aVar.m39271a(13, null, null);
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    }
                }
                this.f86c.clear();
            }
        }

        /* renamed from: a */
        public void m39274a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f84a.sendCommand(str, bundle, resultReceiver);
        }

        @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0050b
        /* renamed from: a */
        public boolean mo39250a(KeyEvent keyEvent) {
            return this.f84a.dispatchMediaButtonEvent(keyEvent);
        }

        /* renamed from: b */
        public final void m39273b() {
            m39274a("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0046a implements IBinder.DeathRecipient {

        /* renamed from: a */
        public HandlerC0048b f90a;

        /* renamed from: b */
        public AbstractC0009a f91b;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        public static class C0047a extends MediaController.Callback {

            /* renamed from: a */
            public final WeakReference<AbstractC0046a> f92a;

            public C0047a(AbstractC0046a aVar) {
                this.f92a = new WeakReference<>(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39268a(new C0052d(playbackInfo.getPlaybackType(), AudioAttributesCompat.m38313a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39270a(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39269a(MediaMetadataCompat.m39277a(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null && aVar.f91b == null) {
                    aVar.m39267a(PlaybackStateCompat.m39233a(playbackState));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39264a(MediaSessionCompat.QueueItem.m39245a((List<?>) list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39266a(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                AbstractC0046a aVar = this.f92a.get();
                if (aVar != null) {
                    aVar.m39272a();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.m39248a(bundle);
                AbstractC0046a aVar = this.f92a.get();
                if (aVar == null) {
                    return;
                }
                if (aVar.f91b == null || Build.VERSION.SDK_INT >= 23) {
                    aVar.m39265a(str, bundle);
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        public class HandlerC0048b extends Handler {
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        public static class BinderC0049c extends AbstractC0009a.AbstractBinderC0010a {

            /* renamed from: a */
            public final WeakReference<AbstractC0046a> f93a;

            public BinderC0049c(AbstractC0046a aVar) {
                this.f93a = new WeakReference<>(aVar);
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: L0 */
            public void mo39263L0() throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(13, null, null);
                }
            }

            /* renamed from: a */
            public void mo39262a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(3, mediaMetadataCompat, null);
                }
            }

            /* renamed from: a */
            public void mo39261a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(4, parcelableVolumeInfo != null ? new C0052d(parcelableVolumeInfo.f104a, parcelableVolumeInfo.f105b, parcelableVolumeInfo.f106c, parcelableVolumeInfo.f107d, parcelableVolumeInfo.f108e) : null, null);
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39260a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(2, playbackStateCompat, null);
                }
            }

            /* renamed from: a */
            public void mo39259a(CharSequence charSequence) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(6, charSequence, null);
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: a */
            public void mo39258a(String str, Bundle bundle) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(1, str, bundle);
                }
            }

            /* renamed from: a */
            public void mo39257a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(5, list, null);
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: d */
            public void mo39256d(int i) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(9, Integer.valueOf(i), null);
                }
            }

            /* renamed from: g */
            public void mo39255g(Bundle bundle) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(7, bundle, null);
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: i */
            public void mo39254i(boolean z) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(11, Boolean.valueOf(z), null);
                }
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: k */
            public void mo39253k(boolean z) throws RemoteException {
            }

            @Override // p000a.p001a.p003b.p005b.p006a.AbstractC0009a
            /* renamed from: m */
            public void mo39252m(int i) throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(12, Integer.valueOf(i), null);
                }
            }

            /* renamed from: w1 */
            public void mo39251w1() throws RemoteException {
                AbstractC0046a aVar = this.f93a.get();
                if (aVar != null) {
                    aVar.m39271a(8, null, null);
                }
            }
        }

        public AbstractC0046a() {
            if (Build.VERSION.SDK_INT >= 21) {
                new C0047a(this);
            } else {
                this.f91b = new BinderC0049c(this);
            }
        }

        /* renamed from: a */
        public void m39272a() {
        }

        /* renamed from: a */
        public void m39271a(int i, Object obj, Bundle bundle) {
            HandlerC0048b bVar = this.f90a;
            if (bVar != null) {
                Message obtainMessage = bVar.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        /* renamed from: a */
        public void m39270a(Bundle bundle) {
        }

        /* renamed from: a */
        public void m39269a(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* renamed from: a */
        public void m39268a(C0052d dVar) {
        }

        /* renamed from: a */
        public void m39267a(PlaybackStateCompat playbackStateCompat) {
        }

        /* renamed from: a */
        public void m39266a(CharSequence charSequence) {
        }

        /* renamed from: a */
        public void m39265a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void m39264a(List<MediaSessionCompat.QueueItem> list) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m39271a(8, null, null);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    public interface AbstractC0050b {
        /* renamed from: a */
        boolean mo39250a(KeyEvent keyEvent);
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$c.class */
    public static class C0051c implements AbstractC0050b {

        /* renamed from: a */
        public AbstractC0011b f94a;

        public C0051c(MediaSessionCompat.Token token) {
            this.f94a = AbstractC0011b.AbstractBinderC0012a.m39338a((IBinder) token.m39237c());
        }

        @Override // android.support.p009v4.media.session.MediaControllerCompat.AbstractC0050b
        /* renamed from: a */
        public boolean mo39250a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f94a.mo39336a(keyEvent);
                    return false;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                    return false;
                }
            } else {
                throw new IllegalArgumentException("event may not be null.");
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$d.class */
    public static final class C0052d {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0052d(int r8, int r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                androidx.media.AudioAttributesCompat$a r0 = new androidx.media.AudioAttributesCompat$a
                r1 = r0
                r1.<init>()
                r13 = r0
                r0 = r13
                r1 = r9
                androidx.media.AudioAttributesCompat$a r0 = r0.m38305c(r1)
                r0 = r7
                r1 = r8
                r2 = r13
                androidx.media.AudioAttributesCompat r2 = r2.m38308a()
                r3 = r10
                r4 = r11
                r5 = r12
                r0.<init>(r1, r2, r3, r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.p009v4.media.session.MediaControllerCompat.C0052d.<init>(int, int, int, int, int):void");
        }

        public C0052d(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) throws RemoteException {
        new ConcurrentHashMap();
        if (token != null) {
            this.f83b = token;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f82a = new MediaControllerImplApi21(context, token);
            } else {
                this.f82a = new C0051c(token);
            }
        } else {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
    }

    /* renamed from: a */
    public boolean m39276a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f82a.mo39250a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}

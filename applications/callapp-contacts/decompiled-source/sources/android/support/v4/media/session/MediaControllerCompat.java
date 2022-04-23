package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.AudioAttributesCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a  reason: collision with root package name */
    public final b f423a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaSessionCompat.Token f424b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<a, Boolean> f425c = new ConcurrentHashMap<>();

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    static final class MediaControllerImplApi21 implements b {

        /* renamed from: a  reason: collision with root package name */
        protected final MediaController f426a;

        /* renamed from: b  reason: collision with root package name */
        final Object f427b = new Object();

        /* renamed from: c  reason: collision with root package name */
        final List<a> f428c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        HashMap<a, a> f429d = new HashMap<>();
        final MediaSessionCompat.Token e;
        private Bundle f;

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (!(mediaControllerImplApi21 == null || bundle == null)) {
                    synchronized (mediaControllerImplApi21.f427b) {
                        mediaControllerImplApi21.e.setExtraBinder(b.a.a(androidx.core.app.d.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.e.setSession2Token(androidx.versionedparcelable.a.a(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                        if (mediaControllerImplApi21.e.getExtraBinder() != null) {
                            for (a aVar : mediaControllerImplApi21.f428c) {
                                a aVar2 = new a(aVar);
                                mediaControllerImplApi21.f429d.put(aVar, aVar2);
                                aVar.f432c = aVar2;
                                try {
                                    mediaControllerImplApi21.e.getExtraBinder().a(aVar2);
                                    aVar.a(13, null, null);
                                } catch (RemoteException e) {
                                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                                }
                            }
                            mediaControllerImplApi21.f428c.clear();
                        }
                    }
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        static final class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public final void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.e = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) token.getToken());
            this.f426a = mediaController;
            if (token.getExtraBinder() == null) {
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final e a() {
            return new f(this.f426a.getTransportControls());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(int i, int i2) {
            this.f426a.setVolumeTo(i, i2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(a aVar) {
            this.f426a.unregisterCallback(aVar.f430a);
            synchronized (this.f427b) {
                if (this.e.getExtraBinder() != null) {
                    try {
                        a remove = this.f429d.remove(aVar);
                        if (remove != null) {
                            aVar.f432c = null;
                            this.e.getExtraBinder().b(remove);
                        }
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                    }
                } else {
                    this.f428c.remove(aVar);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(a aVar, Handler handler) {
            this.f426a.registerCallback(aVar.f430a, handler);
            synchronized (this.f427b) {
                if (this.e.getExtraBinder() != null) {
                    a aVar2 = new a(aVar);
                    this.f429d.put(aVar, aVar2);
                    aVar.f432c = aVar2;
                    try {
                        this.e.getExtraBinder().a(aVar2);
                        aVar.a(13, null, null);
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    }
                } else {
                    aVar.f432c = null;
                    this.f428c.add(aVar);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean a(KeyEvent keyEvent) {
            return this.f426a.dispatchMediaButtonEvent(keyEvent);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final PlaybackStateCompat b() {
            if (this.e.getExtraBinder() != null) {
                try {
                    return this.e.getExtraBinder().h();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                }
            }
            PlaybackState playbackState = this.f426a.getPlaybackState();
            if (playbackState != null) {
                return PlaybackStateCompat.fromPlaybackState(playbackState);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void b(int i, int i2) {
            this.f426a.adjustVolume(i, i2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final MediaMetadataCompat c() {
            MediaMetadata metadata = this.f426a.getMetadata();
            if (metadata != null) {
                return MediaMetadataCompat.fromMediaMetadata(metadata);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final List<MediaSessionCompat.QueueItem> d() {
            List<MediaSession.QueueItem> queue = this.f426a.getQueue();
            if (queue != null) {
                return MediaSessionCompat.QueueItem.fromQueueItemList(queue);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final CharSequence e() {
            return this.f426a.getQueueTitle();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean f() {
            if (this.e.getExtraBinder() == null) {
                return false;
            }
            try {
                return this.e.getExtraBinder().m();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final int g() {
            if (this.e.getExtraBinder() == null) {
                return -1;
            }
            try {
                return this.e.getExtraBinder().n();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final int h() {
            if (this.e.getExtraBinder() == null) {
                return -1;
            }
            try {
                return this.e.getExtraBinder().p();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final long i() {
            return this.f426a.getFlags();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final d j() {
            MediaController.PlaybackInfo playbackInfo = this.f426a.getPlaybackInfo();
            if (playbackInfo != null) {
                return new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean k() {
            return this.e.getExtraBinder() != null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final String l() {
            return this.f426a.getPackageName();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final Bundle m() {
            if (this.f != null) {
                return new Bundle(this.f);
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.f = this.f426a.getSessionInfo();
            } else if (this.e.getExtraBinder() != null) {
                try {
                    this.f = this.e.getExtraBinder().q();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getSessionInfo.", e);
                    this.f = Bundle.EMPTY;
                }
            }
            Bundle b2 = MediaSessionCompat.b(this.f);
            this.f = b2;
            return b2 == null ? Bundle.EMPTY : new Bundle(this.f);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final MediaController.Callback f430a;

        /* renamed from: b  reason: collision with root package name */
        b f431b;

        /* renamed from: c  reason: collision with root package name */
        android.support.v4.media.session.a f432c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        static final class C0007a extends MediaController.Callback {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f433a;

            C0007a(a aVar) {
                this.f433a = new WeakReference<>(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.a(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.a(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.a(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = this.f433a.get();
                if (aVar != null && aVar.f432c == null) {
                    aVar.a(PlaybackStateCompat.fromPlaybackState(playbackState));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueChanged(List<MediaSession.QueueItem> list) {
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.a(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.a(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
                a aVar = this.f433a.get();
                if (aVar != null) {
                    aVar.b();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.f433a.get();
                if (aVar == null) {
                    return;
                }
                if (aVar.f432c == null || Build.VERSION.SDK_INT >= 23) {
                    aVar.a(str, bundle);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        public final class b extends Handler {

            /* renamed from: a  reason: collision with root package name */
            boolean f434a = false;

            b(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (this.f434a) {
                    switch (message.what) {
                        case 1:
                            Bundle data = message.getData();
                            MediaSessionCompat.a(data);
                            a.this.a((String) message.obj, data);
                            return;
                        case 2:
                            a.this.a((PlaybackStateCompat) message.obj);
                            return;
                        case 3:
                            a.this.a((MediaMetadataCompat) message.obj);
                            return;
                        case 4:
                            a.this.a((d) message.obj);
                            return;
                        case 5:
                            a.this.a((List) message.obj);
                            return;
                        case 6:
                            a.this.a((CharSequence) message.obj);
                            return;
                        case 7:
                            Bundle bundle = (Bundle) message.obj;
                            MediaSessionCompat.a(bundle);
                            a.this.a(bundle);
                            return;
                        case 8:
                            a.this.b();
                            return;
                        case 9:
                            a.this.a(((Integer) message.obj).intValue());
                            return;
                        case 10:
                        default:
                            return;
                        case 11:
                            a.this.a(((Boolean) message.obj).booleanValue());
                            return;
                        case 12:
                            a.this.b(((Integer) message.obj).intValue());
                            return;
                        case 13:
                            a.this.a();
                            return;
                    }
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        static class c extends a.AbstractBinderC0009a {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f436a;

            c(a aVar) {
                this.f436a = new WeakReference<>(aVar);
            }

            public void a() throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(int i) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(9, Integer.valueOf(i), null);
                }
            }

            public void a(Bundle bundle) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(7, bundle, null);
                }
            }

            public void a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(3, mediaMetadataCompat, null);
                }
            }

            public void a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(4, parcelableVolumeInfo != null ? new d(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(2, playbackStateCompat, null);
                }
            }

            public void a(CharSequence charSequence) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(String str, Bundle bundle) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(1, str, bundle);
                }
            }

            public void a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(5, list, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void a(boolean z) throws RemoteException {
            }

            @Override // android.support.v4.media.session.a
            public final void b() throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void b(int i) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public final void b(boolean z) throws RemoteException {
                a aVar = this.f436a.get();
                if (aVar != null) {
                    aVar.a(11, Boolean.valueOf(z), null);
                }
            }
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f430a = new C0007a(this);
                return;
            }
            this.f430a = null;
            this.f432c = new c(this);
        }

        public void a() {
        }

        public void a(int i) {
        }

        final void a(int i, Object obj, Bundle bundle) {
            b bVar = this.f431b;
            if (bVar != null) {
                Message obtainMessage = bVar.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        public void a(Bundle bundle) {
        }

        final void a(Handler handler) {
            if (handler == null) {
                b bVar = this.f431b;
                if (bVar != null) {
                    bVar.f434a = false;
                    this.f431b.removeCallbacksAndMessages(null);
                    this.f431b = null;
                    return;
                }
                return;
            }
            b bVar2 = new b(handler.getLooper());
            this.f431b = bVar2;
            bVar2.f434a = true;
        }

        public void a(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void a(d dVar) {
        }

        public void a(PlaybackStateCompat playbackStateCompat) {
        }

        public void a(CharSequence charSequence) {
        }

        public void a(String str, Bundle bundle) {
        }

        public void a(List<MediaSessionCompat.QueueItem> list) {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void b(int i) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            a(8, null, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    public interface b {
        e a();

        void a(int i, int i2);

        void a(a aVar);

        void a(a aVar, Handler handler);

        boolean a(KeyEvent keyEvent);

        PlaybackStateCompat b();

        void b(int i, int i2);

        MediaMetadataCompat c();

        List<MediaSessionCompat.QueueItem> d();

        CharSequence e();

        boolean f();

        int g();

        int h();

        long i();

        d j();

        boolean k();

        String l();

        Bundle m();
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$c.class */
    static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private android.support.v4.media.session.b f437a;

        /* renamed from: b  reason: collision with root package name */
        private e f438b;

        /* renamed from: c  reason: collision with root package name */
        private Bundle f439c;

        c(MediaSessionCompat.Token token) {
            this.f437a = b.a.a((IBinder) token.getToken());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final e a() {
            if (this.f438b == null) {
                this.f438b = new g(this.f437a);
            }
            return this.f438b;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(int i, int i2) {
            try {
                this.f437a.b(i, i2, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in setVolumeTo.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(a aVar) {
            if (aVar != null) {
                try {
                    this.f437a.b(aVar.f432c);
                    this.f437a.asBinder().unlinkToDeath(aVar, 0);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void a(a aVar, Handler handler) {
            if (aVar != null) {
                try {
                    this.f437a.asBinder().linkToDeath(aVar, 0);
                    this.f437a.a(aVar.f432c);
                    aVar.a(13, null, null);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    aVar.a(8, null, null);
                }
            } else {
                throw new IllegalArgumentException("callback may not be null.");
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f437a.a(keyEvent);
                    return false;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                    return false;
                }
            } else {
                throw new IllegalArgumentException("event may not be null.");
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final PlaybackStateCompat b() {
            try {
                return this.f437a.h();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final void b(int i, int i2) {
            try {
                this.f437a.a(i, i2, (String) null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in adjustVolume.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final MediaMetadataCompat c() {
            try {
                return this.f437a.g();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final List<MediaSessionCompat.QueueItem> d() {
            try {
                return this.f437a.i();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueue.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final CharSequence e() {
            try {
                return this.f437a.j();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueueTitle.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean f() {
            try {
                return this.f437a.m();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final int g() {
            try {
                return this.f437a.n();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final int h() {
            try {
                return this.f437a.p();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
                return -1;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final long i() {
            try {
                return this.f437a.e();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getFlags.", e);
                return 0L;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final d j() {
            try {
                ParcelableVolumeInfo f = this.f437a.f();
                return new d(f.volumeType, f.audioStream, f.controlType, f.maxVolume, f.currentVolume);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final boolean k() {
            return true;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final String l() {
            try {
                return this.f437a.b();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPackageName.", e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public final Bundle m() {
            try {
                this.f439c = this.f437a.q();
            } catch (RemoteException e) {
            }
            Bundle b2 = MediaSessionCompat.b(this.f439c);
            this.f439c = b2;
            return b2 == null ? Bundle.EMPTY : new Bundle(this.f439c);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f440a;

        /* renamed from: b  reason: collision with root package name */
        public final AudioAttributesCompat f441b;

        /* renamed from: c  reason: collision with root package name */
        public final int f442c;

        /* renamed from: d  reason: collision with root package name */
        public final int f443d;
        public final int e;

        d(int i, int i2, int i3, int i4, int i5) {
            this(i, new AudioAttributesCompat.a().c(i2).a(), i3, i4, i5);
        }

        d(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f440a = i;
            this.f441b = audioAttributesCompat;
            this.f442c = i2;
            this.f443d = i3;
            this.e = i4;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$e.class */
    public static abstract class e {
        e() {
        }

        public abstract void a();

        public void a(float f) {
        }

        public abstract void a(long j);

        public abstract void b();

        public abstract void c();

        public abstract void d();
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$f.class */
    static final class f extends e {

        /* renamed from: a  reason: collision with root package name */
        protected final MediaController.TransportControls f444a;

        f(MediaController.TransportControls transportControls) {
            this.f444a = transportControls;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a() {
            this.f444a.play();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a(float f) {
            if (f == BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("speed must not be zero");
            } else if (Build.VERSION.SDK_INT >= 29) {
                this.f444a.setPlaybackSpeed(f);
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", f);
                this.f444a.sendCustomAction("android.support.v4.media.session.action.SET_PLAYBACK_SPEED", bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a(long j) {
            this.f444a.seekTo(j);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void b() {
            this.f444a.pause();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void c() {
            this.f444a.skipToNext();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void d() {
            this.f444a.skipToPrevious();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$g.class */
    static final class g extends e {

        /* renamed from: a  reason: collision with root package name */
        private android.support.v4.media.session.b f445a;

        public g(android.support.v4.media.session.b bVar) {
            this.f445a = bVar;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a() {
            try {
                this.f445a.s();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in play.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a(float f) {
            if (f != BitmapDescriptorFactory.HUE_RED) {
                try {
                    this.f445a.a(f);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in setPlaybackSpeed.", e);
                }
            } else {
                throw new IllegalArgumentException("speed must not be zero");
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void a(long j) {
            try {
                this.f445a.b(j);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in seekTo.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void b() {
            try {
                this.f445a.t();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in pause.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void c() {
            try {
                this.f445a.v();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToNext.", e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e
        public final void d() {
            try {
                this.f445a.w();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", e);
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.f424b = token;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f423a = new MediaControllerImplApi21(context, token);
            } else {
                this.f423a = new c(token);
            }
        } else {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat != null) {
            MediaSessionCompat.Token b2 = mediaSessionCompat.f447a.b();
            this.f424b = b2;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f423a = new MediaControllerImplApi21(context, b2);
            } else {
                this.f423a = new c(b2);
            }
        } else {
            throw new IllegalArgumentException("session must not be null");
        }
    }

    public final e a() {
        return this.f423a.a();
    }

    public final void a(a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        } else if (this.f425c.remove(aVar) == null) {
            Log.w("MediaControllerCompat", "the callback has never been registered");
        } else {
            try {
                this.f423a.a(aVar);
            } finally {
                aVar.a((Handler) null);
            }
        }
    }

    public final void a(a aVar, Handler handler) {
        if (aVar == null) {
            throw new IllegalArgumentException("callback must not be null");
        } else if (this.f425c.putIfAbsent(aVar, Boolean.TRUE) != null) {
            Log.w("MediaControllerCompat", "the callback has already been registered");
        } else {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler();
            }
            aVar.a(handler2);
            this.f423a.a(aVar, handler2);
        }
    }

    public final boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f423a.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public final PlaybackStateCompat b() {
        return this.f423a.b();
    }

    public final CharSequence c() {
        return this.f423a.e();
    }

    public final int d() {
        return this.f423a.g();
    }

    public final int e() {
        return this.f423a.h();
    }

    public final long f() {
        return this.f423a.i();
    }

    public final boolean g() {
        return this.f423a.k();
    }

    public final Bundle h() {
        return this.f423a.m();
    }
}

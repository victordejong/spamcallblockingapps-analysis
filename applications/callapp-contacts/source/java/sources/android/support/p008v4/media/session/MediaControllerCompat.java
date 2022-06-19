package android.support.p008v4.media.session;

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
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.session.AbstractC0085a;
import android.support.p008v4.media.session.AbstractC0088b;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.C0741d;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.C2920a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a */
    public final AbstractC0054b f78a;

    /* renamed from: b */
    private final MediaSessionCompat.Token f79b;

    /* renamed from: c */
    private final ConcurrentHashMap<AbstractC0050a, Boolean> f80c = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    public static final class MediaControllerImplApi21 implements AbstractC0054b {

        /* renamed from: a */
        protected final MediaController f81a;

        /* renamed from: b */
        final Object f82b = new Object();

        /* renamed from: c */
        final List<AbstractC0050a> f83c = new ArrayList();

        /* renamed from: d */
        HashMap<AbstractC0050a, BinderC0049a> f84d = new HashMap<>();

        /* renamed from: e */
        final MediaSessionCompat.Token f85e;

        /* renamed from: f */
        private Bundle f86f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {
            private WeakReference<MediaControllerImplApi21> mMediaControllerImpl;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.mMediaControllerImpl = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.mMediaControllerImpl.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f82b) {
                    mediaControllerImplApi21.f85e.setExtraBinder(AbstractC0088b.AbstractBinderC0089a.m46467a(C0741d.m44595a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f85e.setSession2Token(C2920a.m39630a(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                    if (mediaControllerImplApi21.f85e.getExtraBinder() != null) {
                        for (AbstractC0050a abstractC0050a : mediaControllerImplApi21.f83c) {
                            BinderC0049a binderC0049a = new BinderC0049a(abstractC0050a);
                            mediaControllerImplApi21.f84d.put(abstractC0050a, binderC0049a);
                            abstractC0050a.f89c = binderC0049a;
                            try {
                                mediaControllerImplApi21.f85e.getExtraBinder().mo46455a(binderC0049a);
                                abstractC0050a.m46562a(13, null, null);
                            } catch (RemoteException e) {
                                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                            }
                        }
                        mediaControllerImplApi21.f83c.clear();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        public static final class BinderC0049a extends AbstractC0050a.BinderC0053c {
            BinderC0049a(AbstractC0050a abstractC0050a) {
                super(abstractC0050a);
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46480a() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46478a(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46477a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46476a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46474a(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0050a.BinderC0053c, android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46472a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f85e = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) token.getToken());
            this.f81a = mediaController;
            if (token.getExtraBinder() == null) {
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final AbstractC0057e mo46560a() {
            return new C0058f(this.f81a.getTransportControls());
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46559a(int i, int i2) {
            this.f81a.setVolumeTo(i, i2);
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46558a(AbstractC0050a abstractC0050a) {
            this.f81a.unregisterCallback(abstractC0050a.f87a);
            synchronized (this.f82b) {
                if (this.f85e.getExtraBinder() != null) {
                    try {
                        BinderC0049a remove = this.f84d.remove(abstractC0050a);
                        if (remove != null) {
                            abstractC0050a.f89c = null;
                            this.f85e.getExtraBinder().mo46444b(remove);
                        }
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                    }
                } else {
                    this.f83c.remove(abstractC0050a);
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46557a(AbstractC0050a abstractC0050a, Handler handler) {
            this.f81a.registerCallback(abstractC0050a.f87a, handler);
            synchronized (this.f82b) {
                if (this.f85e.getExtraBinder() != null) {
                    BinderC0049a binderC0049a = new BinderC0049a(abstractC0050a);
                    this.f84d.put(abstractC0050a, binderC0049a);
                    abstractC0050a.f89c = binderC0049a;
                    try {
                        this.f85e.getExtraBinder().mo46455a(binderC0049a);
                        abstractC0050a.m46562a(13, null, null);
                    } catch (RemoteException e) {
                        Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    }
                } else {
                    abstractC0050a.f89c = null;
                    this.f83c.add(abstractC0050a);
                }
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final boolean mo46556a(KeyEvent keyEvent) {
            return this.f81a.dispatchMediaButtonEvent(keyEvent);
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: b */
        public final PlaybackStateCompat mo46555b() {
            if (this.f85e.getExtraBinder() != null) {
                try {
                    return this.f85e.getExtraBinder().mo46432h();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                }
            }
            PlaybackState playbackState = this.f81a.getPlaybackState();
            if (playbackState != null) {
                return PlaybackStateCompat.fromPlaybackState(playbackState);
            }
            return null;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: b */
        public final void mo46554b(int i, int i2) {
            this.f81a.adjustVolume(i, i2);
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: c */
        public final MediaMetadataCompat mo46553c() {
            MediaMetadata metadata = this.f81a.getMetadata();
            if (metadata != null) {
                return MediaMetadataCompat.fromMediaMetadata(metadata);
            }
            return null;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: d */
        public final List<MediaSessionCompat.QueueItem> mo46552d() {
            List<MediaSession.QueueItem> queue = this.f81a.getQueue();
            if (queue != null) {
                return MediaSessionCompat.QueueItem.fromQueueItemList(queue);
            }
            return null;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: e */
        public final CharSequence mo46551e() {
            return this.f81a.getQueueTitle();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: f */
        public final boolean mo46550f() {
            if (this.f85e.getExtraBinder() != null) {
                try {
                    return this.f85e.getExtraBinder().mo46427m();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
                    return false;
                }
            }
            return false;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: g */
        public final int mo46549g() {
            if (this.f85e.getExtraBinder() != null) {
                try {
                    return this.f85e.getExtraBinder().mo46426n();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
                    return -1;
                }
            }
            return -1;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: h */
        public final int mo46548h() {
            if (this.f85e.getExtraBinder() != null) {
                try {
                    return this.f85e.getExtraBinder().mo46424p();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
                    return -1;
                }
            }
            return -1;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: i */
        public final long mo46547i() {
            return this.f81a.getFlags();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: j */
        public final C0056d mo46546j() {
            MediaController.PlaybackInfo playbackInfo = this.f81a.getPlaybackInfo();
            if (playbackInfo != null) {
                return new C0056d(playbackInfo.getPlaybackType(), AudioAttributesCompat.m43268a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
            }
            return null;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: k */
        public final boolean mo46545k() {
            return this.f85e.getExtraBinder() != null;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: l */
        public final String mo46544l() {
            return this.f81a.getPackageName();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: m */
        public final Bundle mo46543m() {
            if (this.f86f != null) {
                return new Bundle(this.f86f);
            }
            if (Build.VERSION.SDK_INT >= 29) {
                this.f86f = this.f81a.getSessionInfo();
            } else if (this.f85e.getExtraBinder() != null) {
                try {
                    this.f86f = this.f85e.getExtraBinder().mo46423q();
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in getSessionInfo.", e);
                    this.f86f = Bundle.EMPTY;
                }
            }
            Bundle m46527b = MediaSessionCompat.m46527b(this.f86f);
            this.f86f = m46527b;
            return m46527b == null ? Bundle.EMPTY : new Bundle(this.f86f);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0050a implements IBinder.DeathRecipient {

        /* renamed from: a */
        final MediaController.Callback f87a;

        /* renamed from: b */
        HandlerC0052b f88b;

        /* renamed from: c */
        AbstractC0085a f89c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        public static final class C0051a extends MediaController.Callback {

            /* renamed from: a */
            private final WeakReference<AbstractC0050a> f90a;

            C0051a(AbstractC0050a abstractC0050a) {
                this.f90a = new WeakReference<>(abstractC0050a);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41037a(new C0056d(playbackInfo.getPlaybackType(), AudioAttributesCompat.m43268a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41039a(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41038a(MediaMetadataCompat.fromMediaMetadata(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a == null || abstractC0050a.f89c != null) {
                    return;
                }
                abstractC0050a.mo41036a(PlaybackStateCompat.fromPlaybackState(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueChanged(List<MediaSession.QueueItem> list) {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41033a(MediaSessionCompat.QueueItem.fromQueueItemList(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueTitleChanged(CharSequence charSequence) {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41035a(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.mo41031b();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.m46534a(bundle);
                AbstractC0050a abstractC0050a = this.f90a.get();
                if (abstractC0050a != null) {
                    if (abstractC0050a.f89c != null && Build.VERSION.SDK_INT < 23) {
                        return;
                    }
                    abstractC0050a.mo41034a(str, bundle);
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        public final class HandlerC0052b extends Handler {

            /* renamed from: a */
            boolean f91a = false;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            HandlerC0052b(Looper looper) {
                super(looper);
                AbstractC0050a.this = r4;
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (!this.f91a) {
                    return;
                }
                switch (message.what) {
                    case 1:
                        Bundle data = message.getData();
                        MediaSessionCompat.m46534a(data);
                        AbstractC0050a.this.mo41034a((String) message.obj, data);
                        return;
                    case 2:
                        AbstractC0050a.this.mo41036a((PlaybackStateCompat) message.obj);
                        return;
                    case 3:
                        AbstractC0050a.this.mo41038a((MediaMetadataCompat) message.obj);
                        return;
                    case 4:
                        AbstractC0050a.this.mo41037a((C0056d) message.obj);
                        return;
                    case 5:
                        AbstractC0050a.this.mo41033a((List) message.obj);
                        return;
                    case 6:
                        AbstractC0050a.this.mo41035a((CharSequence) message.obj);
                        return;
                    case 7:
                        Bundle bundle = (Bundle) message.obj;
                        MediaSessionCompat.m46534a(bundle);
                        AbstractC0050a.this.mo41039a(bundle);
                        return;
                    case 8:
                        AbstractC0050a.this.mo41031b();
                        return;
                    case 9:
                        AbstractC0050a.this.mo41040a(((Integer) message.obj).intValue());
                        return;
                    case 10:
                    default:
                        return;
                    case 11:
                        AbstractC0050a.this.mo41032a(((Boolean) message.obj).booleanValue());
                        return;
                    case 12:
                        AbstractC0050a.this.mo41030b(((Integer) message.obj).intValue());
                        return;
                    case 13:
                        AbstractC0050a.this.mo41041a();
                        return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        public static class BinderC0053c extends AbstractC0085a.AbstractBinderC0086a {

            /* renamed from: a */
            private final WeakReference<AbstractC0050a> f93a;

            BinderC0053c(AbstractC0050a abstractC0050a) {
                this.f93a = new WeakReference<>(abstractC0050a);
            }

            /* renamed from: a */
            public void mo46480a() throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(8, null, null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46479a(int i) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(9, Integer.valueOf(i), null);
                }
            }

            /* renamed from: a */
            public void mo46478a(Bundle bundle) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(7, bundle, null);
                }
            }

            /* renamed from: a */
            public void mo46477a(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(3, mediaMetadataCompat, null);
                }
            }

            /* renamed from: a */
            public void mo46476a(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(4, parcelableVolumeInfo != null ? new C0056d(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46475a(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(2, playbackStateCompat, null);
                }
            }

            /* renamed from: a */
            public void mo46474a(CharSequence charSequence) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(6, charSequence, null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46473a(String str, Bundle bundle) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(1, str, bundle);
                }
            }

            /* renamed from: a */
            public void mo46472a(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(5, list, null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: a */
            public final void mo46471a(boolean z) throws RemoteException {
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46470b() throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(13, null, null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46469b(int i) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.p008v4.media.session.AbstractC0085a
            /* renamed from: b */
            public final void mo46468b(boolean z) throws RemoteException {
                AbstractC0050a abstractC0050a = this.f93a.get();
                if (abstractC0050a != null) {
                    abstractC0050a.m46562a(11, Boolean.valueOf(z), null);
                }
            }
        }

        public AbstractC0050a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f87a = new C0051a(this);
                return;
            }
            this.f87a = null;
            this.f89c = new BinderC0053c(this);
        }

        /* renamed from: a */
        public void mo41041a() {
        }

        /* renamed from: a */
        public void mo41040a(int i) {
        }

        /* renamed from: a */
        final void m46562a(int i, Object obj, Bundle bundle) {
            HandlerC0052b handlerC0052b = this.f88b;
            if (handlerC0052b != null) {
                Message obtainMessage = handlerC0052b.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        /* renamed from: a */
        public void mo41039a(Bundle bundle) {
        }

        /* renamed from: a */
        final void m46561a(Handler handler) {
            if (handler != null) {
                HandlerC0052b handlerC0052b = new HandlerC0052b(handler.getLooper());
                this.f88b = handlerC0052b;
                handlerC0052b.f91a = true;
                return;
            }
            HandlerC0052b handlerC0052b2 = this.f88b;
            if (handlerC0052b2 == null) {
                return;
            }
            handlerC0052b2.f91a = false;
            this.f88b.removeCallbacksAndMessages(null);
            this.f88b = null;
        }

        /* renamed from: a */
        public void mo41038a(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* renamed from: a */
        public void mo41037a(C0056d c0056d) {
        }

        /* renamed from: a */
        public void mo41036a(PlaybackStateCompat playbackStateCompat) {
        }

        /* renamed from: a */
        public void mo41035a(CharSequence charSequence) {
        }

        /* renamed from: a */
        public void mo41034a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void mo41033a(List<MediaSessionCompat.QueueItem> list) {
        }

        /* renamed from: a */
        public void mo41032a(boolean z) {
        }

        /* renamed from: b */
        public void mo41031b() {
        }

        /* renamed from: b */
        public void mo41030b(int i) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m46562a(8, null, null);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    public interface AbstractC0054b {
        /* renamed from: a */
        AbstractC0057e mo46560a();

        /* renamed from: a */
        void mo46559a(int i, int i2);

        /* renamed from: a */
        void mo46558a(AbstractC0050a abstractC0050a);

        /* renamed from: a */
        void mo46557a(AbstractC0050a abstractC0050a, Handler handler);

        /* renamed from: a */
        boolean mo46556a(KeyEvent keyEvent);

        /* renamed from: b */
        PlaybackStateCompat mo46555b();

        /* renamed from: b */
        void mo46554b(int i, int i2);

        /* renamed from: c */
        MediaMetadataCompat mo46553c();

        /* renamed from: d */
        List<MediaSessionCompat.QueueItem> mo46552d();

        /* renamed from: e */
        CharSequence mo46551e();

        /* renamed from: f */
        boolean mo46550f();

        /* renamed from: g */
        int mo46549g();

        /* renamed from: h */
        int mo46548h();

        /* renamed from: i */
        long mo46547i();

        /* renamed from: j */
        C0056d mo46546j();

        /* renamed from: k */
        boolean mo46545k();

        /* renamed from: l */
        String mo46544l();

        /* renamed from: m */
        Bundle mo46543m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$c.class */
    public static final class C0055c implements AbstractC0054b {

        /* renamed from: a */
        private AbstractC0088b f94a;

        /* renamed from: b */
        private AbstractC0057e f95b;

        /* renamed from: c */
        private Bundle f96c;

        C0055c(MediaSessionCompat.Token token) {
            this.f94a = AbstractC0088b.AbstractBinderC0089a.m46467a((IBinder) token.getToken());
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final AbstractC0057e mo46560a() {
            if (this.f95b == null) {
                this.f95b = new C0059g(this.f94a);
            }
            return this.f95b;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46559a(int i, int i2) {
            try {
                this.f94a.mo46448b(i, i2, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in setVolumeTo.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46558a(AbstractC0050a abstractC0050a) {
            if (abstractC0050a != null) {
                try {
                    this.f94a.mo46444b(abstractC0050a.f89c);
                    this.f94a.asBinder().unlinkToDeath(abstractC0050a, 0);
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", e);
                    return;
                }
            }
            throw new IllegalArgumentException("callback may not be null.");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final void mo46557a(AbstractC0050a abstractC0050a, Handler handler) {
            if (abstractC0050a != null) {
                try {
                    this.f94a.asBinder().linkToDeath(abstractC0050a, 0);
                    this.f94a.mo46455a(abstractC0050a.f89c);
                    abstractC0050a.m46562a(13, null, null);
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                    abstractC0050a.m46562a(8, null, null);
                    return;
                }
            }
            throw new IllegalArgumentException("callback may not be null.");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: a */
        public final boolean mo46556a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f94a.mo46454a(keyEvent);
                    return false;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                    return false;
                }
            }
            throw new IllegalArgumentException("event may not be null.");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: b */
        public final PlaybackStateCompat mo46555b() {
            try {
                return this.f94a.mo46432h();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: b */
        public final void mo46554b(int i, int i2) {
            try {
                this.f94a.mo46462a(i, i2, (String) null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in adjustVolume.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: c */
        public final MediaMetadataCompat mo46553c() {
            try {
                return this.f94a.mo46433g();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: d */
        public final List<MediaSessionCompat.QueueItem> mo46552d() {
            try {
                return this.f94a.mo46431i();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueue.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: e */
        public final CharSequence mo46551e() {
            try {
                return this.f94a.mo46430j();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueueTitle.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: f */
        public final boolean mo46550f() {
            try {
                return this.f94a.mo46427m();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", e);
                return false;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: g */
        public final int mo46549g() {
            try {
                return this.f94a.mo46426n();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", e);
                return -1;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: h */
        public final int mo46548h() {
            try {
                return this.f94a.mo46424p();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", e);
                return -1;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: i */
        public final long mo46547i() {
            try {
                return this.f94a.mo46436e();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getFlags.", e);
                return 0L;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: j */
        public final C0056d mo46546j() {
            try {
                ParcelableVolumeInfo mo46434f = this.f94a.mo46434f();
                return new C0056d(mo46434f.volumeType, mo46434f.audioStream, mo46434f.controlType, mo46434f.maxVolume, mo46434f.currentVolume);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: k */
        public final boolean mo46545k() {
            return true;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: l */
        public final String mo46544l() {
            try {
                return this.f94a.mo46450b();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPackageName.", e);
                return null;
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0054b
        /* renamed from: m */
        public final Bundle mo46543m() {
            try {
                this.f96c = this.f94a.mo46423q();
            } catch (RemoteException e) {
            }
            Bundle m46527b = MediaSessionCompat.m46527b(this.f96c);
            this.f96c = m46527b;
            return m46527b == null ? Bundle.EMPTY : new Bundle(this.f96c);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$d.class */
    public static final class C0056d {

        /* renamed from: a */
        public final int f97a;

        /* renamed from: b */
        public final AudioAttributesCompat f98b;

        /* renamed from: c */
        public final int f99c;

        /* renamed from: d */
        public final int f100d;

        /* renamed from: e */
        public final int f101e;

        C0056d(int i, int i2, int i3, int i4, int i5) {
            this(i, new AudioAttributesCompat.C1287a().m43259c(i2).m43262a(), i3, i4, i5);
        }

        C0056d(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f97a = i;
            this.f98b = audioAttributesCompat;
            this.f99c = i2;
            this.f100d = i3;
            this.f101e = i4;
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$e.class */
    public static abstract class AbstractC0057e {
        AbstractC0057e() {
        }

        /* renamed from: a */
        public abstract void mo46542a();

        /* renamed from: a */
        public void mo46541a(float f) {
        }

        /* renamed from: a */
        public abstract void mo46540a(long j);

        /* renamed from: b */
        public abstract void mo46539b();

        /* renamed from: c */
        public abstract void mo46538c();

        /* renamed from: d */
        public abstract void mo46537d();
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$f.class */
    static final class C0058f extends AbstractC0057e {

        /* renamed from: a */
        protected final MediaController.TransportControls f102a;

        C0058f(MediaController.TransportControls transportControls) {
            this.f102a = transportControls;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46542a() {
            this.f102a.play();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46541a(float f) {
            if (f != BitmapDescriptorFactory.HUE_RED) {
                if (Build.VERSION.SDK_INT >= 29) {
                    this.f102a.setPlaybackSpeed(f);
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", f);
                this.f102a.sendCustomAction("android.support.v4.media.session.action.SET_PLAYBACK_SPEED", bundle);
                return;
            }
            throw new IllegalArgumentException("speed must not be zero");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46540a(long j) {
            this.f102a.seekTo(j);
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: b */
        public final void mo46539b() {
            this.f102a.pause();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: c */
        public final void mo46538c() {
            this.f102a.skipToNext();
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: d */
        public final void mo46537d() {
            this.f102a.skipToPrevious();
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$g */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$g.class */
    static final class C0059g extends AbstractC0057e {

        /* renamed from: a */
        private AbstractC0088b f103a;

        public C0059g(AbstractC0088b abstractC0088b) {
            this.f103a = abstractC0088b;
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46542a() {
            try {
                this.f103a.mo46421s();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in play.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46541a(float f) {
            if (f != BitmapDescriptorFactory.HUE_RED) {
                try {
                    this.f103a.mo46464a(f);
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in setPlaybackSpeed.", e);
                    return;
                }
            }
            throw new IllegalArgumentException("speed must not be zero");
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: a */
        public final void mo46540a(long j) {
            try {
                this.f103a.mo46447b(j);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in seekTo.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: b */
        public final void mo46539b() {
            try {
                this.f103a.mo46420t();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in pause.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: c */
        public final void mo46538c() {
            try {
                this.f103a.mo46418v();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToNext.", e);
            }
        }

        @Override // android.support.p008v4.media.session.MediaControllerCompat.AbstractC0057e
        /* renamed from: d */
        public final void mo46537d() {
            try {
                this.f103a.mo46417w();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", e);
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.f79b = token;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f78a = new MediaControllerImplApi21(context, token);
                return;
            } else {
                this.f78a = new C0055c(token);
                return;
            }
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat != null) {
            MediaSessionCompat.Token mo46504b = mediaSessionCompat.f105a.mo46504b();
            this.f79b = mo46504b;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f78a = new MediaControllerImplApi21(context, mo46504b);
                return;
            } else {
                this.f78a = new C0055c(mo46504b);
                return;
            }
        }
        throw new IllegalArgumentException("session must not be null");
    }

    /* renamed from: a */
    public final AbstractC0057e m46573a() {
        return this.f78a.mo46560a();
    }

    /* renamed from: a */
    public final void m46572a(AbstractC0050a abstractC0050a) {
        if (abstractC0050a != null) {
            if (this.f80c.remove(abstractC0050a) == null) {
                Log.w("MediaControllerCompat", "the callback has never been registered");
                return;
            }
            try {
                this.f78a.mo46558a(abstractC0050a);
                return;
            } finally {
                abstractC0050a.m46561a((Handler) null);
            }
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* renamed from: a */
    public final void m46571a(AbstractC0050a abstractC0050a, Handler handler) {
        if (abstractC0050a != null) {
            if (this.f80c.putIfAbsent(abstractC0050a, Boolean.TRUE) != null) {
                Log.w("MediaControllerCompat", "the callback has already been registered");
                return;
            }
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler();
            }
            abstractC0050a.m46561a(handler2);
            this.f78a.mo46557a(abstractC0050a, handler2);
            return;
        }
        throw new IllegalArgumentException("callback must not be null");
    }

    /* renamed from: a */
    public final boolean m46570a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f78a.mo46556a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    /* renamed from: b */
    public final PlaybackStateCompat m46569b() {
        return this.f78a.mo46555b();
    }

    /* renamed from: c */
    public final CharSequence m46568c() {
        return this.f78a.mo46551e();
    }

    /* renamed from: d */
    public final int m46567d() {
        return this.f78a.mo46549g();
    }

    /* renamed from: e */
    public final int m46566e() {
        return this.f78a.mo46548h();
    }

    /* renamed from: f */
    public final long m46565f() {
        return this.f78a.mo46547i();
    }

    /* renamed from: g */
    public final boolean m46564g() {
        return this.f78a.mo46545k();
    }

    /* renamed from: h */
    public final Bundle m46563h() {
        return this.f78a.mo46543m();
    }
}

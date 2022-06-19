package android.support.p001v4.media.session;

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
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.AbstractC0055a;
import android.support.p001v4.media.session.AbstractC0058b;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.core.app.C0467d;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.C1081a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    static class MediaControllerImplApi21 {

        /* renamed from: a */
        final Object f104a;

        /* renamed from: b */
        final MediaSessionCompat.Token f105b;

        /* renamed from: c */
        private final List<AbstractC0044a> f106c;

        /* renamed from: d */
        private HashMap<AbstractC0044a, BinderC0043a> f107d;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a */
            private WeakReference<MediaControllerImplApi21> f108a;

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f108a.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f104a) {
                    mediaControllerImplApi21.f105b.m22391a(AbstractC0058b.AbstractBinderC0059a.m22365a(C0467d.m20805a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f105b.m22390a(C1081a.m18131a(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                    mediaControllerImplApi21.m22413a();
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        public static class BinderC0043a extends AbstractC0044a.BinderC0047c {
            BinderC0043a(AbstractC0044a abstractC0044a) {
                super(abstractC0044a);
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22378a() {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22376a(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22375a(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22374a(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22372a(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.p001v4.media.session.MediaControllerCompat.AbstractC0044a.BinderC0047c, android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22370a(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }
        }

        /* renamed from: a */
        void m22413a() {
            if (this.f105b.m22392a() == null) {
                return;
            }
            for (AbstractC0044a abstractC0044a : this.f106c) {
                BinderC0043a binderC0043a = new BinderC0043a(abstractC0044a);
                this.f107d.put(abstractC0044a, binderC0043a);
                abstractC0044a.f111c = binderC0043a;
                try {
                    this.f105b.m22392a().mo22354a(binderC0043a);
                    abstractC0044a.m22410a(13, null, null);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                }
            }
            this.f106c.clear();
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0044a implements IBinder.DeathRecipient {

        /* renamed from: a */
        final MediaController.Callback f109a;

        /* renamed from: b */
        HandlerC0046b f110b;

        /* renamed from: c */
        AbstractC0055a f111c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        private static class C0045a extends MediaController.Callback {

            /* renamed from: a */
            private final WeakReference<AbstractC0044a> f112a;

            C0045a(AbstractC0044a abstractC0044a) {
                this.f112a = new WeakReference<>(abstractC0044a);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22407a(new C0048b(playbackInfo.getPlaybackType(), AudioAttributesCompat.m19165a(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.m22399a(bundle);
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22409a(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22408a(MediaMetadataCompat.m22418a(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a == null || abstractC0044a.f111c != null) {
                    return;
                }
                abstractC0044a.m22406a(PlaybackStateCompat.m22385a(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22403a(MediaSessionCompat.QueueItem.m22397a((List<?>) list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22405a(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22401b();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.m22399a(bundle);
                AbstractC0044a abstractC0044a = this.f112a.get();
                if (abstractC0044a != null) {
                    if (abstractC0044a.f111c != null && Build.VERSION.SDK_INT < 23) {
                        return;
                    }
                    abstractC0044a.m22404a(str, bundle);
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        public class HandlerC0046b extends Handler {

            /* renamed from: a */
            boolean f113a;

            /* renamed from: b */
            final /* synthetic */ AbstractC0044a f114b;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (!this.f113a) {
                    return;
                }
                switch (message.what) {
                    case 1:
                        Bundle data = message.getData();
                        MediaSessionCompat.m22399a(data);
                        this.f114b.m22404a((String) message.obj, data);
                        return;
                    case 2:
                        this.f114b.m22406a((PlaybackStateCompat) message.obj);
                        return;
                    case 3:
                        this.f114b.m22408a((MediaMetadataCompat) message.obj);
                        return;
                    case 4:
                        this.f114b.m22407a((C0048b) message.obj);
                        return;
                    case 5:
                        this.f114b.m22403a((List) message.obj);
                        return;
                    case 6:
                        this.f114b.m22405a((CharSequence) message.obj);
                        return;
                    case 7:
                        Bundle bundle = (Bundle) message.obj;
                        MediaSessionCompat.m22399a(bundle);
                        this.f114b.m22409a(bundle);
                        return;
                    case 8:
                        this.f114b.m22401b();
                        return;
                    case 9:
                        this.f114b.m22411a(((Integer) message.obj).intValue());
                        return;
                    case 10:
                    default:
                        return;
                    case 11:
                        this.f114b.m22402a(((Boolean) message.obj).booleanValue());
                        return;
                    case 12:
                        this.f114b.m22400b(((Integer) message.obj).intValue());
                        return;
                    case 13:
                        this.f114b.m22412a();
                        return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        public static class BinderC0047c extends AbstractC0055a.AbstractBinderC0056a {

            /* renamed from: a */
            private final WeakReference<AbstractC0044a> f115a;

            BinderC0047c(AbstractC0044a abstractC0044a) {
                this.f115a = new WeakReference<>(abstractC0044a);
            }

            /* renamed from: a */
            public void mo22378a() {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(8, null, null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22377a(int i) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(9, Integer.valueOf(i), null);
                }
            }

            /* renamed from: a */
            public void mo22376a(Bundle bundle) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(7, bundle, null);
                }
            }

            /* renamed from: a */
            public void mo22375a(MediaMetadataCompat mediaMetadataCompat) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(3, mediaMetadataCompat, null);
                }
            }

            /* renamed from: a */
            public void mo22374a(ParcelableVolumeInfo parcelableVolumeInfo) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(4, parcelableVolumeInfo != null ? new C0048b(parcelableVolumeInfo.f128a, parcelableVolumeInfo.f129b, parcelableVolumeInfo.f130c, parcelableVolumeInfo.f131d, parcelableVolumeInfo.f132e) : null, null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22373a(PlaybackStateCompat playbackStateCompat) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(2, playbackStateCompat, null);
                }
            }

            /* renamed from: a */
            public void mo22372a(CharSequence charSequence) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(6, charSequence, null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22371a(String str, Bundle bundle) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(1, str, bundle);
                }
            }

            /* renamed from: a */
            public void mo22370a(List<MediaSessionCompat.QueueItem> list) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(5, list, null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: a */
            public void mo22369a(boolean z) {
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22368b() {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(13, null, null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22367b(int i) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.p001v4.media.session.AbstractC0055a
            /* renamed from: b */
            public void mo22366b(boolean z) {
                AbstractC0044a abstractC0044a = this.f115a.get();
                if (abstractC0044a != null) {
                    abstractC0044a.m22410a(11, Boolean.valueOf(z), null);
                }
            }
        }

        public AbstractC0044a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f109a = new C0045a(this);
                return;
            }
            this.f109a = null;
            this.f111c = new BinderC0047c(this);
        }

        /* renamed from: a */
        public void m22412a() {
        }

        /* renamed from: a */
        public void m22411a(int i) {
        }

        /* renamed from: a */
        void m22410a(int i, Object obj, Bundle bundle) {
            if (this.f110b != null) {
                Message obtainMessage = this.f110b.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        /* renamed from: a */
        public void m22409a(Bundle bundle) {
        }

        /* renamed from: a */
        public void m22408a(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* renamed from: a */
        public void m22407a(C0048b c0048b) {
        }

        /* renamed from: a */
        public void m22406a(PlaybackStateCompat playbackStateCompat) {
        }

        /* renamed from: a */
        public void m22405a(CharSequence charSequence) {
        }

        /* renamed from: a */
        public void m22404a(String str, Bundle bundle) {
        }

        /* renamed from: a */
        public void m22403a(List<MediaSessionCompat.QueueItem> list) {
        }

        /* renamed from: a */
        public void m22402a(boolean z) {
        }

        /* renamed from: b */
        public void m22401b() {
        }

        /* renamed from: b */
        public void m22400b(int i) {
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    public static final class C0048b {

        /* renamed from: a */
        private final int f116a;

        /* renamed from: b */
        private final AudioAttributesCompat f117b;

        /* renamed from: c */
        private final int f118c;

        /* renamed from: d */
        private final int f119d;

        /* renamed from: e */
        private final int f120e;

        C0048b(int i, int i2, int i3, int i4, int i5) {
            this(i, new AudioAttributesCompat.C0890a().m19162a(i2).m19163a(), i3, i4, i5);
        }

        C0048b(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f116a = i;
            this.f117b = audioAttributesCompat;
            this.f118c = i2;
            this.f119d = i3;
            this.f120e = i4;
        }
    }
}

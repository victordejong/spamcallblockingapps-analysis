package android.support.p003v4.media.session;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import java.util.List;
/* renamed from: android.support.v4.media.session.c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c.class */
class C0062c {

    /* renamed from: android.support.v4.media.session.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$a.class */
    public interface AbstractC0063a {
        /* renamed from: a */
        void mo35800a(Object obj);

        /* renamed from: b */
        void mo35799b(int i, int i2, int i3, int i4, int i5);

        /* renamed from: c */
        void mo35798c(Object obj);

        /* renamed from: d */
        void mo35797d(String str, Bundle bundle);

        /* renamed from: k0 */
        void mo35796k0(Bundle bundle);

        /* renamed from: n0 */
        void mo35795n0(List<?> list);

        /* renamed from: w0 */
        void mo35794w0(CharSequence charSequence);

        /* renamed from: x0 */
        void mo35793x0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.c$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$b.class */
    public static class C0064b<T extends AbstractC0063a> extends MediaController.Callback {

        /* renamed from: a */
        protected final T f129a;

        public C0064b(T t) {
            this.f129a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f129a.mo35799b(playbackInfo.getPlaybackType(), C0065c.m35791b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            this.f129a.mo35796k0(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f129a.mo35800a(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f129a.mo35798c(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f129a.mo35795n0(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f129a.mo35794w0(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.f129a.mo35793x0();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            this.f129a.mo35797d(str, bundle);
        }
    }

    /* renamed from: android.support.v4.media.session.c$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$c.class */
    public static class C0065c {
        /* renamed from: a */
        public static AudioAttributes m35792a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        /* renamed from: b */
        public static int m35791b(Object obj) {
            return m35790c(m35792a(obj));
        }

        /* renamed from: c */
        private static int m35790c(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            int usage = audioAttributes.getUsage();
            if (usage == 13) {
                return 1;
            }
            switch (usage) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
    }

    /* renamed from: a */
    public static Object m35804a(AbstractC0063a abstractC0063a) {
        return new C0064b(abstractC0063a);
    }

    /* renamed from: b */
    public static boolean m35803b(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    /* renamed from: c */
    public static Object m35802c(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    /* renamed from: d */
    public static void m35801d(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }
}

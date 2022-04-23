package android.support.p001v4.media.session;

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
class C0055c {

    /* renamed from: android.support.v4.media.session.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$a.class */
    public interface AbstractC0056a {
        /* renamed from: a */
        void m15044a(Object obj);

        /* renamed from: b */
        void m15043b(int i, int i2, int i3, int i4, int i5);

        /* renamed from: c */
        void m15042c(Object obj);

        /* renamed from: d */
        void m15041d(String str, Bundle bundle);

        /* renamed from: g0 */
        void m15040g0(CharSequence charSequence);

        /* renamed from: j0 */
        void m15039j0();

        /* renamed from: u0 */
        void m15038u0(Bundle bundle);

        /* renamed from: z0 */
        void m15037z0(List<?> list);
    }

    /* renamed from: android.support.v4.media.session.c$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$b.class */
    static class C0057b<T extends AbstractC0056a> extends MediaController.Callback {

        /* renamed from: a */
        protected final T f115a;

        public C0057b(T t) {
            this.f115a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f115a.m15043b(playbackInfo.getPlaybackType(), C0058c.m15035b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.m15086a(bundle);
            this.f115a.m15038u0(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f115a.m15044a(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f115a.m15042c(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f115a.m15037z0(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f115a.m15040g0(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.f115a.m15039j0();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.m15086a(bundle);
            this.f115a.m15041d(str, bundle);
        }
    }

    /* renamed from: android.support.v4.media.session.c$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$c.class */
    public static class C0058c {
        /* renamed from: a */
        public static AudioAttributes m15036a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        /* renamed from: b */
        public static int m15035b(Object obj) {
            return m15034c(m15036a(obj));
        }

        /* renamed from: c */
        private static int m15034c(AudioAttributes audioAttributes) {
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
    public static Object m15048a(AbstractC0056a aVar) {
        return new C0057b(aVar);
    }

    /* renamed from: b */
    public static boolean m15047b(Object obj, KeyEvent keyEvent) {
        return ((MediaController) obj).dispatchMediaButtonEvent(keyEvent);
    }

    /* renamed from: c */
    public static Object m15046c(Context context, Object obj) {
        return new MediaController(context, (MediaSession.Token) obj);
    }

    /* renamed from: d */
    public static void m15045d(Object obj, String str, Bundle bundle, ResultReceiver resultReceiver) {
        ((MediaController) obj).sendCommand(str, bundle, resultReceiver);
    }
}

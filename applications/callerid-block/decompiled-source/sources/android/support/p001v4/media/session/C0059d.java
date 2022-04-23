package android.support.p001v4.media.session;

import android.media.session.MediaSession;
/* renamed from: android.support.v4.media.session.d */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/d.class */
class C0059d {

    /* renamed from: android.support.v4.media.session.d$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/d$a.class */
    static class C0060a {
        /* renamed from: a */
        public static Object m15032a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        /* renamed from: b */
        public static long m15031b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }

    /* renamed from: a */
    public static Object m15033a(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }
}

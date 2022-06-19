package android.support.p003v4.media.session;

import android.media.session.MediaSession;
/* renamed from: android.support.v4.media.session.d */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/d.class */
class C0066d {

    /* renamed from: android.support.v4.media.session.d$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/d$a.class */
    static class C0067a {
        /* renamed from: a */
        public static Object m35788a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        /* renamed from: b */
        public static long m35787b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }

    /* renamed from: a */
    public static Object m35789a(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }
}

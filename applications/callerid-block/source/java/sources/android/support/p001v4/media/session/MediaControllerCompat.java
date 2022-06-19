package android.support.p001v4.media.session;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import java.util.HashSet;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a */
    private final AbstractC0044b f82a;

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0042a implements IBinder.DeathRecipient {

        /* renamed from: a */
        final Object f83a;

        /* renamed from: b */
        HandlerC0043a f84b;

        /* renamed from: c */
        AbstractC0053a f85c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        public class HandlerC0043a extends Handler {
        }

        public AbstractC0042a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f83a = C0055c.m15048a(new b(this));
            } else {
                this.f85c = new c(this);
            }
        }

        /* renamed from: a */
        public void m15096a(C0045f c0045f) {
        }

        /* renamed from: b */
        public void m15095b(Bundle bundle) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m15088i(8, null, null);
        }

        /* renamed from: c */
        public void m15094c(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* renamed from: d */
        public void m15093d(PlaybackStateCompat playbackStateCompat) {
        }

        /* renamed from: e */
        public void m15092e(List<MediaSessionCompat.QueueItem> list) {
        }

        /* renamed from: f */
        public void m15091f(CharSequence charSequence) {
        }

        /* renamed from: g */
        public void m15090g() {
        }

        /* renamed from: h */
        public void m15089h(String str, Bundle bundle) {
        }

        /* renamed from: i */
        void m15088i(int i, Object obj, Bundle bundle) {
            HandlerC0043a handlerC0043a = this.f84b;
            if (handlerC0043a != null) {
                Message obtainMessage = handlerC0043a.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    interface AbstractC0044b {
        /* renamed from: a */
        boolean m15087a(KeyEvent keyEvent);
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$f.class */
    public static final class C0045f {
        C0045f(int i, int i2, int i3, int i4, int i5) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        d mediaControllerImplApi21;
        new HashSet();
        if (token != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                mediaControllerImplApi21 = new d(context, token);
            } else if (i >= 23) {
                mediaControllerImplApi21 = new c(context, token);
            } else if (i < 21) {
                this.f82a = new e(token);
                return;
            } else {
                mediaControllerImplApi21 = new MediaControllerImplApi21(context, token);
            }
            this.f82a = mediaControllerImplApi21;
            return;
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    /* renamed from: a */
    public boolean m15097a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f82a.m15087a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}

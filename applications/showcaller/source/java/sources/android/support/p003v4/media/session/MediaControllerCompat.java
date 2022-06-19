package android.support.p003v4.media.session;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p003v4.media.MediaMetadataCompat;
import android.support.p003v4.media.session.AbstractC0057a;
import android.support.p003v4.media.session.AbstractC0059b;
import android.support.p003v4.media.session.C0062c;
import android.support.p003v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.C0561e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaControllerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat.class */
public final class MediaControllerCompat {

    /* renamed from: a */
    private final AbstractC0046b f79a;

    /* renamed from: b */
    private final MediaSessionCompat.Token f80b;

    /* renamed from: c */
    private final HashSet<AbstractC0042a> f81c = new HashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
    public static class MediaControllerImplApi21 implements AbstractC0046b {

        /* renamed from: a */
        protected final Object f82a;

        /* renamed from: b */
        final Object f83b = new Object();

        /* renamed from: c */
        private final List<AbstractC0042a> f84c = new ArrayList();

        /* renamed from: d */
        private HashMap<AbstractC0042a, BinderC0041a> f85d = new HashMap<>();

        /* renamed from: e */
        final MediaSessionCompat.Token f86e;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: d */
            private WeakReference<MediaControllerImplApi21> f87d;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f87d = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f87d.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f83b) {
                    mediaControllerImplApi21.f86e.m35831e(AbstractC0059b.AbstractBinderC0060a.m35807c0(C0561e.m33461a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f86e.m35830f(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                    mediaControllerImplApi21.m35855b();
                }
            }
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a.class */
        public static class BinderC0041a extends AbstractC0042a.BinderC0045c {
            BinderC0041a(AbstractC0042a abstractC0042a) {
                super(abstractC0042a);
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: B6 */
            public void mo35818B6(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: N3 */
            public void mo35815N3(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: k0 */
            public void mo35812k0(Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: n0 */
            public void mo35811n0(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: w0 */
            public void mo35809w0(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0042a.BinderC0045c, android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: x0 */
            public void mo35808x0() {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f86e = token;
            Object m35802c = C0062c.m35802c(context, token.m35832d());
            this.f82a = m35802c;
            if (m35802c != null) {
                if (token.m35833c() != null) {
                    return;
                }
                m35854c();
                return;
            }
            throw new RemoteException();
        }

        /* renamed from: c */
        private void m35854c() {
            m35853d("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0046b
        /* renamed from: a */
        public boolean mo35843a(KeyEvent keyEvent) {
            return C0062c.m35803b(this.f82a, keyEvent);
        }

        /* renamed from: b */
        void m35855b() {
            if (this.f86e.m35833c() == null) {
                return;
            }
            for (AbstractC0042a abstractC0042a : this.f84c) {
                BinderC0041a binderC0041a = new BinderC0041a(abstractC0042a);
                this.f85d.put(abstractC0042a, binderC0041a);
                abstractC0042a.f90c = binderC0041a;
                try {
                    this.f86e.m35833c().mo35806W0(binderC0041a);
                    abstractC0042a.m35844i(13, null, null);
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
                }
            }
            this.f84c.clear();
        }

        /* renamed from: d */
        public void m35853d(String str, Bundle bundle, ResultReceiver resultReceiver) {
            C0062c.m35801d(this.f82a, str, bundle, resultReceiver);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a.class */
    public static abstract class AbstractC0042a implements IBinder.DeathRecipient {

        /* renamed from: a */
        final Object f88a;

        /* renamed from: b */
        HandlerC0043a f89b;

        /* renamed from: c */
        AbstractC0057a f90c;

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$a.class */
        public class HandlerC0043a extends Handler {
        }

        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$b.class */
        private static class C0044b implements C0062c.AbstractC0063a {

            /* renamed from: a */
            private final WeakReference<AbstractC0042a> f91a;

            C0044b(AbstractC0042a abstractC0042a) {
                this.f91a = new WeakReference<>(abstractC0042a);
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: a */
            public void mo35800a(Object obj) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35850c(MediaMetadataCompat.m35882a(obj));
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: b */
            public void mo35799b(int i, int i2, int i3, int i4, int i5) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35852a(new C0050f(i, i2, i3, i4, i5));
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: c */
            public void mo35798c(Object obj) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a == null || abstractC0042a.f90c != null) {
                    return;
                }
                abstractC0042a.m35849d(PlaybackStateCompat.m35825a(obj));
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: d */
            public void mo35797d(String str, Bundle bundle) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    if (abstractC0042a.f90c != null && Build.VERSION.SDK_INT < 23) {
                        return;
                    }
                    abstractC0042a.m35845h(str, bundle);
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: k0 */
            public void mo35796k0(Bundle bundle) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35851b(bundle);
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: n0 */
            public void mo35795n0(List<?> list) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35848e(MediaSessionCompat.QueueItem.m35840b(list));
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: w0 */
            public void mo35794w0(CharSequence charSequence) {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35847f(charSequence);
                }
            }

            @Override // android.support.p003v4.media.session.C0062c.AbstractC0063a
            /* renamed from: x0 */
            public void mo35793x0() {
                AbstractC0042a abstractC0042a = this.f91a.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35846g();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$a$c.class */
        public static class BinderC0045c extends AbstractC0057a.AbstractBinderC0058a {

            /* renamed from: d */
            private final WeakReference<AbstractC0042a> f92d;

            BinderC0045c(AbstractC0042a abstractC0042a) {
                this.f92d = new WeakReference<>(abstractC0042a);
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: A3 */
            public void mo35819A3(boolean z) {
            }

            /* renamed from: B6 */
            public void mo35818B6(ParcelableVolumeInfo parcelableVolumeInfo) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(4, parcelableVolumeInfo != null ? new C0050f(parcelableVolumeInfo.f106d, parcelableVolumeInfo.f107e, parcelableVolumeInfo.f108f, parcelableVolumeInfo.f109g, parcelableVolumeInfo.f110h) : null, null);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: I0 */
            public void mo35817I0(String str, Bundle bundle) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(1, str, bundle);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: L1 */
            public void mo35816L1() {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(13, null, null);
                }
            }

            /* renamed from: N3 */
            public void mo35815N3(MediaMetadataCompat mediaMetadataCompat) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: N4 */
            public void mo35814N4(int i) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: O2 */
            public void mo35813O2(boolean z) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(11, Boolean.valueOf(z), null);
                }
            }

            /* renamed from: k0 */
            public void mo35812k0(Bundle bundle) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(7, bundle, null);
                }
            }

            /* renamed from: n0 */
            public void mo35811n0(List<MediaSessionCompat.QueueItem> list) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(5, list, null);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            public void onRepeatModeChanged(int i) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(9, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.p003v4.media.session.AbstractC0057a
            /* renamed from: q6 */
            public void mo35810q6(PlaybackStateCompat playbackStateCompat) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(2, playbackStateCompat, null);
                }
            }

            /* renamed from: w0 */
            public void mo35809w0(CharSequence charSequence) {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(6, charSequence, null);
                }
            }

            /* renamed from: x0 */
            public void mo35808x0() {
                AbstractC0042a abstractC0042a = this.f92d.get();
                if (abstractC0042a != null) {
                    abstractC0042a.m35844i(8, null, null);
                }
            }
        }

        public AbstractC0042a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f88a = C0062c.m35804a(new C0044b(this));
                return;
            }
            BinderC0045c binderC0045c = new BinderC0045c(this);
            this.f90c = binderC0045c;
            this.f88a = binderC0045c;
        }

        /* renamed from: a */
        public void m35852a(C0050f c0050f) {
        }

        /* renamed from: b */
        public void m35851b(Bundle bundle) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m35844i(8, null, null);
        }

        /* renamed from: c */
        public void m35850c(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* renamed from: d */
        public void m35849d(PlaybackStateCompat playbackStateCompat) {
        }

        /* renamed from: e */
        public void m35848e(List<MediaSessionCompat.QueueItem> list) {
        }

        /* renamed from: f */
        public void m35847f(CharSequence charSequence) {
        }

        /* renamed from: g */
        public void m35846g() {
        }

        /* renamed from: h */
        public void m35845h(String str, Bundle bundle) {
        }

        /* renamed from: i */
        void m35844i(int i, Object obj, Bundle bundle) {
            if (this.f89b == null) {
                return;
            }
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$b.class */
    public interface AbstractC0046b {
        /* renamed from: a */
        boolean mo35843a(KeyEvent keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$c.class */
    public static class C0047c extends MediaControllerImplApi21 {
        public C0047c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$d.class */
    public static class C0048d extends C0047c {
        public C0048d(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.MediaControllerCompat$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$e.class */
    public static class C0049e implements AbstractC0046b {

        /* renamed from: a */
        private AbstractC0059b f93a;

        public C0049e(MediaSessionCompat.Token token) {
            this.f93a = AbstractC0059b.AbstractBinderC0060a.m35807c0((IBinder) token.m35832d());
        }

        @Override // android.support.p003v4.media.session.MediaControllerCompat.AbstractC0046b
        /* renamed from: a */
        public boolean mo35843a(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f93a.mo35805w3(keyEvent);
                    return false;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", e);
                    return false;
                }
            }
            throw new IllegalArgumentException("event may not be null.");
        }
    }

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$f */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$f.class */
    public static final class C0050f {

        /* renamed from: a */
        private final int f94a;

        /* renamed from: b */
        private final int f95b;

        /* renamed from: c */
        private final int f96c;

        /* renamed from: d */
        private final int f97d;

        /* renamed from: e */
        private final int f98e;

        C0050f(int i, int i2, int i3, int i4, int i5) {
            this.f94a = i;
            this.f95b = i2;
            this.f96c = i3;
            this.f97d = i4;
            this.f98e = i5;
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token != null) {
            this.f80b = token;
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                this.f79a = new C0048d(context, token);
                return;
            } else if (i >= 23) {
                this.f79a = new C0047c(context, token);
                return;
            } else if (i >= 21) {
                this.f79a = new MediaControllerImplApi21(context, token);
                return;
            } else {
                this.f79a = new C0049e(token);
                return;
            }
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    /* renamed from: a */
    public boolean m35856a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f79a.mo35843a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }
}

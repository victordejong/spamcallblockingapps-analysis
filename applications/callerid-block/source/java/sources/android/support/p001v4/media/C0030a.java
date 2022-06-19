package android.support.p001v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import java.util.List;
/* renamed from: android.support.v4.media.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/a.class */
class C0030a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.a$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$a.class */
    public interface AbstractC0031a {
        /* renamed from: a */
        void m15126a();

        /* renamed from: b */
        void m15125b();

        /* renamed from: c */
        void m15124c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.a$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$b.class */
    public static class C0032b<T extends AbstractC0031a> extends MediaBrowser.ConnectionCallback {

        /* renamed from: a */
        protected final T f80a;

        public C0032b(T t) {
            this.f80a = t;
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnected() {
            this.f80a.m15126a();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionFailed() {
            this.f80a.m15125b();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionSuspended() {
            this.f80a.m15124c();
        }
    }

    /* renamed from: android.support.v4.media.a$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$c.class */
    static class C0033c {
        /* renamed from: a */
        public static Object m15123a(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getDescription();
        }

        /* renamed from: b */
        public static int m15122b(Object obj) {
            return ((MediaBrowser.MediaItem) obj).getFlags();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.a$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$d.class */
    public interface AbstractC0034d {
        /* renamed from: c */
        void m15121c(String str, List<?> list);

        /* renamed from: d */
        void m15120d(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.a$e */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/a$e.class */
    public static class C0035e<T extends AbstractC0034d> extends MediaBrowser.SubscriptionCallback {

        /* renamed from: a */
        protected final T f81a;

        public C0035e(T t) {
            this.f81a = t;
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
            this.f81a.m15121c(str, list);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onError(String str) {
            this.f81a.m15120d(str);
        }
    }

    /* renamed from: a */
    public static void m15133a(Object obj) {
        ((MediaBrowser) obj).connect();
    }

    /* renamed from: b */
    public static Object m15132b(Context context, ComponentName componentName, Object obj, Bundle bundle) {
        return new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) obj, bundle);
    }

    /* renamed from: c */
    public static Object m15131c(AbstractC0031a abstractC0031a) {
        return new C0032b(abstractC0031a);
    }

    /* renamed from: d */
    public static Object m15130d(AbstractC0034d abstractC0034d) {
        return new C0035e(abstractC0034d);
    }

    /* renamed from: e */
    public static void m15129e(Object obj) {
        ((MediaBrowser) obj).disconnect();
    }

    /* renamed from: f */
    public static Bundle m15128f(Object obj) {
        return ((MediaBrowser) obj).getExtras();
    }

    /* renamed from: g */
    public static Object m15127g(Object obj) {
        return ((MediaBrowser) obj).getSessionToken();
    }
}

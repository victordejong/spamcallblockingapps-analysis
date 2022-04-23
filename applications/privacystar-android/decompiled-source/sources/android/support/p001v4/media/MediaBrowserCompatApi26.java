package android.support.p001v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.p001v4.media.MediaBrowserCompatApi21;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.List;
@RequiresApi(26)
/* renamed from: android.support.v4.media.MediaBrowserCompatApi26 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompatApi26.class */
class MediaBrowserCompatApi26 {

    /* renamed from: android.support.v4.media.MediaBrowserCompatApi26$SubscriptionCallback */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback.class */
    interface SubscriptionCallback extends MediaBrowserCompatApi21.SubscriptionCallback {
        void onChildrenLoaded(@NonNull String str, List<?> list, @NonNull Bundle bundle);

        void onError(@NonNull String str, @NonNull Bundle bundle);
    }

    /* renamed from: android.support.v4.media.MediaBrowserCompatApi26$SubscriptionCallbackProxy */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy.class */
    static class SubscriptionCallbackProxy<T extends SubscriptionCallback> extends MediaBrowserCompatApi21.SubscriptionCallbackProxy<T> {
        SubscriptionCallbackProxy(T t) {
            super(t);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((SubscriptionCallback) this.mSubscriptionCallback).onChildrenLoaded(str, list, bundle);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onError(@NonNull String str, @NonNull Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((SubscriptionCallback) this.mSubscriptionCallback).onError(str, bundle);
        }
    }

    private MediaBrowserCompatApi26() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object createSubscriptionCallback(SubscriptionCallback subscriptionCallback) {
        return new SubscriptionCallbackProxy(subscriptionCallback);
    }

    public static void subscribe(Object obj, String str, Bundle bundle, Object obj2) {
        ((MediaBrowser) obj).subscribe(str, bundle, (MediaBrowser.SubscriptionCallback) obj2);
    }

    public static void unsubscribe(Object obj, String str, Object obj2) {
        ((MediaBrowser) obj).unsubscribe(str, (MediaBrowser.SubscriptionCallback) obj2);
    }
}

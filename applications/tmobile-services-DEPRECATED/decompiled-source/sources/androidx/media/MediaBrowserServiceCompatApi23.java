package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import androidx.annotation.RequiresApi;
import androidx.media.MediaBrowserServiceCompatApi21;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi23.class */
class MediaBrowserServiceCompatApi23 {

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor.class */
    static class MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi21.MediaBrowserServiceAdaptor {
        /* JADX INFO: Access modifiers changed from: package-private */
        public MediaBrowserServiceAdaptor(Context context, ServiceCompatProxy serviceCompatProxy) {
            super(context, serviceCompatProxy);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
            ((ServiceCompatProxy) this.f4294f).mo17988b(str, new MediaBrowserServiceCompatApi21.ResultWrapper<>(result));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy.class */
    public interface ServiceCompatProxy extends MediaBrowserServiceCompatApi21.ServiceCompatProxy {
        /* renamed from: b */
        void mo17988b(String str, MediaBrowserServiceCompatApi21.ResultWrapper<Parcel> resultWrapper);
    }

    private MediaBrowserServiceCompatApi23() {
    }

    /* renamed from: a */
    public static Object m17989a(Context context, ServiceCompatProxy serviceCompatProxy) {
        return new MediaBrowserServiceAdaptor(context, serviceCompatProxy);
    }
}

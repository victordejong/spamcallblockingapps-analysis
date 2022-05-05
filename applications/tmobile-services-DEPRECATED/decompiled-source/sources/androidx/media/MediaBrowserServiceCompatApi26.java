package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.media.MediaBrowserServiceCompatApi23;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi26.class */
class MediaBrowserServiceCompatApi26 {

    /* renamed from: a */
    static Field f4296a;

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor.class */
    static class MediaBrowserServiceAdaptor extends MediaBrowserServiceCompatApi23.MediaBrowserServiceAdaptor {
        MediaBrowserServiceAdaptor(Context context, ServiceCompatProxy serviceCompatProxy) {
            super(context, serviceCompatProxy);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
            MediaSessionCompat.ensureClassLoader(bundle);
            ((ServiceCompatProxy) this.f4294f).mo17984e(str, new ResultWrapper(result), bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi26$ResultWrapper.class */
    static class ResultWrapper {

        /* renamed from: a */
        MediaBrowserService.Result f4297a;

        ResultWrapper(MediaBrowserService.Result result) {
            this.f4297a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m17986a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* renamed from: b */
        public void m17985b(List<Parcel> list, int i) {
            try {
                MediaBrowserServiceCompatApi26.f4296a.setInt(this.f4297a, i);
            } catch (IllegalAccessException e) {
                Log.w("MBSCompatApi26", e);
            }
            this.f4297a.sendResult(m17986a(list));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy.class */
    public interface ServiceCompatProxy extends MediaBrowserServiceCompatApi23.ServiceCompatProxy {
        /* renamed from: e */
        void mo17984e(String str, ResultWrapper resultWrapper, Bundle bundle);
    }

    static {
        try {
            Field declaredField = MediaBrowserService.Result.class.getDeclaredField("mFlags");
            f4296a = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.w("MBSCompatApi26", e);
        }
    }

    private MediaBrowserServiceCompatApi26() {
    }

    /* renamed from: a */
    public static Object m17987a(Context context, ServiceCompatProxy serviceCompatProxy) {
        return new MediaBrowserServiceAdaptor(context, serviceCompatProxy);
    }
}

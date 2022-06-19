package androidx.media;

import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media.e */
/* loaded from: classes-dex2jar.jar:androidx/media/e.class */
class C0392e {

    /* renamed from: androidx.media.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$a.class */
    static class C0393a {

        /* renamed from: a */
        final String f2134a;

        /* renamed from: b */
        final Bundle f2135b;
    }

    /* renamed from: androidx.media.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$b.class */
    static class C0394b extends MediaBrowserService {

        /* renamed from: b */
        final AbstractC0396d f2136b;

        C0394b(Context context, AbstractC0396d abstractC0396d) {
            attachBaseContext(context);
            this.f2136b = abstractC0396d;
        }

        @Override // android.service.media.MediaBrowserService
        public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
            MediaSessionCompat.m15086a(bundle);
            C0393a m12907e = this.f2136b.m12907e(str, i, bundle == null ? null : new Bundle(bundle));
            return m12907e == null ? null : new MediaBrowserService.BrowserRoot(m12907e.f2134a, m12907e.f2135b);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
            this.f2136b.m12908b(str, new C0395c<>(result));
        }
    }

    /* renamed from: androidx.media.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$c.class */
    static class C0395c<T> {

        /* renamed from: a */
        MediaBrowserService.Result f2137a;

        C0395c(MediaBrowserService.Result result) {
            this.f2137a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m12910a(List<Parcel> list) {
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

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public void m12909b(T t) {
            if (t instanceof List) {
                this.f2137a.sendResult(m12910a((List) t));
            } else if (!(t instanceof Parcel)) {
                this.f2137a.sendResult(null);
            } else {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f2137a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
        }
    }

    /* renamed from: androidx.media.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$d.class */
    public interface AbstractC0396d {
        /* renamed from: b */
        void m12908b(String str, C0395c<List<Parcel>> c0395c);

        /* renamed from: e */
        C0393a m12907e(String str, int i, Bundle bundle);
    }

    /* renamed from: a */
    public static Object m12913a(Context context, AbstractC0396d abstractC0396d) {
        return new C0394b(context, abstractC0396d);
    }

    /* renamed from: b */
    public static IBinder m12912b(Object obj, Intent intent) {
        return ((MediaBrowserService) obj).onBind(intent);
    }

    /* renamed from: c */
    public static void m12911c(Object obj) {
        ((MediaBrowserService) obj).onCreate();
    }
}

package androidx.media;

import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.p003v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media.b */
/* loaded from: classes-dex2jar.jar:androidx/media/b.class */
class C0867b {

    /* renamed from: androidx.media.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$a.class */
    static class C0868a {

        /* renamed from: a */
        final String f3875a;

        /* renamed from: b */
        final Bundle f3876b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$b.class */
    public static class C0869b extends MediaBrowserService {

        /* renamed from: d */
        final AbstractC0871d f3877d;

        public C0869b(Context context, AbstractC0871d abstractC0871d) {
            attachBaseContext(context);
            this.f3877d = abstractC0871d;
        }

        @Override // android.service.media.MediaBrowserService
        public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            C0868a mo32241e = this.f3877d.mo32241e(str, i, bundle == null ? null : new Bundle(bundle));
            return mo32241e == null ? null : new MediaBrowserService.BrowserRoot(mo32241e.f3875a, mo32241e.f3876b);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
            this.f3877d.mo32242c(str, new C0870c<>(result));
        }
    }

    /* renamed from: androidx.media.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$c.class */
    static class C0870c<T> {

        /* renamed from: a */
        MediaBrowserService.Result f3878a;

        public C0870c(MediaBrowserService.Result result) {
            this.f3878a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m32244a(List<Parcel> list) {
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
        public void m32243b(T t) {
            if (t instanceof List) {
                this.f3878a.sendResult(m32244a((List) t));
            } else if (!(t instanceof Parcel)) {
                this.f3878a.sendResult(null);
            } else {
                Parcel parcel = (Parcel) t;
                parcel.setDataPosition(0);
                this.f3878a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
        }
    }

    /* renamed from: androidx.media.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$d.class */
    public interface AbstractC0871d {
        /* renamed from: c */
        void mo32242c(String str, C0870c<List<Parcel>> c0870c);

        /* renamed from: e */
        C0868a mo32241e(String str, int i, Bundle bundle);
    }

    /* renamed from: a */
    public static Object m32247a(Context context, AbstractC0871d abstractC0871d) {
        return new C0869b(context, abstractC0871d);
    }

    /* renamed from: b */
    public static IBinder m32246b(Object obj, Intent intent) {
        return ((MediaBrowserService) obj).onBind(intent);
    }

    /* renamed from: c */
    public static void m32245c(Object obj) {
        ((MediaBrowserService) obj).onCreate();
    }
}

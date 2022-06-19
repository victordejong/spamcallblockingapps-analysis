package androidx.media;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media/MediaBrowserServiceCompat$h$b.class */
public class MediaBrowserServiceCompat$h$b extends MediaBrowserService {

    /* renamed from: a */
    public final /* synthetic */ MediaBrowserServiceCompat.h f1097a;

    public MediaBrowserServiceCompat$h$b(MediaBrowserServiceCompat.h hVar, Context context) {
        this.f1097a = hVar;
        attachBaseContext(context);
    }

    @Override // android.service.media.MediaBrowserService
    @SuppressLint({"SyntheticAccessor"})
    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        MediaBrowserService.BrowserRoot browserRoot;
        String str2;
        Bundle bundle2;
        MediaSessionCompat.ensureClassLoader(bundle);
        MediaBrowserServiceCompat.C0128e c = this.f1097a.c(str, i, bundle == null ? null : new Bundle(bundle));
        if (c == null) {
            browserRoot = null;
        } else {
            str2 = c.f1039a;
            bundle2 = c.f1040b;
            browserRoot = new MediaBrowserService.BrowserRoot(str2, bundle2);
        }
        return browserRoot;
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        this.f1097a.d(str, new MediaBrowserServiceCompat.C0133n(result));
    }
}

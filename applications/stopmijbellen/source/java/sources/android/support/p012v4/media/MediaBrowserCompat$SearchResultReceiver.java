package android.support.p012v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.p012v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import p014b.C0710b;
/* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
class MediaBrowserCompat$SearchResultReceiver extends C0710b {
    @Override // p014b.C0710b
    /* renamed from: a */
    public void mo7445a(int i, Bundle bundle) {
        MediaSessionCompat.m8745a(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
            throw null;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
        if (parcelableArray != null) {
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
            }
        }
        throw null;
    }
}

package android.support.p001v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.support.p001v4.p002os.ResultReceiver;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: android.support.v4.media.MediaBrowserCompat$SearchResultReceiver */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/MediaBrowserCompat$SearchResultReceiver.class */
public class MediaBrowserCompat$SearchResultReceiver extends ResultReceiver {
    @Override // android.support.p001v4.p002os.ResultReceiver
    /* renamed from: a */
    public void mo43176a(int i, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle != null) {
            bundle2 = MediaSessionCompat.m43299H1(bundle);
        }
        if (i != 0 || bundle2 == null || !bundle2.containsKey("search_results")) {
            throw null;
        }
        Parcelable[] parcelableArray = bundle2.getParcelableArray("search_results");
        Objects.requireNonNull(parcelableArray);
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : parcelableArray) {
            arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
        }
        throw null;
    }
}

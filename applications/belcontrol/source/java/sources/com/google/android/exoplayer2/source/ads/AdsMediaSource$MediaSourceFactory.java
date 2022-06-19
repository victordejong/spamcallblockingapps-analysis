package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.source.MediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory.class */
public interface AdsMediaSource$MediaSourceFactory {
    MediaSource createMediaSource(Uri uri);

    int[] getSupportedTypes();
}

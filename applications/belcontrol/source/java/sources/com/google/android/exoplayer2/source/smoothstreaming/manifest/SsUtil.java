package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/SsUtil.class */
public final class SsUtil {
    private SsUtil() {
    }

    public static Uri fixManifestUri(Uri uri) {
        return Util.toLowerInvariant(uri.getLastPathSegment()).matches("manifest(\\(.+\\))?") ? uri : Uri.withAppendedPath(uri, "Manifest");
    }
}

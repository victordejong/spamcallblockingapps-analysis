package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MediaSourceFactory.class */
public interface MediaSourceFactory {
    MediaSource createMediaSource(Uri uri);

    int[] getSupportedTypes();

    MediaSourceFactory setStreamKeys(List<StreamKey> list);
}

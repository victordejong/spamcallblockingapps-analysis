package androidx.media2.exoplayer.external.offline;

import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/FilterableManifest.class */
public interface FilterableManifest<T> {
    T copy(List<StreamKey> list);
}

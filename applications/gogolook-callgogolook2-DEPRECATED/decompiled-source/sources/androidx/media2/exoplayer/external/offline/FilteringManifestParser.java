package androidx.media2.exoplayer.external.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.offline.FilterableManifest;
import androidx.media2.exoplayer.external.upstream.ParsingLoadable;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/FilteringManifestParser.class */
public final class FilteringManifestParser<T extends FilterableManifest<T>> implements ParsingLoadable.Parser<T> {
    public final ParsingLoadable.Parser<? extends T> parser;
    @Nullable
    public final List<StreamKey> streamKeys;

    public FilteringManifestParser(ParsingLoadable.Parser<? extends T> parser, @Nullable List<StreamKey> list) {
        this.parser = parser;
        this.streamKeys = list;
    }

    @Override // androidx.media2.exoplayer.external.upstream.ParsingLoadable.Parser
    public T parse(Uri uri, InputStream inputStream) throws IOException {
        FilterableManifest filterableManifest = (FilterableManifest) this.parser.parse(uri, inputStream);
        List<StreamKey> list = this.streamKeys;
        T t = (T) filterableManifest;
        if (list != null) {
            t = list.isEmpty() ? (T) filterableManifest : (T) ((FilterableManifest) filterableManifest.copy(this.streamKeys));
        }
        return t;
    }
}

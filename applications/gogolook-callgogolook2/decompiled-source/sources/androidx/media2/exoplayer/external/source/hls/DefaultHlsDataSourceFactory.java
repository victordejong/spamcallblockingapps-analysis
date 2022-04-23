package androidx.media2.exoplayer.external.source.hls;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/DefaultHlsDataSourceFactory.class */
public final class DefaultHlsDataSourceFactory implements HlsDataSourceFactory {
    public final DataSource.Factory dataSourceFactory;

    public DefaultHlsDataSourceFactory(DataSource.Factory factory) {
        this.dataSourceFactory = factory;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.HlsDataSourceFactory
    public DataSource createDataSource(int i) {
        return this.dataSourceFactory.createDataSource();
    }
}

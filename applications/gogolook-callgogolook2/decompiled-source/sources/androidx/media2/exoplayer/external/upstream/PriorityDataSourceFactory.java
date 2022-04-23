package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.util.PriorityTaskManager;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/PriorityDataSourceFactory.class */
public final class PriorityDataSourceFactory implements DataSource.Factory {
    public final int priority;
    public final PriorityTaskManager priorityTaskManager;
    public final DataSource.Factory upstreamFactory;

    public PriorityDataSourceFactory(DataSource.Factory factory, PriorityTaskManager priorityTaskManager, int i) {
        this.upstreamFactory = factory;
        this.priorityTaskManager = priorityTaskManager;
        this.priority = i;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
    public PriorityDataSource createDataSource() {
        return new PriorityDataSource(this.upstreamFactory.createDataSource(), this.priorityTaskManager, this.priority);
    }
}

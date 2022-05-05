package com.google.android.datatransport.runtime.scheduling.persistence;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import java.io.Closeable;
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/EventStore.class */
public interface EventStore extends Closeable {
    /* renamed from: C */
    Iterable<TransportContext> mo15274C();

    /* renamed from: f */
    int mo15257f();

    @Nullable
    /* renamed from: f0 */
    PersistedEvent mo15256f0(TransportContext transportContext, EventInternal eventInternal);

    /* renamed from: g */
    void mo15255g(Iterable<PersistedEvent> iterable);

    /* renamed from: k0 */
    long mo15249k0(TransportContext transportContext);

    /* renamed from: m0 */
    boolean mo15246m0(TransportContext transportContext);

    /* renamed from: n0 */
    void mo15245n0(Iterable<PersistedEvent> iterable);

    /* renamed from: v */
    Iterable<PersistedEvent> mo15238v(TransportContext transportContext);

    /* renamed from: x */
    void mo15235x(TransportContext transportContext, long j);
}

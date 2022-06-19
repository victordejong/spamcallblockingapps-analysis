package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent.class */
public final class AutoValue_PersistedEvent extends PersistedEvent {
    private final EventInternal event;

    /* renamed from: id */
    private final long f111id;
    private final TransportContext transportContext;

    public AutoValue_PersistedEvent(long j, TransportContext transportContext, EventInternal eventInternal) {
        this.f111id = j;
        Objects.requireNonNull(transportContext, "Null transportContext");
        this.transportContext = transportContext;
        Objects.requireNonNull(eventInternal, "Null event");
        this.event = eventInternal;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedEvent)) {
            return false;
        }
        PersistedEvent persistedEvent = (PersistedEvent) obj;
        if (this.f111id != persistedEvent.getId() || !this.transportContext.equals(persistedEvent.getTransportContext()) || !this.event.equals(persistedEvent.getEvent())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public EventInternal getEvent() {
        return this.event;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public long getId() {
        return this.f111id;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public TransportContext getTransportContext() {
        return this.transportContext;
    }

    public int hashCode() {
        long j = this.f111id;
        int i = (int) (j ^ (j >>> 32));
        return this.event.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.transportContext.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f111id + ", transportContext=" + this.transportContext + ", event=" + this.event + "}";
    }
}

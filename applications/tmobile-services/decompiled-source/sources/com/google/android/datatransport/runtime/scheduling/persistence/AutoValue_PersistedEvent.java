package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent.class */
public final class AutoValue_PersistedEvent extends PersistedEvent {

    /* renamed from: a */
    private final long f6778a;

    /* renamed from: b */
    private final TransportContext f6779b;

    /* renamed from: c */
    private final EventInternal f6780c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_PersistedEvent(long j, TransportContext transportContext, EventInternal eventInternal) {
        this.f6778a = j;
        if (transportContext != null) {
            this.f6779b = transportContext;
            if (eventInternal != null) {
                this.f6780c = eventInternal;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    /* renamed from: b */
    public EventInternal mo15278b() {
        return this.f6780c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    /* renamed from: c */
    public long mo15277c() {
        return this.f6778a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    /* renamed from: d */
    public TransportContext mo15276d() {
        return this.f6779b;
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
        if (this.f6778a != persistedEvent.mo15277c() || !this.f6779b.equals(persistedEvent.mo15276d()) || !this.f6780c.equals(persistedEvent.mo15278b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f6778a;
        int i = (int) (j ^ (j >>> 32));
        return this.f6780c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f6779b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f6778a + ", transportContext=" + this.f6779b + ", event=" + this.f6780c + "}";
    }
}

package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_BackendRequest.class */
final class AutoValue_BackendRequest extends BackendRequest {
    private final Iterable<EventInternal> events;
    private final byte[] extras;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder.class */
    public static final class Builder extends BackendRequest.Builder {
        private Iterable<EventInternal> events;
        private byte[] extras;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest build() {
            String str = "";
            if (this.events == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new AutoValue_BackendRequest(this.events, this.extras);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setEvents(Iterable<EventInternal> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.events = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public BackendRequest.Builder setExtras(byte[] bArr) {
            this.extras = bArr;
            return this;
        }
    }

    private AutoValue_BackendRequest(Iterable<EventInternal> iterable, byte[] bArr) {
        this.events = iterable;
        this.extras = bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.extras, r0 instanceof com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest ? ((com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest) r0).extras : r0.getExtras()) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.BackendRequest
            if (r0 == 0) goto L4e
            r0 = r4
            com.google.android.datatransport.runtime.backends.BackendRequest r0 = (com.google.android.datatransport.runtime.backends.BackendRequest) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<com.google.android.datatransport.runtime.EventInternal> r0 = r0.events
            r1 = r4
            java.lang.Iterable r1 = r1.getEvents()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.extras
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest
            if (r0 == 0) goto L3a
            r0 = r4
            com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest r0 = (com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest) r0
            byte[] r0 = r0.extras
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.getExtras()
            r4 = r0
        L3f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.backends.AutoValue_BackendRequest.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public Iterable<EventInternal> getEvents() {
        return this.events;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public byte[] getExtras() {
        return this.extras;
    }

    public int hashCode() {
        return ((this.events.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.extras);
    }

    public String toString() {
        return "BackendRequest{events=" + this.events + ", extras=" + Arrays.toString(this.extras) + "}";
    }
}

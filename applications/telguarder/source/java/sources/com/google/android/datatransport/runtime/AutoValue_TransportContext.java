package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_TransportContext.class */
final class AutoValue_TransportContext extends TransportContext {
    private final String backendName;
    private final byte[] extras;
    private final Priority priority;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_TransportContext$Builder.class */
    public static final class Builder extends TransportContext.Builder {
        private String backendName;
        private byte[] extras;
        private Priority priority;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext build() {
            String str = "";
            if (this.backendName == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.priority == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new AutoValue_TransportContext(this.backendName, this.extras, this.priority);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setBackendName(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.backendName = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setExtras(byte[] bArr) {
            this.extras = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public TransportContext.Builder setPriority(Priority priority) {
            Objects.requireNonNull(priority, "Null priority");
            this.priority = priority;
            return this;
        }
    }

    private AutoValue_TransportContext(String str, byte[] bArr, Priority priority) {
        this.backendName = str;
        this.extras = bArr;
        this.priority = priority;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.priority.equals(r0.getPriority()) != false) goto L18;
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
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.TransportContext
            if (r0 == 0) goto L5e
            r0 = r4
            com.google.android.datatransport.runtime.TransportContext r0 = (com.google.android.datatransport.runtime.TransportContext) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.backendName
            r1 = r6
            java.lang.String r1 = r1.getBackendName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            r0 = r3
            byte[] r0 = r0.extras
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.AutoValue_TransportContext
            if (r0 == 0) goto L3b
            r0 = r6
            com.google.android.datatransport.runtime.AutoValue_TransportContext r0 = (com.google.android.datatransport.runtime.AutoValue_TransportContext) r0
            byte[] r0 = r0.extras
            r4 = r0
            goto L40
        L3b:
            r0 = r6
            byte[] r0 = r0.getExtras()
            r4 = r0
        L40:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L5a
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.priority
            r1 = r6
            com.google.android.datatransport.Priority r1 = r1.getPriority()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            goto L5c
        L5a:
            r0 = 0
            r5 = r0
        L5c:
            r0 = r5
            return r0
        L5e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.AutoValue_TransportContext.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public String getBackendName() {
        return this.backendName;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public byte[] getExtras() {
        return this.extras;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public Priority getPriority() {
        return this.priority;
    }

    public int hashCode() {
        return ((((this.backendName.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.extras)) * 1000003) ^ this.priority.hashCode();
    }
}

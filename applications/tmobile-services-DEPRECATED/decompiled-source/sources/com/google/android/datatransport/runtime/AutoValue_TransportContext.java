package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_TransportContext.class */
final class AutoValue_TransportContext extends TransportContext {

    /* renamed from: a */
    private final String f6618a;

    /* renamed from: b */
    private final byte[] f6619b;

    /* renamed from: c */
    private final Priority f6620c;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/AutoValue_TransportContext$Builder.class */
    static final class Builder extends TransportContext.Builder {

        /* renamed from: a */
        private String f6621a;

        /* renamed from: b */
        private byte[] f6622b;

        /* renamed from: c */
        private Priority f6623c;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        /* renamed from: a */
        public TransportContext mo15422a() {
            String str = "";
            if (this.f6621a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f6623c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new AutoValue_TransportContext(this.f6621a, this.f6622b, this.f6623c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        /* renamed from: b */
        public TransportContext.Builder mo15421b(String str) {
            if (str != null) {
                this.f6621a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        /* renamed from: c */
        public TransportContext.Builder mo15420c(@Nullable byte[] bArr) {
            this.f6622b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        /* renamed from: d */
        public TransportContext.Builder mo15419d(Priority priority) {
            if (priority != null) {
                this.f6623c = priority;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    private AutoValue_TransportContext(String str, @Nullable byte[] bArr, Priority priority) {
        this.f6618a = str;
        this.f6619b = bArr;
        this.f6620c = priority;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    /* renamed from: b */
    public String mo15426b() {
        return this.f6618a;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    @Nullable
    /* renamed from: c */
    public byte[] mo15425c() {
        return this.f6619b;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    @RestrictTo
    /* renamed from: d */
    public Priority mo15424d() {
        return this.f6620c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f6620c.equals(r0.mo15424d()) != false) goto L_0x005c;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.TransportContext
            if (r0 == 0) goto L_0x005e
            r0 = r4
            com.google.android.datatransport.runtime.TransportContext r0 = (com.google.android.datatransport.runtime.TransportContext) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f6618a
            r1 = r6
            java.lang.String r1 = r1.mo15426b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            byte[] r0 = r0.f6619b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.google.android.datatransport.runtime.AutoValue_TransportContext
            if (r0 == 0) goto L_0x003b
            r0 = r6
            com.google.android.datatransport.runtime.AutoValue_TransportContext r0 = (com.google.android.datatransport.runtime.AutoValue_TransportContext) r0
            byte[] r0 = r0.f6619b
            r4 = r0
            goto L_0x0040
        L_0x003b:
            r0 = r6
            byte[] r0 = r0.mo15425c()
            r4 = r0
        L_0x0040:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f6620c
            r1 = r6
            com.google.android.datatransport.Priority r1 = r1.mo15424d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            goto L_0x005c
        L_0x005a:
            r0 = 0
            r5 = r0
        L_0x005c:
            r0 = r5
            return r0
        L_0x005e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.AutoValue_TransportContext.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f6618a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f6619b)) * 1000003) ^ this.f6620c.hashCode();
    }
}

package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.backends.AbstractC10700f;
import java.util.Arrays;
/* renamed from: com.google.android.datatransport.runtime.backends.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/a.class */
final class C10693a extends AbstractC10700f {

    /* renamed from: a */
    private final Iterable<AbstractC10730h> f34545a;

    /* renamed from: b */
    private final byte[] f34546b;

    /* renamed from: com.google.android.datatransport.runtime.backends.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/a$a.class */
    public static final class C10695a extends AbstractC10700f.AbstractC10701a {

        /* renamed from: a */
        private Iterable<AbstractC10730h> f34547a;

        /* renamed from: b */
        private byte[] f34548b;

        @Override // com.google.android.datatransport.runtime.backends.AbstractC10700f.AbstractC10701a
        /* renamed from: a */
        public final AbstractC10700f.AbstractC10701a mo22511a(Iterable<AbstractC10730h> iterable) {
            this.f34547a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.AbstractC10700f.AbstractC10701a
        /* renamed from: a */
        public final AbstractC10700f.AbstractC10701a mo22510a(byte[] bArr) {
            this.f34548b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.AbstractC10700f.AbstractC10701a
        /* renamed from: a */
        public final AbstractC10700f mo22512a() {
            String str = "";
            if (this.f34547a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new C10693a(this.f34547a, this.f34548b);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private C10693a(Iterable<AbstractC10730h> iterable, byte[] bArr) {
        this.f34545a = iterable;
        this.f34546b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10700f
    /* renamed from: a */
    public final Iterable<AbstractC10730h> mo22514a() {
        return this.f34545a;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10700f
    /* renamed from: b */
    public final byte[] mo22513b() {
        return this.f34546b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10700f)) {
            return false;
        }
        AbstractC10700f abstractC10700f = (AbstractC10700f) obj;
        if (!this.f34545a.equals(abstractC10700f.mo22514a())) {
            return false;
        }
        return Arrays.equals(this.f34546b, abstractC10700f instanceof C10693a ? ((C10693a) abstractC10700f).f34546b : abstractC10700f.mo22513b());
    }

    public final int hashCode() {
        return ((this.f34545a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f34546b);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f34545a + ", extras=" + Arrays.toString(this.f34546b) + "}";
    }
}

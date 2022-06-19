package com.google.android.datatransport.cct.p315a;

import com.google.android.datatransport.cct.p315a.AbstractC10657k;
/* renamed from: com.google.android.datatransport.cct.a.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/e.class */
final class C10643e extends AbstractC10657k {

    /* renamed from: a */
    private final AbstractC10657k.EnumC10659b f34465a;

    /* renamed from: b */
    private final AbstractC10630a f34466b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.a.e$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/e$a.class */
    public static final class C10645a extends AbstractC10657k.AbstractC10658a {

        /* renamed from: a */
        private AbstractC10657k.EnumC10659b f34467a;

        /* renamed from: b */
        private AbstractC10630a f34468b;

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10657k.AbstractC10658a
        /* renamed from: a */
        public final AbstractC10657k.AbstractC10658a mo22572a(AbstractC10630a abstractC10630a) {
            this.f34468b = abstractC10630a;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10657k.AbstractC10658a
        /* renamed from: a */
        public final AbstractC10657k.AbstractC10658a mo22571a(AbstractC10657k.EnumC10659b enumC10659b) {
            this.f34467a = enumC10659b;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10657k.AbstractC10658a
        /* renamed from: a */
        public final AbstractC10657k mo22573a() {
            return new C10643e(this.f34467a, this.f34468b);
        }
    }

    private C10643e(AbstractC10657k.EnumC10659b enumC10659b, AbstractC10630a abstractC10630a) {
        this.f34465a = enumC10659b;
        this.f34466b = abstractC10630a;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10657k
    /* renamed from: a */
    public final AbstractC10657k.EnumC10659b mo22576a() {
        return this.f34465a;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10657k
    /* renamed from: b */
    public final AbstractC10630a mo22575b() {
        return this.f34466b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10657k)) {
            return false;
        }
        AbstractC10657k abstractC10657k = (AbstractC10657k) obj;
        AbstractC10657k.EnumC10659b enumC10659b = this.f34465a;
        if (enumC10659b == null) {
            if (abstractC10657k.mo22576a() != null) {
                return false;
            }
        } else if (!enumC10659b.equals(abstractC10657k.mo22576a())) {
            return false;
        }
        AbstractC10630a abstractC10630a = this.f34466b;
        return abstractC10630a == null ? abstractC10657k.mo22575b() == null : abstractC10630a.equals(abstractC10657k.mo22575b());
    }

    public final int hashCode() {
        AbstractC10657k.EnumC10659b enumC10659b = this.f34465a;
        int i = 0;
        int hashCode = enumC10659b == null ? 0 : enumC10659b.hashCode();
        AbstractC10630a abstractC10630a = this.f34466b;
        if (abstractC10630a != null) {
            i = abstractC10630a.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f34465a + ", androidClientInfo=" + this.f34466b + "}";
    }
}

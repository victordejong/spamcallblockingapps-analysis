package com.google.android.datatransport.cct.p315a;

import com.google.android.datatransport.cct.p315a.AbstractC10665o;
/* renamed from: com.google.android.datatransport.cct.a.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/i.class */
final class C10653i extends AbstractC10665o {

    /* renamed from: a */
    private final AbstractC10665o.EnumC10668c f34498a;

    /* renamed from: b */
    private final AbstractC10665o.EnumC10667b f34499b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.cct.a.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/i$a.class */
    public static final class C10655a extends AbstractC10665o.AbstractC10666a {

        /* renamed from: a */
        private AbstractC10665o.EnumC10668c f34500a;

        /* renamed from: b */
        private AbstractC10665o.EnumC10667b f34501b;

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10665o.AbstractC10666a
        /* renamed from: a */
        public final AbstractC10665o.AbstractC10666a mo22530a(AbstractC10665o.EnumC10667b enumC10667b) {
            this.f34501b = enumC10667b;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10665o.AbstractC10666a
        /* renamed from: a */
        public final AbstractC10665o.AbstractC10666a mo22529a(AbstractC10665o.EnumC10668c enumC10668c) {
            this.f34500a = enumC10668c;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10665o.AbstractC10666a
        /* renamed from: a */
        public final AbstractC10665o mo22531a() {
            return new C10653i(this.f34500a, this.f34501b);
        }
    }

    private C10653i(AbstractC10665o.EnumC10668c enumC10668c, AbstractC10665o.EnumC10667b enumC10667b) {
        this.f34498a = enumC10668c;
        this.f34499b = enumC10667b;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10665o
    /* renamed from: a */
    public final AbstractC10665o.EnumC10668c mo22534a() {
        return this.f34498a;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10665o
    /* renamed from: b */
    public final AbstractC10665o.EnumC10667b mo22533b() {
        return this.f34499b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10665o)) {
            return false;
        }
        AbstractC10665o abstractC10665o = (AbstractC10665o) obj;
        AbstractC10665o.EnumC10668c enumC10668c = this.f34498a;
        if (enumC10668c == null) {
            if (abstractC10665o.mo22534a() != null) {
                return false;
            }
        } else if (!enumC10668c.equals(abstractC10665o.mo22534a())) {
            return false;
        }
        AbstractC10665o.EnumC10667b enumC10667b = this.f34499b;
        return enumC10667b == null ? abstractC10665o.mo22533b() == null : enumC10667b.equals(abstractC10665o.mo22533b());
    }

    public final int hashCode() {
        AbstractC10665o.EnumC10668c enumC10668c = this.f34498a;
        int i = 0;
        int hashCode = enumC10668c == null ? 0 : enumC10668c.hashCode();
        AbstractC10665o.EnumC10667b enumC10667b = this.f34499b;
        if (enumC10667b != null) {
            i = enumC10667b.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f34498a + ", mobileSubtype=" + this.f34499b + "}";
    }
}

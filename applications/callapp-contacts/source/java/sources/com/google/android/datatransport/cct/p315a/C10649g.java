package com.google.android.datatransport.cct.p315a;

import com.google.android.datatransport.cct.p315a.AbstractC10662m;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.a.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/g.class */
final class C10649g extends AbstractC10662m {

    /* renamed from: a */
    private final long f34483a;

    /* renamed from: b */
    private final long f34484b;

    /* renamed from: c */
    private final AbstractC10657k f34485c;

    /* renamed from: d */
    private final Integer f34486d;

    /* renamed from: e */
    private final String f34487e;

    /* renamed from: f */
    private final List<AbstractC10660l> f34488f;

    /* renamed from: g */
    private final EnumC10669p f34489g;

    /* renamed from: com.google.android.datatransport.cct.a.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/g$a.class */
    public static final class C10651a extends AbstractC10662m.AbstractC10663a {

        /* renamed from: a */
        private Long f34490a;

        /* renamed from: b */
        private Long f34491b;

        /* renamed from: c */
        private AbstractC10657k f34492c;

        /* renamed from: d */
        private Integer f34493d;

        /* renamed from: e */
        private String f34494e;

        /* renamed from: f */
        private List<AbstractC10660l> f34495f;

        /* renamed from: g */
        private EnumC10669p f34496g;

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22544a(long j) {
            this.f34490a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22543a(AbstractC10657k abstractC10657k) {
            this.f34492c = abstractC10657k;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22542a(EnumC10669p enumC10669p) {
            this.f34496g = enumC10669p;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22541a(Integer num) {
            this.f34493d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22540a(String str) {
            this.f34494e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m.AbstractC10663a mo22539a(List<AbstractC10660l> list) {
            this.f34495f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: a */
        public final AbstractC10662m mo22545a() {
            String str = "";
            if (this.f34490a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f34491b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new C10649g(this.f34490a.longValue(), this.f34491b.longValue(), this.f34492c, this.f34493d, this.f34494e, this.f34495f, this.f34496g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str2)));
        }

        @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m.AbstractC10663a
        /* renamed from: b */
        public final AbstractC10662m.AbstractC10663a mo22538b(long j) {
            this.f34491b = Long.valueOf(j);
            return this;
        }
    }

    private C10649g(long j, long j2, AbstractC10657k abstractC10657k, Integer num, String str, List<AbstractC10660l> list, EnumC10669p enumC10669p) {
        this.f34483a = j;
        this.f34484b = j2;
        this.f34485c = abstractC10657k;
        this.f34486d = num;
        this.f34487e = str;
        this.f34488f = list;
        this.f34489g = enumC10669p;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: a */
    public final long mo22553a() {
        return this.f34483a;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: b */
    public final long mo22552b() {
        return this.f34484b;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: c */
    public final AbstractC10657k mo22551c() {
        return this.f34485c;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: d */
    public final Integer mo22550d() {
        return this.f34486d;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: e */
    public final String mo22549e() {
        return this.f34487e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10662m)) {
            return false;
        }
        AbstractC10662m abstractC10662m = (AbstractC10662m) obj;
        if (this.f34483a != abstractC10662m.mo22553a() || this.f34484b != abstractC10662m.mo22552b()) {
            return false;
        }
        AbstractC10657k abstractC10657k = this.f34485c;
        if (abstractC10657k == null) {
            if (abstractC10662m.mo22551c() != null) {
                return false;
            }
        } else if (!abstractC10657k.equals(abstractC10662m.mo22551c())) {
            return false;
        }
        Integer num = this.f34486d;
        if (num == null) {
            if (abstractC10662m.mo22550d() != null) {
                return false;
            }
        } else if (!num.equals(abstractC10662m.mo22550d())) {
            return false;
        }
        String str = this.f34487e;
        if (str == null) {
            if (abstractC10662m.mo22549e() != null) {
                return false;
            }
        } else if (!str.equals(abstractC10662m.mo22549e())) {
            return false;
        }
        List<AbstractC10660l> list = this.f34488f;
        if (list == null) {
            if (abstractC10662m.mo22548f() != null) {
                return false;
            }
        } else if (!list.equals(abstractC10662m.mo22548f())) {
            return false;
        }
        EnumC10669p enumC10669p = this.f34489g;
        return enumC10669p == null ? abstractC10662m.mo22547g() == null : enumC10669p.equals(abstractC10662m.mo22547g());
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: f */
    public final List<AbstractC10660l> mo22548f() {
        return this.f34488f;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10662m
    /* renamed from: g */
    public final EnumC10669p mo22547g() {
        return this.f34489g;
    }

    public final int hashCode() {
        long j = this.f34483a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f34484b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        AbstractC10657k abstractC10657k = this.f34485c;
        int i3 = 0;
        int hashCode = abstractC10657k == null ? 0 : abstractC10657k.hashCode();
        Integer num = this.f34486d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f34487e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC10660l> list = this.f34488f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        EnumC10669p enumC10669p = this.f34489g;
        if (enumC10669p != null) {
            i3 = enumC10669p.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f34483a + ", requestUptimeMs=" + this.f34484b + ", clientInfo=" + this.f34485c + ", logSource=" + this.f34486d + ", logSourceName=" + this.f34487e + ", logEvents=" + this.f34488f + ", qosTier=" + this.f34489g + "}";
    }
}

package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.m;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/g.class */
final class g extends m {

    /* renamed from: a  reason: collision with root package name */
    private final long f20360a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20361b;

    /* renamed from: c  reason: collision with root package name */
    private final k f20362c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f20363d;
    private final String e;
    private final List<l> f;
    private final p g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/g$a.class */
    public static final class a extends m.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20364a;

        /* renamed from: b  reason: collision with root package name */
        private Long f20365b;

        /* renamed from: c  reason: collision with root package name */
        private k f20366c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f20367d;
        private String e;
        private List<l> f;
        private p g;

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(long j) {
            this.f20364a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(k kVar) {
            this.f20366c = kVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(p pVar) {
            this.g = pVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(Integer num) {
            this.f20367d = num;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a a(List<l> list) {
            this.f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m a() {
            String str = "";
            if (this.f20364a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f20365b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new g(this.f20364a.longValue(), this.f20365b.longValue(), this.f20366c, this.f20367d, this.e, this.f, this.g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str2)));
        }

        @Override // com.google.android.datatransport.cct.a.m.a
        public final m.a b(long j) {
            this.f20365b = Long.valueOf(j);
            return this;
        }
    }

    private g(long j, long j2, k kVar, Integer num, String str, List<l> list, p pVar) {
        this.f20360a = j;
        this.f20361b = j2;
        this.f20362c = kVar;
        this.f20363d = num;
        this.e = str;
        this.f = list;
        this.g = pVar;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final long a() {
        return this.f20360a;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final long b() {
        return this.f20361b;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final k c() {
        return this.f20362c;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final Integer d() {
        return this.f20363d;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f20360a != mVar.a() || this.f20361b != mVar.b()) {
            return false;
        }
        k kVar = this.f20362c;
        if (kVar == null) {
            if (mVar.c() != null) {
                return false;
            }
        } else if (!kVar.equals(mVar.c())) {
            return false;
        }
        Integer num = this.f20363d;
        if (num == null) {
            if (mVar.d() != null) {
                return false;
            }
        } else if (!num.equals(mVar.d())) {
            return false;
        }
        String str = this.e;
        if (str == null) {
            if (mVar.e() != null) {
                return false;
            }
        } else if (!str.equals(mVar.e())) {
            return false;
        }
        List<l> list = this.f;
        if (list == null) {
            if (mVar.f() != null) {
                return false;
            }
        } else if (!list.equals(mVar.f())) {
            return false;
        }
        p pVar = this.g;
        return pVar == null ? mVar.g() == null : pVar.equals(mVar.g());
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final List<l> f() {
        return this.f;
    }

    @Override // com.google.android.datatransport.cct.a.m
    public final p g() {
        return this.g;
    }

    public final int hashCode() {
        long j = this.f20360a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f20361b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        k kVar = this.f20362c;
        int i3 = 0;
        int hashCode = kVar == null ? 0 : kVar.hashCode();
        Integer num = this.f20363d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<l> list = this.f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        p pVar = this.g;
        if (pVar != null) {
            i3 = pVar.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f20360a + ", requestUptimeMs=" + this.f20361b + ", clientInfo=" + this.f20362c + ", logSource=" + this.f20363d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + "}";
    }
}

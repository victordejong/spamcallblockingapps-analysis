package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.n;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/b.class */
abstract class b extends n {

    /* renamed from: a  reason: collision with root package name */
    private final List<r> f17542a;

    /* renamed from: b  reason: collision with root package name */
    private final m f17543b;

    /* renamed from: c  reason: collision with root package name */
    private final q f17544c;

    /* renamed from: d  reason: collision with root package name */
    private final List<p> f17545d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/b$a.class */
    public static class a extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private List<r> f17546a;

        /* renamed from: b  reason: collision with root package name */
        private m f17547b;

        /* renamed from: c  reason: collision with root package name */
        private q f17548c;

        /* renamed from: d  reason: collision with root package name */
        private List<p> f17549d;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(m mVar) {
            Objects.requireNonNull(mVar, "Null advertiser");
            this.f17547b = mVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(q qVar) {
            Objects.requireNonNull(qVar, "Null privacy");
            this.f17548c = qVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(List<r> list) {
            Objects.requireNonNull(list, "Null nativeProducts");
            this.f17546a = list;
            return this;
        }

        @Override // com.criteo.publisher.model.b0.n.a
        n a() {
            String str = "";
            if (this.f17546a == null) {
                str = " nativeProducts";
            }
            String str2 = str;
            if (this.f17547b == null) {
                str2 = str + " advertiser";
            }
            String str3 = str2;
            if (this.f17548c == null) {
                str3 = str2 + " privacy";
            }
            String str4 = str3;
            if (this.f17549d == null) {
                str4 = str3 + " pixels";
            }
            if (str4.isEmpty()) {
                return new h(this.f17546a, this.f17547b, this.f17548c, this.f17549d);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a b(List<p> list) {
            Objects.requireNonNull(list, "Null pixels");
            this.f17549d = list;
            return this;
        }

        @Override // com.criteo.publisher.model.b0.n.a
        List<r> c() {
            List<r> list = this.f17546a;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"nativeProducts\" has not been set");
        }

        @Override // com.criteo.publisher.model.b0.n.a
        List<p> d() {
            List<p> list = this.f17549d;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"pixels\" has not been set");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(List<r> list, m mVar, q qVar, List<p> list2) {
        Objects.requireNonNull(list, "Null nativeProducts");
        this.f17542a = list;
        Objects.requireNonNull(mVar, "Null advertiser");
        this.f17543b = mVar;
        Objects.requireNonNull(qVar, "Null privacy");
        this.f17544c = qVar;
        Objects.requireNonNull(list2, "Null pixels");
        this.f17545d = list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    public m b() {
        return this.f17543b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (!this.f17542a.equals(nVar.h()) || !this.f17543b.equals(nVar.b()) || !this.f17544c.equals(nVar.j()) || !this.f17545d.equals(nVar.i())) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    @com.google.gson.annotations.b(a = "products")
    public List<r> h() {
        return this.f17542a;
    }

    public int hashCode() {
        return ((((((this.f17542a.hashCode() ^ 1000003) * 1000003) ^ this.f17543b.hashCode()) * 1000003) ^ this.f17544c.hashCode()) * 1000003) ^ this.f17545d.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    @com.google.gson.annotations.b(a = "impressionPixels")
    public List<p> i() {
        return this.f17545d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    public q j() {
        return this.f17544c;
    }

    public String toString() {
        return "NativeAssets{nativeProducts=" + this.f17542a + ", advertiser=" + this.f17543b + ", privacy=" + this.f17544c + ", pixels=" + this.f17545d + "}";
    }
}

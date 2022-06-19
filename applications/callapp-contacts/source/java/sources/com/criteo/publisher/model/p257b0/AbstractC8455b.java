package com.criteo.publisher.model.p257b0;

import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.model.b0.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/b.class */
public abstract class AbstractC8455b extends AbstractC8474n {

    /* renamed from: a */
    private final List<AbstractC8479r> f30232a;

    /* renamed from: b */
    private final AbstractC8473m f30233b;

    /* renamed from: c */
    private final AbstractC8478q f30234c;

    /* renamed from: d */
    private final List<AbstractC8477p> f30235d;

    /* renamed from: com.criteo.publisher.model.b0.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b0/b$a.class */
    public static class C8456a extends AbstractC8474n.AbstractC8475a {

        /* renamed from: a */
        private List<AbstractC8479r> f30236a;

        /* renamed from: b */
        private AbstractC8473m f30237b;

        /* renamed from: c */
        private AbstractC8478q f30238c;

        /* renamed from: d */
        private List<AbstractC8477p> f30239d;

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: a */
        public AbstractC8474n.AbstractC8475a mo25624a(AbstractC8473m abstractC8473m) {
            Objects.requireNonNull(abstractC8473m, "Null advertiser");
            this.f30237b = abstractC8473m;
            return this;
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: a */
        public AbstractC8474n.AbstractC8475a mo25623a(AbstractC8478q abstractC8478q) {
            Objects.requireNonNull(abstractC8478q, "Null privacy");
            this.f30238c = abstractC8478q;
            return this;
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: a */
        public AbstractC8474n.AbstractC8475a mo25622a(List<AbstractC8479r> list) {
            Objects.requireNonNull(list, "Null nativeProducts");
            this.f30236a = list;
            return this;
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: a */
        AbstractC8474n mo25625a() {
            String str = "";
            if (this.f30236a == null) {
                str = " nativeProducts";
            }
            String str2 = str;
            if (this.f30237b == null) {
                str2 = str + " advertiser";
            }
            String str3 = str2;
            if (this.f30238c == null) {
                str3 = str2 + " privacy";
            }
            String str4 = str3;
            if (this.f30239d == null) {
                str4 = str3 + " pixels";
            }
            if (str4.isEmpty()) {
                return new C8463h(this.f30236a, this.f30237b, this.f30238c, this.f30239d);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str4)));
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: b */
        public AbstractC8474n.AbstractC8475a mo25620b(List<AbstractC8477p> list) {
            Objects.requireNonNull(list, "Null pixels");
            this.f30239d = list;
            return this;
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: c */
        List<AbstractC8479r> mo25619c() {
            List<AbstractC8479r> list = this.f30236a;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"nativeProducts\" has not been set");
        }

        @Override // com.criteo.publisher.model.p257b0.AbstractC8474n.AbstractC8475a
        /* renamed from: d */
        List<AbstractC8477p> mo25618d() {
            List<AbstractC8477p> list = this.f30239d;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"pixels\" has not been set");
        }
    }

    public AbstractC8455b(List<AbstractC8479r> list, AbstractC8473m abstractC8473m, AbstractC8478q abstractC8478q, List<AbstractC8477p> list2) {
        Objects.requireNonNull(list, "Null nativeProducts");
        this.f30232a = list;
        Objects.requireNonNull(abstractC8473m, "Null advertiser");
        this.f30233b = abstractC8473m;
        Objects.requireNonNull(abstractC8478q, "Null privacy");
        this.f30234c = abstractC8478q;
        Objects.requireNonNull(list2, "Null pixels");
        this.f30235d = list2;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8474n
    /* renamed from: b */
    public AbstractC8473m mo25638b() {
        return this.f30233b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8474n)) {
            return false;
        }
        AbstractC8474n abstractC8474n = (AbstractC8474n) obj;
        if (!this.f30232a.equals(abstractC8474n.mo25632h()) || !this.f30233b.equals(abstractC8474n.mo25638b()) || !this.f30234c.equals(abstractC8474n.mo25630j()) || !this.f30235d.equals(abstractC8474n.mo25631i())) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8474n
    @AbstractC15952b(m7988a = "products")
    /* renamed from: h */
    public List<AbstractC8479r> mo25632h() {
        return this.f30232a;
    }

    public int hashCode() {
        return ((((((this.f30232a.hashCode() ^ 1000003) * 1000003) ^ this.f30233b.hashCode()) * 1000003) ^ this.f30234c.hashCode()) * 1000003) ^ this.f30235d.hashCode();
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8474n
    @AbstractC15952b(m7988a = "impressionPixels")
    /* renamed from: i */
    public List<AbstractC8477p> mo25631i() {
        return this.f30235d;
    }

    @Override // com.criteo.publisher.model.p257b0.AbstractC8474n
    /* renamed from: j */
    public AbstractC8478q mo25630j() {
        return this.f30234c;
    }

    public String toString() {
        return "NativeAssets{nativeProducts=" + this.f30232a + ", advertiser=" + this.f30233b + ", privacy=" + this.f30234c + ", pixels=" + this.f30235d + "}";
    }
}

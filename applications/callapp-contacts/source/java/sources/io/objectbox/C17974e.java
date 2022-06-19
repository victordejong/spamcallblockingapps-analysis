package io.objectbox;

import com.google.flatbuffers.C15937d;
import io.objectbox.model.IdUid;
import io.objectbox.model.ModelEntity;
import io.objectbox.model.ModelProperty;
import java.util.ArrayList;
import java.util.List;
/* renamed from: io.objectbox.e */
/* loaded from: classes5-dex2jar.jar:io/objectbox/e.class */
public final class C17974e {

    /* renamed from: a */
    public final C15937d f62769a = new C15937d();

    /* renamed from: b */
    public final List<Integer> f62770b = new ArrayList();

    /* renamed from: c */
    long f62771c = 1;

    /* renamed from: d */
    public Integer f62772d;

    /* renamed from: e */
    public Long f62773e;

    /* renamed from: f */
    public Integer f62774f;

    /* renamed from: g */
    public Long f62775g;

    /* renamed from: h */
    public Integer f62776h;

    /* renamed from: i */
    public Long f62777i;

    /* renamed from: io.objectbox.e$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/e$a.class */
    public final class C17975a {

        /* renamed from: a */
        final String f62778a;

        /* renamed from: b */
        final List<Integer> f62779b = new ArrayList();

        /* renamed from: c */
        final List<Integer> f62780c = new ArrayList();

        /* renamed from: d */
        Integer f62781d;

        /* renamed from: e */
        Long f62782e;

        /* renamed from: f */
        Integer f62783f;

        /* renamed from: g */
        Integer f62784g;

        /* renamed from: h */
        Long f62785h;

        /* renamed from: i */
        C17976b f62786i;

        /* renamed from: j */
        boolean f62787j;

        C17975a(String str) {
            C17974e.this = r5;
            this.f62778a = str;
        }

        /* renamed from: c */
        private void m4663c() {
            if (!this.f62787j) {
                return;
            }
            throw new IllegalStateException("Already finished");
        }

        /* renamed from: d */
        private void m4662d() {
            C17976b c17976b = this.f62786i;
            if (c17976b != null) {
                this.f62779b.add(Integer.valueOf(c17976b.m4661a()));
                this.f62786i = null;
            }
        }

        /* renamed from: a */
        public final C17975a m4669a() {
            this.f62783f = 1;
            return this;
        }

        /* renamed from: a */
        public final C17975a m4668a(int i, long j) {
            m4663c();
            this.f62781d = Integer.valueOf(i);
            this.f62782e = Long.valueOf(j);
            return this;
        }

        /* renamed from: a */
        public final C17976b m4667a(String str, int i) {
            return m4666a(str, null, null, i);
        }

        /* renamed from: a */
        public final C17976b m4666a(String str, String str2, String str3, int i) {
            m4663c();
            m4662d();
            C17976b c17976b = new C17976b(str, str2, str3, i);
            this.f62786i = c17976b;
            return c17976b;
        }

        /* renamed from: b */
        public final C17975a m4664b(int i, long j) {
            m4663c();
            this.f62784g = Integer.valueOf(i);
            this.f62785h = Long.valueOf(j);
            return this;
        }

        /* renamed from: b */
        public final C17974e m4665b() {
            m4663c();
            m4662d();
            this.f62787j = true;
            int m8026a = C17974e.this.f62769a.m8026a(this.f62778a);
            int m4670a = C17974e.this.m4670a(this.f62779b);
            int m4670a2 = this.f62780c.isEmpty() ? 0 : C17974e.this.m4670a(this.f62780c);
            ModelEntity.startModelEntity(C17974e.this.f62769a);
            ModelEntity.addName(C17974e.this.f62769a, m8026a);
            ModelEntity.addProperties(C17974e.this.f62769a, m4670a);
            if (m4670a2 != 0) {
                ModelEntity.addRelations(C17974e.this.f62769a, m4670a2);
            }
            if (this.f62781d != null && this.f62782e != null) {
                ModelEntity.addId(C17974e.this.f62769a, IdUid.createIdUid(C17974e.this.f62769a, this.f62781d.intValue(), this.f62782e.longValue()));
            }
            if (this.f62784g != null) {
                ModelEntity.addLastPropertyId(C17974e.this.f62769a, IdUid.createIdUid(C17974e.this.f62769a, this.f62784g.intValue(), this.f62785h.longValue()));
            }
            if (this.f62783f != null) {
                ModelEntity.addFlags(C17974e.this.f62769a, this.f62783f.intValue());
            }
            C17974e.this.f62770b.add(Integer.valueOf(ModelEntity.endModelEntity(C17974e.this.f62769a)));
            return C17974e.this;
        }
    }

    /* renamed from: io.objectbox.e$b */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/e$b.class */
    public final class C17976b {

        /* renamed from: a */
        boolean f62789a;

        /* renamed from: c */
        private final int f62791c;

        /* renamed from: d */
        private final int f62792d;

        /* renamed from: e */
        private final int f62793e;

        /* renamed from: f */
        private final int f62794f;

        /* renamed from: g */
        private int f62795g;

        /* renamed from: h */
        private int f62796h;

        /* renamed from: i */
        private int f62797i;

        /* renamed from: j */
        private long f62798j;

        /* renamed from: k */
        private int f62799k;

        /* renamed from: l */
        private long f62800l;

        /* renamed from: m */
        private int f62801m;

        C17976b(String str, String str2, String str3, int i) {
            C17974e.this = r5;
            this.f62791c = i;
            this.f62793e = r5.f62769a.m8026a(str);
            this.f62794f = str2 != null ? r5.f62769a.m8026a(str2) : 0;
            this.f62792d = str3 != null ? r5.f62769a.m8026a(str3) : 0;
        }

        /* renamed from: b */
        private void m4658b() {
            if (!this.f62789a) {
                return;
            }
            throw new IllegalStateException("Already finished");
        }

        /* renamed from: a */
        public final int m4661a() {
            m4658b();
            this.f62789a = true;
            ModelProperty.startModelProperty(C17974e.this.f62769a);
            ModelProperty.addName(C17974e.this.f62769a, this.f62793e);
            if (this.f62794f != 0) {
                ModelProperty.addTargetEntity(C17974e.this.f62769a, this.f62794f);
            }
            if (this.f62792d != 0) {
                ModelProperty.addVirtualTarget(C17974e.this.f62769a, this.f62792d);
            }
            if (this.f62795g != 0) {
                ModelProperty.addNameSecondary(C17974e.this.f62769a, this.f62795g);
            }
            if (this.f62797i != 0) {
                ModelProperty.addId(C17974e.this.f62769a, IdUid.createIdUid(C17974e.this.f62769a, this.f62797i, this.f62798j));
            }
            if (this.f62799k != 0) {
                ModelProperty.addIndexId(C17974e.this.f62769a, IdUid.createIdUid(C17974e.this.f62769a, this.f62799k, this.f62800l));
            }
            if (this.f62801m > 0) {
                ModelProperty.addMaxIndexValueLength(C17974e.this.f62769a, this.f62801m);
            }
            ModelProperty.addType(C17974e.this.f62769a, this.f62791c);
            if (this.f62796h != 0) {
                ModelProperty.addFlags(C17974e.this.f62769a, this.f62796h);
            }
            return ModelProperty.endModelProperty(C17974e.this.f62769a);
        }

        /* renamed from: a */
        public final C17976b m4660a(int i) {
            m4658b();
            this.f62796h = i;
            return this;
        }

        /* renamed from: a */
        public final C17976b m4659a(int i, long j) {
            m4658b();
            this.f62797i = i;
            this.f62798j = j;
            return this;
        }

        /* renamed from: b */
        public final C17976b m4657b(int i, long j) {
            m4658b();
            this.f62799k = i;
            this.f62800l = j;
            return this;
        }
    }

    /* renamed from: a */
    public final int m4670a(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            iArr[i] = list.get(i).intValue();
        }
        return this.f62769a.m8022a(iArr);
    }

    /* renamed from: a */
    public final C17975a m4671a(String str) {
        return new C17975a(str);
    }
}

package io.objectbox;

import com.google.flatbuffers.d;
import io.objectbox.model.IdUid;
import io.objectbox.model.ModelEntity;
import io.objectbox.model.ModelProperty;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final d f36219a = new d();

    /* renamed from: b  reason: collision with root package name */
    public final List<Integer> f36220b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    long f36221c = 1;

    /* renamed from: d  reason: collision with root package name */
    public Integer f36222d;
    public Long e;
    public Integer f;
    public Long g;
    public Integer h;
    public Long i;

    /* loaded from: classes5-dex2jar.jar:io/objectbox/e$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f36223a;

        /* renamed from: b  reason: collision with root package name */
        final List<Integer> f36224b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        final List<Integer> f36225c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        Integer f36226d;
        Long e;
        Integer f;
        Integer g;
        Long h;
        b i;
        boolean j;

        a(String str) {
            this.f36223a = str;
        }

        private void c() {
            if (this.j) {
                throw new IllegalStateException("Already finished");
            }
        }

        private void d() {
            b bVar = this.i;
            if (bVar != null) {
                this.f36224b.add(Integer.valueOf(bVar.a()));
                this.i = null;
            }
        }

        public final a a() {
            this.f = 1;
            return this;
        }

        public final a a(int i, long j) {
            c();
            this.f36226d = Integer.valueOf(i);
            this.e = Long.valueOf(j);
            return this;
        }

        public final b a(String str, int i) {
            return a(str, null, null, i);
        }

        public final b a(String str, String str2, String str3, int i) {
            c();
            d();
            b bVar = new b(str, str2, str3, i);
            this.i = bVar;
            return bVar;
        }

        public final a b(int i, long j) {
            c();
            this.g = Integer.valueOf(i);
            this.h = Long.valueOf(j);
            return this;
        }

        public final e b() {
            c();
            d();
            this.j = true;
            int a2 = e.this.f36219a.a(this.f36223a);
            int a3 = e.this.a(this.f36224b);
            int a4 = this.f36225c.isEmpty() ? 0 : e.this.a(this.f36225c);
            ModelEntity.startModelEntity(e.this.f36219a);
            ModelEntity.addName(e.this.f36219a, a2);
            ModelEntity.addProperties(e.this.f36219a, a3);
            if (a4 != 0) {
                ModelEntity.addRelations(e.this.f36219a, a4);
            }
            if (!(this.f36226d == null || this.e == null)) {
                ModelEntity.addId(e.this.f36219a, IdUid.createIdUid(e.this.f36219a, this.f36226d.intValue(), this.e.longValue()));
            }
            if (this.g != null) {
                ModelEntity.addLastPropertyId(e.this.f36219a, IdUid.createIdUid(e.this.f36219a, this.g.intValue(), this.h.longValue()));
            }
            if (this.f != null) {
                ModelEntity.addFlags(e.this.f36219a, this.f.intValue());
            }
            e.this.f36220b.add(Integer.valueOf(ModelEntity.endModelEntity(e.this.f36219a)));
            return e.this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/objectbox/e$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        boolean f36227a;

        /* renamed from: c  reason: collision with root package name */
        private final int f36229c;

        /* renamed from: d  reason: collision with root package name */
        private final int f36230d;
        private final int e;
        private final int f;
        private int g;
        private int h;
        private int i;
        private long j;
        private int k;
        private long l;
        private int m;

        b(String str, String str2, String str3, int i) {
            this.f36229c = i;
            this.e = e.this.f36219a.a(str);
            int i2 = 0;
            this.f = str2 != null ? e.this.f36219a.a(str2) : 0;
            this.f36230d = str3 != null ? e.this.f36219a.a(str3) : i2;
        }

        private void b() {
            if (this.f36227a) {
                throw new IllegalStateException("Already finished");
            }
        }

        public final int a() {
            b();
            this.f36227a = true;
            ModelProperty.startModelProperty(e.this.f36219a);
            ModelProperty.addName(e.this.f36219a, this.e);
            if (this.f != 0) {
                ModelProperty.addTargetEntity(e.this.f36219a, this.f);
            }
            if (this.f36230d != 0) {
                ModelProperty.addVirtualTarget(e.this.f36219a, this.f36230d);
            }
            if (this.g != 0) {
                ModelProperty.addNameSecondary(e.this.f36219a, this.g);
            }
            if (this.i != 0) {
                ModelProperty.addId(e.this.f36219a, IdUid.createIdUid(e.this.f36219a, this.i, this.j));
            }
            if (this.k != 0) {
                ModelProperty.addIndexId(e.this.f36219a, IdUid.createIdUid(e.this.f36219a, this.k, this.l));
            }
            if (this.m > 0) {
                ModelProperty.addMaxIndexValueLength(e.this.f36219a, this.m);
            }
            ModelProperty.addType(e.this.f36219a, this.f36229c);
            if (this.h != 0) {
                ModelProperty.addFlags(e.this.f36219a, this.h);
            }
            return ModelProperty.endModelProperty(e.this.f36219a);
        }

        public final b a(int i) {
            b();
            this.h = i;
            return this;
        }

        public final b a(int i, long j) {
            b();
            this.i = i;
            this.j = j;
            return this;
        }

        public final b b(int i, long j) {
            b();
            this.k = i;
            this.l = j;
            return this;
        }
    }

    public final int a(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            iArr[i] = list.get(i).intValue();
        }
        return this.f36219a.a(iArr);
    }

    public final a a(String str) {
        return new a(str);
    }
}

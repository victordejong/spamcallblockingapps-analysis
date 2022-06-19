package p193e.p1545k.p1546a.p1556c.p1567j0;

import java.io.Closeable;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c;
/* renamed from: e.k.a.c.j0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/a.class */
public class C23702a extends AbstractC23705c implements Serializable {

    /* renamed from: e.k.a.c.j0.a$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/a$a.class */
    public static final class C23703a {

        /* renamed from: b */
        public static final C23703a f65733b = new C23703a();

        /* renamed from: a */
        public final Set<String> f65734a;

        public C23703a() {
            HashSet hashSet = new HashSet();
            this.f65734a = hashSet;
            hashSet.add(Object.class.getName());
            hashSet.add(Closeable.class.getName());
            hashSet.add(Serializable.class.getName());
            hashSet.add(AutoCloseable.class.getName());
            hashSet.add(Cloneable.class.getName());
            hashSet.add("java.util.logging.Handler");
            hashSet.add("javax.naming.Referenceable");
            hashSet.add("javax.sql.DataSource");
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c
    /* renamed from: a */
    public AbstractC23705c.EnumC23707b mo6200a(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i) {
        return C23703a.f65733b.f65734a.contains(abstractC23698i.f65728a.getName()) ? AbstractC23705c.EnumC23707b.DENIED : AbstractC23705c.EnumC23707b.INDETERMINATE;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c
    /* renamed from: b */
    public AbstractC23705c.EnumC23707b mo6199b(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, String str) {
        return AbstractC23705c.EnumC23707b.INDETERMINATE;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c
    /* renamed from: c */
    public AbstractC23705c.EnumC23707b mo6198c(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, AbstractC23698i abstractC23698i2) {
        return AbstractC23705c.EnumC23707b.ALLOWED;
    }
}

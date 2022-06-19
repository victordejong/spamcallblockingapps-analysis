package kotlin.p081e.p083b;

import java.io.Serializable;
import kotlin.p081e.C1685b;
import kotlin.p085g.AbstractC1718a;
import kotlin.p085g.AbstractC1720c;
/* renamed from: kotlin.e.b.a */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/a.class */
public abstract class AbstractC1686a implements Serializable, AbstractC1718a {

    /* renamed from: b */
    public static final Object f4379b = C1687a.f4382a;

    /* renamed from: a */
    protected final Object f4380a;

    /* renamed from: c */
    private transient AbstractC1718a f4381c;

    /* renamed from: kotlin.e.b.a$a */
    /* loaded from: classes-dex2jar.jar:kotlin/e/b/a$a.class */
    private static class C1687a implements Serializable {

        /* renamed from: a */
        private static final C1687a f4382a = new C1687a();

        private C1687a() {
        }
    }

    public AbstractC1686a() {
        this(f4379b);
    }

    protected AbstractC1686a(Object obj) {
        this.f4380a = obj;
    }

    @Override // kotlin.p085g.AbstractC1718a
    /* renamed from: a */
    public Object mo3073a(Object... objArr) {
        return mo3113d().mo3073a(objArr);
    }

    /* renamed from: a */
    protected abstract AbstractC1718a mo3111a();

    /* renamed from: b */
    public Object m3131b() {
        return this.f4380a;
    }

    /* renamed from: c */
    public AbstractC1718a m3130c() {
        AbstractC1718a abstractC1718a = this.f4381c;
        AbstractC1718a abstractC1718a2 = abstractC1718a;
        if (abstractC1718a == null) {
            abstractC1718a2 = mo3111a();
            this.f4381c = abstractC1718a2;
        }
        return abstractC1718a2;
    }

    /* renamed from: d */
    public AbstractC1718a mo3113d() {
        AbstractC1718a m3130c = m3130c();
        if (m3130c != this) {
            return m3130c;
        }
        throw new C1685b();
    }

    /* renamed from: e */
    public AbstractC1720c mo3110e() {
        throw new AbstractMethodError();
    }

    /* renamed from: f */
    public String mo3109f() {
        throw new AbstractMethodError();
    }

    /* renamed from: g */
    public String mo3108g() {
        throw new AbstractMethodError();
    }
}

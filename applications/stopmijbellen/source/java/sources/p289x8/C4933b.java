package p289x8;

import java.util.Objects;
import p267v8.AbstractC4654a;
import p278w8.C4779j;
import p278w8.C4782k;
/* renamed from: x8.b */
/* loaded from: classes2-dex2jar.jar:x8/b.class */
public class C4933b<T> implements AbstractC4932a<C4933b<T>>, AbstractC4654a {

    /* renamed from: c */
    public static final C4933b<String> f15048c = new C4933b<>((Class<?>) null, C4779j.m472e("*").m471a());

    /* renamed from: a */
    public final Class<?> f15049a;

    /* renamed from: b */
    public C4779j f15050b;

    static {
        C4779j.m472e("?").m471a();
    }

    public C4933b(Class<?> cls, String str) {
        this.f15049a = cls;
        if (str != null) {
            this.f15050b = new C4779j.C4781b(str).m471a();
        }
    }

    public C4933b(Class<?> cls, C4779j c4779j) {
        this.f15049a = null;
        this.f15050b = c4779j;
    }

    /* renamed from: a */
    public C4782k<T> m239a(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = "=";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        return mo235f().mo238b();
    }

    /* renamed from: c */
    public C4782k<T> mo230c() {
        return new C4782k<>(mo235f());
    }

    /* renamed from: d */
    public C4782k<T> m237d(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = ">";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    /* renamed from: e */
    public C4782k<T> m236e(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = "=";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    @Override // p289x8.AbstractC4932a
    /* renamed from: f */
    public C4779j mo235f() {
        return this.f15050b;
    }

    /* renamed from: g */
    public C4782k<T> m234g(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = "!=";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    /* renamed from: h */
    public C4782k m233h() {
        C4782k<T> mo230c = mo230c();
        Objects.requireNonNull(mo230c);
        mo230c.f14685a = String.format(" %1s ", "IS NULL");
        return mo230c;
    }

    /* renamed from: i */
    public C4782k<T> m232i(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = "<=";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    /* renamed from: j */
    public C4782k<T> m231j(T t) {
        C4782k<T> mo230c = mo230c();
        mo230c.f14685a = "!=";
        mo230c.f14686b = t;
        mo230c.f14689e = true;
        return mo230c;
    }

    public String toString() {
        return mo235f().m473d();
    }
}

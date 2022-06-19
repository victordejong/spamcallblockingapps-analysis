package p289x8;

import p235s8.AbstractC4332g;
import p278w8.C4782k;
/* renamed from: x8.c */
/* loaded from: classes2-dex2jar.jar:x8/c.class */
public class C4934c<T, V> extends C4933b<V> {

    /* renamed from: d */
    public boolean f15051d;

    /* renamed from: e */
    public final AbstractC4935a f15052e;

    /* renamed from: x8.c$a */
    /* loaded from: classes2-dex2jar.jar:x8/c$a.class */
    public interface AbstractC4935a {
        /* renamed from: a */
        AbstractC4332g mo229a(Class<?> cls);
    }

    public C4934c(Class<?> cls, String str, boolean z, AbstractC4935a abstractC4935a) {
        super(cls, str);
        this.f15051d = z;
        this.f15052e = abstractC4935a;
    }

    @Override // p289x8.C4933b
    /* renamed from: c */
    public C4782k<V> mo230c() {
        return new C4782k<>(this.f15050b, this.f15052e.mo229a(this.f15049a), this.f15051d);
    }
}

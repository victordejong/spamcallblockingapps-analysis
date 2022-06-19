package p192o7;

import java.io.InputStream;
import p148k7.AbstractC3362o;
import p148k7.C3379x;
import p148k7.C3380y;
import p159l7.AbstractC3510a;
import p181n7.C3759h;
import p181n7.C3782w;
/* renamed from: o7.b */
/* loaded from: classes2-dex2jar.jar:o7/b.class */
public class C3939b implements AbstractC3938a {

    /* renamed from: a */
    public int f12420a;

    /* renamed from: b */
    public String f12421b;

    /* renamed from: c */
    public Object f12422c;

    public /* synthetic */ C3939b(int i, String str, C3782w c3782w) {
        this.f12422c = c3782w;
        this.f12420a = i;
        this.f12421b = str;
    }

    public /* synthetic */ C3939b(InputStream inputStream, int i) {
        this.f12421b = "application/binary";
        this.f12422c = inputStream;
        this.f12420a = i;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // p192o7.AbstractC3938a
    /* renamed from: a */
    public void mo78a(C3759h c3759h, AbstractC3362o abstractC3362o, AbstractC3510a abstractC3510a) {
        InputStream inputStream = (InputStream) this.f12422c;
        int i = this.f12420a;
        char c = i < 0 ? (char) 65535 : i;
        C3379x c3379x = new C3379x(abstractC3510a);
        C3380y c3380y = new C3380y(abstractC3362o, inputStream, c, c3379x);
        abstractC3362o.mo1478m(c3380y);
        abstractC3362o.mo1480g(c3379x);
        c3380y.mo148f();
    }

    @Override // p192o7.AbstractC3938a
    /* renamed from: b */
    public String mo77b() {
        return this.f12421b;
    }

    @Override // p192o7.AbstractC3938a
    public int length() {
        return this.f12420a;
    }
}

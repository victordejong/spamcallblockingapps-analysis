package p1727n3.p1751c0;

import java.io.File;
import java.io.InputStream;
import java.util.concurrent.Callable;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
/* renamed from: n3.c0.b0 */
/* loaded from: classes-dex2jar.jar:n3/c0/b0.class */
public class C25645b0 implements AbstractC26148c.AbstractC26151c {

    /* renamed from: a */
    public final String f71834a;

    /* renamed from: b */
    public final AbstractC26148c.AbstractC26151c f71835b;

    public C25645b0(String str, File file, Callable<InputStream> callable, AbstractC26148c.AbstractC26151c abstractC26151c) {
        this.f71834a = str;
        this.f71835b = abstractC26151c;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26151c
    /* renamed from: a */
    public AbstractC26148c mo1435a(AbstractC26148c.C26150b c26150b) {
        return new C25642a0(c26150b.f72912a, this.f71834a, null, null, c26150b.f72914c.f72911a, this.f71835b.mo1435a(c26150b));
    }
}

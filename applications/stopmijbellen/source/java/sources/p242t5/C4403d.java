package p242t5;

import java.io.IOException;
import java.io.Writer;
import p221r5.AbstractC4208a;
/* renamed from: t5.d */
/* loaded from: classes-dex2jar.jar:t5/d.class */
public class C4403d implements AbstractC4208a {

    /* renamed from: a */
    public final /* synthetic */ C4404e f13721a;

    public C4403d(C4404e c4404e) {
        this.f13721a = c4404e;
    }

    /* renamed from: a */
    public void m966a(Object obj, Writer writer) throws IOException {
        C4404e c4404e = this.f13721a;
        C4406f c4406f = new C4406f(writer, c4404e.f13723a, c4404e.f13724b, c4404e.f13725c, c4404e.f13726d);
        c4406f.m958g(obj, false);
        c4406f.m956i();
        c4406f.f13729b.flush();
    }
}

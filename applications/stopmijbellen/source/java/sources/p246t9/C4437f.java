package p246t9;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.util.List;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4116o;
import p204p9.AbstractC4125t;
import p204p9.C4084b0;
import p204p9.C4135y;
import p236s9.C4335c;
import p236s9.C4338e;
/* renamed from: t9.f */
/* loaded from: classes2-dex2jar.jar:t9/f.class */
public final class C4437f implements AbstractC4125t.AbstractC4126a {

    /* renamed from: a */
    public final List<AbstractC4125t> f13788a;

    /* renamed from: b */
    public final C4338e f13789b;

    /* renamed from: c */
    public final AbstractC4433c f13790c;

    /* renamed from: d */
    public final C4335c f13791d;

    /* renamed from: e */
    public final int f13792e;

    /* renamed from: f */
    public final C4135y f13793f;

    /* renamed from: g */
    public final AbstractC4097e f13794g;

    /* renamed from: h */
    public final AbstractC4116o f13795h;

    /* renamed from: i */
    public final int f13796i;

    /* renamed from: j */
    public final int f13797j;

    /* renamed from: k */
    public final int f13798k;

    /* renamed from: l */
    public int f13799l;

    public C4437f(List<AbstractC4125t> list, C4338e c4338e, AbstractC4433c abstractC4433c, C4335c c4335c, int i, C4135y c4135y, AbstractC4097e abstractC4097e, AbstractC4116o abstractC4116o, int i2, int i3, int i4) {
        this.f13788a = list;
        this.f13791d = c4335c;
        this.f13789b = c4338e;
        this.f13790c = abstractC4433c;
        this.f13792e = i;
        this.f13793f = c4135y;
        this.f13794g = abstractC4097e;
        this.f13795h = abstractC4116o;
        this.f13796i = i2;
        this.f13797j = i3;
        this.f13798k = i4;
    }

    /* renamed from: a */
    public C4084b0 m927a(C4135y c4135y) throws IOException {
        return m926b(c4135y, this.f13789b, this.f13790c, this.f13791d);
    }

    /* renamed from: b */
    public C4084b0 m926b(C4135y c4135y, C4338e c4338e, AbstractC4433c abstractC4433c, C4335c c4335c) throws IOException {
        if (this.f13792e < this.f13788a.size()) {
            this.f13799l++;
            if (this.f13790c != null && !this.f13791d.m1085k(c4135y.f13041a)) {
                StringBuilder m8752j = C0082b.m8752j("network interceptor ");
                m8752j.append(this.f13788a.get(this.f13792e - 1));
                m8752j.append(" must retain the same host and port");
                throw new IllegalStateException(m8752j.toString());
            } else if (this.f13790c != null && this.f13799l > 1) {
                StringBuilder m8752j2 = C0082b.m8752j("network interceptor ");
                m8752j2.append(this.f13788a.get(this.f13792e - 1));
                m8752j2.append(" must call proceed() exactly once");
                throw new IllegalStateException(m8752j2.toString());
            } else {
                List<AbstractC4125t> list = this.f13788a;
                int i = this.f13792e;
                C4437f c4437f = new C4437f(list, c4338e, abstractC4433c, c4335c, i + 1, c4135y, this.f13794g, this.f13795h, this.f13796i, this.f13797j, this.f13798k);
                AbstractC4125t abstractC4125t = list.get(i);
                C4084b0 mo921a = abstractC4125t.mo921a(c4437f);
                if (abstractC4433c != null && this.f13792e + 1 < this.f13788a.size() && c4437f.f13799l != 1) {
                    throw new IllegalStateException("network interceptor " + abstractC4125t + " must call proceed() exactly once");
                } else if (mo921a == null) {
                    throw new NullPointerException("interceptor " + abstractC4125t + " returned null");
                } else if (mo921a.f12803g != null) {
                    return mo921a;
                } else {
                    throw new IllegalStateException("interceptor " + abstractC4125t + " returned a response with no body");
                }
            }
        }
        throw new AssertionError();
    }
}

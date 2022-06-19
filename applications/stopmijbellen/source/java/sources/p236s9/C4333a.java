package p236s9;

import java.io.IOException;
import java.util.Objects;
import okhttp3.internal.connection.RouteException;
import p204p9.AbstractC4125t;
import p204p9.C4084b0;
import p204p9.C4128v;
import p204p9.C4135y;
import p246t9.AbstractC4433c;
import p246t9.C4437f;
/* renamed from: s9.a */
/* loaded from: classes2-dex2jar.jar:s9/a.class */
public final class C4333a implements AbstractC4125t {

    /* renamed from: a */
    public final C4128v f13480a;

    public C4333a(C4128v c4128v) {
        this.f13480a = c4128v;
    }

    @Override // p204p9.AbstractC4125t
    /* renamed from: a */
    public C4084b0 mo921a(AbstractC4125t.AbstractC4126a abstractC4126a) throws IOException {
        C4437f c4437f = (C4437f) abstractC4126a;
        C4135y c4135y = c4437f.f13793f;
        C4338e c4338e = c4437f.f13789b;
        boolean equals = c4135y.f13042b.equals("GET");
        C4128v c4128v = this.f13480a;
        Objects.requireNonNull(c4338e);
        C4437f c4437f2 = (C4437f) abstractC4126a;
        int i = c4437f2.f13796i;
        int i2 = c4437f2.f13797j;
        int i3 = c4437f2.f13798k;
        Objects.requireNonNull(c4128v);
        try {
            AbstractC4433c m1087i = c4338e.m1076e(i, i2, i3, 0, c4128v.f12997u, !equals).m1087i(c4128v, abstractC4126a, c4338e);
            synchronized (c4338e.f13511d) {
                c4338e.f13521n = m1087i;
            }
            return c4437f.m926b(c4135y, c4338e, m1087i, c4338e.m1079b());
        } catch (IOException e) {
            throw new RouteException(e);
        }
    }
}

package p193e.p194a.p1114o5;

import android.net.Uri;
import java.util.List;
import p193e.p1432d.p1441d.AbstractC22151d;
import p193e.p1432d.p1441d.C22130b;
/* renamed from: e.a.o5.y1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/y1.class */
public class C19131y1 implements AbstractC22151d {

    /* renamed from: a */
    public C19107u f53354a;

    @Override // p193e.p1432d.p1441d.AbstractC22151d
    /* renamed from: a */
    public void mo8531a() {
    }

    @Override // p193e.p1432d.p1441d.AbstractC22151d
    /* renamed from: b */
    public void mo8530b(C22130b c22130b) {
        if (c22130b == null) {
            return;
        }
        C19107u c19107u = this.f53354a;
        boolean z = true;
        c19107u.m14093a(c19107u.f53329e + 1);
        C19107u c19107u2 = this.f53354a;
        C22130b.C22140j c22140j = c22130b.f61466a;
        if (c22140j.f61520k == null) {
            c22140j.f61520k = c22130b.m8538c();
        }
        c19107u2.f53327c = c22130b.f61466a.f61520k;
        List<C22130b.C22145o> list = c22130b.f61472g;
        if (list == null || list.size() < 1) {
            z = false;
        }
        if (!z) {
            C19107u c19107u3 = this.f53354a;
            c19107u3.f53328d = null;
            c19107u3.f53326b = Uri.EMPTY;
            return;
        }
        C22130b.C22145o c22145o = c22130b.f61472g.get(0);
        C19107u c19107u4 = this.f53354a;
        c19107u4.f53326b = c22145o.f61535d;
        c19107u4.f53328d = c22145o.f61534c;
    }

    @Override // p193e.p1432d.p1441d.AbstractC22151d
    public void onStart() {
        this.f53354a = new C19107u();
    }
}

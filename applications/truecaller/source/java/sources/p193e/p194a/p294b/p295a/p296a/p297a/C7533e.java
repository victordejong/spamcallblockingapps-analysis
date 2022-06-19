package p193e.p194a.p294b.p295a.p296a.p297a;

import java.util.List;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.b.a.a.a.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/e.class */
public final /* synthetic */ class C7533e extends j implements l<String, s> {
    public C7533e(C7520d c7520d) {
        super(1, c7520d, C7520d.class, "onImageClick", "onImageClick(Ljava/lang/String;)V", 0);
    }

    /* renamed from: d */
    public Object m29530d(Object obj) {
        int indexOf;
        String str = (String) obj;
        s1.z.c.l.e(str, "p1");
        C7520d c7520d = (C7520d) ((b) this).b;
        List<String> list = c7520d.f23821g;
        if (list != null && (indexOf = list.indexOf(str)) > -1) {
            c7520d.m29534TA(indexOf);
        }
        return s.a;
    }
}

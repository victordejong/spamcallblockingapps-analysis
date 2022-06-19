package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
/* renamed from: n3.y.b.a.q0.w.x */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/x.class */
public final class C27294x {

    /* renamed from: a */
    public final List<Format> f76784a;

    /* renamed from: b */
    public final AbstractC27190p[] f76785b;

    public C27294x(List<Format> list) {
        this.f76784a = list;
        this.f76785b = new AbstractC27190p[list.size()];
    }

    /* renamed from: a */
    public void m611a(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        for (int i = 0; i < this.f76785b.length; i++) {
            c27264d.m647a();
            AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 3);
            Format format = this.f76784a.get(i);
            String str = format.f960i;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            String valueOf = String.valueOf(str);
            MediaSessionCompat.m43208q(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            String str2 = format.f952a;
            if (str2 == null) {
                str2 = c27264d.m646b();
            }
            m750i.mo740c(Format.m42836r(str2, str, null, -1, format.f954c, format.f948A, format.f949B, null, RecyclerView.FOREVER_NS, format.f962k));
            this.f76785b[i] = m750i;
        }
    }
}

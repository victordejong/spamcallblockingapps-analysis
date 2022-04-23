package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.app.Application;
import com.squareup.picasso.OkHttp3Downloader;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5563k;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10244w;
import p599h.C10250y;
/* renamed from: c.d.e.q.p0.j.q.b.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/s.class */
public class C5623s {

    /* renamed from: c.d.e.q.p0.j.q.b.s$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/s$a.class */
    public class C5624a implements AbstractC10238t {
        public C5624a(C5623s sVar) {
        }

        @Override // p599h.AbstractC10238t
        /* renamed from: a */
        public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
            C10250y.C10251a f = aVar.mo897i().m814f();
            f.m806a("Accept", "image/*");
            return aVar.mo900a(f.m812a());
        }
    }

    /* renamed from: a */
    public Picasso m23389a(Application application, C5563k kVar) {
        C10244w.C10246b bVar = new C10244w.C10246b();
        bVar.m837a(new C5624a(this));
        C10244w a = bVar.m840a();
        Picasso.Builder builder = new Picasso.Builder(application);
        builder.listener(kVar).downloader(new OkHttp3Downloader(a));
        return builder.build();
    }
}

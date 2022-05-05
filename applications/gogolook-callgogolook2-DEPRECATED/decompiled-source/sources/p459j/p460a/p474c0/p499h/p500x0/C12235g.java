package p459j.p460a.p474c0.p499h.p500x0;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: j.a.c0.h.x0.g */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/g.class */
public class C12235g {

    /* renamed from: a */
    public final C12227c f27573a;

    public C12235g(C12227c cVar) {
        this.f27573a = cVar;
    }

    /* renamed from: a */
    public C12226b m6619a(InputStream inputStream) throws C12229d, IOException {
        C12231f a = C12231f.m6642a(inputStream, this.f27573a);
        C12226b bVar = new C12226b(a.m6650a());
        for (int i = a.m6628i(); i != 5; i = a.m6628i()) {
            if (i == 0) {
                bVar.m6699a(new C12237i(a.m6636c()));
            } else if (i == 1) {
                C12236h f = a.m6631f();
                if (!f.m6582l()) {
                    a.m6634c(f);
                } else {
                    bVar.m6703a(f.m6593e()).m6579a(f);
                }
            } else if (i == 2) {
                C12236h f2 = a.m6631f();
                if (f2.m6595d() == 7) {
                    a.m6637b(f2);
                }
                bVar.m6703a(f2.m6593e()).m6579a(f2);
            } else if (i == 3) {
                byte[] bArr = new byte[a.m6640b()];
                if (bArr.length == a.m6641a(bArr)) {
                    bVar.m6697a(bArr);
                }
            } else if (i == 4) {
                byte[] bArr2 = new byte[a.m6632e()];
                if (bArr2.length == a.m6641a(bArr2)) {
                    bVar.m6702a(a.m6633d(), bArr2);
                }
            }
        }
        return bVar;
    }
}

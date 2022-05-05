package p081h.p203i.p316b.p320d;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.d.k */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/k.class */
public final class C9378k {

    /* renamed from: a */
    public final Readable f21414a;

    /* renamed from: b */
    public final Reader f21415b;

    /* renamed from: c */
    public final CharBuffer f21416c = C9365d.m15358a();

    /* renamed from: d */
    public final char[] f21417d = this.f21416c.array();

    /* renamed from: e */
    public final Queue<String> f21418e = new LinkedList();

    /* renamed from: f */
    public final AbstractC9376i f21419f = new C9379a();

    /* renamed from: h.i.b.d.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/k$a.class */
    public class C9379a extends AbstractC9376i {
        public C9379a() {
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9376i
        /* renamed from: a */
        public void mo15339a(String str, String str2) {
            C9378k.this.f21418e.add(str);
        }
    }

    public C9378k(Readable readable) {
        C9301k.m15478a(readable);
        this.f21414a = readable;
        this.f21415b = readable instanceof Reader ? (Reader) readable : null;
    }

    /* renamed from: a */
    public String m15341a() throws IOException {
        int i;
        while (true) {
            if (this.f21418e.peek() != null) {
                break;
            }
            this.f21416c.clear();
            Reader reader = this.f21415b;
            if (reader != null) {
                char[] cArr = this.f21417d;
                i = reader.read(cArr, 0, cArr.length);
            } else {
                i = this.f21414a.read(this.f21416c);
            }
            if (i == -1) {
                this.f21419f.m15345a();
                break;
            }
            this.f21419f.m15343a(this.f21417d, 0, i);
        }
        return this.f21418e.poll();
    }
}

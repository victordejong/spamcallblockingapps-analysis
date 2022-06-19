package p1727n3.p1874y.p1876b.p1877a.p1895t0.p1898q0.p1899r;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Queue;
/* renamed from: n3.y.b.a.t0.q0.r.g$a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/q0/r/g$a.class */
public class g$a {

    /* renamed from: a */
    public final BufferedReader f77034a;

    /* renamed from: b */
    public final Queue<String> f77035b;

    /* renamed from: c */
    public String f77036c;

    public g$a(Queue<String> queue, BufferedReader bufferedReader) {
        this.f77035b = queue;
        this.f77034a = bufferedReader;
    }

    /* renamed from: a */
    public boolean m462a() throws IOException {
        String trim;
        if (this.f77036c != null) {
            return true;
        }
        if (!this.f77035b.isEmpty()) {
            this.f77036c = this.f77035b.poll();
            return true;
        }
        do {
            String readLine = this.f77034a.readLine();
            this.f77036c = readLine;
            if (readLine == null) {
                return false;
            }
            trim = readLine.trim();
            this.f77036c = trim;
        } while (trim.isEmpty());
        return true;
    }

    /* renamed from: b */
    public String m461b() throws IOException {
        String str = null;
        if (m462a()) {
            str = this.f77036c;
            this.f77036c = null;
        }
        return str;
    }
}

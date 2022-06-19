package p193e.p1512i.p1516b.p1531s2;

import com.tenor.android.core.constant.StringConstant;
import e.m.e.k;
import e.m.e.r;
import e.m.e.u;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
/* renamed from: e.i.b.s2.j */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/j.class */
public class C23087j {

    /* renamed from: a */
    public final k f63915a;

    public C23087j(k kVar) {
        this.f63915a = kVar;
    }

    /* renamed from: a */
    public <T> T m7563a(Class<T> cls, InputStream inputStream) throws IOException {
        try {
            T t = (T) this.f63915a.d(new InputStreamReader(inputStream, Charset.forName(StringConstant.UTF8)), cls);
            if (t == null) {
                throw new EOFException();
            }
            return t;
        } catch (u e) {
            throw new IOException((Throwable) e);
        }
    }

    /* renamed from: b */
    public void m7562b(Object obj, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.forName(StringConstant.UTF8));
        try {
            this.f63915a.q(obj, outputStreamWriter);
            outputStreamWriter.flush();
        } catch (r e) {
            throw new IOException((Throwable) e);
        }
    }
}

package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: n3.y.b.a.w0.h */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/h.class */
public interface AbstractC27405h {

    /* renamed from: n3.y.b.a.w0.h$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/h$a.class */
    public interface AbstractC27406a {
        /* renamed from: a */
        AbstractC27405h m383a();
    }

    /* renamed from: a */
    Map<String, List<String>> m386a();

    /* renamed from: b */
    long m385b(C27409k c27409k) throws IOException;

    /* renamed from: c */
    void m384c(AbstractC27404e0 abstractC27404e0);

    void close() throws IOException;

    Uri getUri();

    int read(byte[] bArr, int i, int i2) throws IOException;
}

package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: e.m.a.c.p1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/l.class */
public interface AbstractC24739l {

    /* renamed from: e.m.a.c.p1.l$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/l$a.class */
    public interface AbstractC24740a {
        /* renamed from: a */
        AbstractC24739l mo4656a();
    }

    /* renamed from: a */
    Map<String, List<String>> mo4667a();

    /* renamed from: b */
    long mo4658b(C24742n c24742n) throws IOException;

    /* renamed from: c */
    void mo4669c(AbstractC24697f0 abstractC24697f0);

    void close() throws IOException;

    Uri getUri();

    int read(byte[] bArr, int i, int i2) throws IOException;
}

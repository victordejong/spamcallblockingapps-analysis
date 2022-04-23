package p131c.p161d.p170b.p188c.p201f1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.c.f1.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/j.class */
public interface AbstractC2827j {

    /* renamed from: c.d.b.c.f1.j$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/j$a.class */
    public interface AbstractC2828a {
        AbstractC2827j createDataSource();
    }

    /* renamed from: a */
    long mo18288a(C2829k kVar) throws IOException;

    /* renamed from: a */
    void mo28885a(AbstractC2841t tVar);

    void close() throws IOException;

    /* renamed from: o */
    Uri mo18287o();

    /* renamed from: p */
    Map<String, List<String>> mo28874p();

    int read(byte[] bArr, int i, int i2) throws IOException;
}

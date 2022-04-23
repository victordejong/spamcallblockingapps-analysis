package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/f.class */
public interface f {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/f$a.class */
    public interface a {
        f a();
    }

    int a(byte[] bArr, int i, int i2) throws IOException;

    long a(h hVar) throws IOException;

    Uri a();

    void a(w wVar);

    Map<String, List<String>> b();

    void c() throws IOException;
}

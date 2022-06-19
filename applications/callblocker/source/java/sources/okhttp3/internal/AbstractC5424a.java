package okhttp3.internal;

import java.net.Socket;
import javax.net.ssl.SSLSocket;
import okhttp3.C5399a;
import okhttp3.C5404ac;
import okhttp3.C5408ae;
import okhttp3.C5522j;
import okhttp3.C5524k;
import okhttp3.C5539s;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5463d;
import okhttp3.internal.connection.C5466f;
/* renamed from: okhttp3.internal.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a.class */
public abstract class AbstractC5424a {

    /* renamed from: a */
    public static AbstractC5424a f22678a;

    /* renamed from: a */
    public abstract int mo172a(C5404ac.C5405a c5405a);

    /* renamed from: a */
    public abstract Socket mo170a(C5522j c5522j, C5399a c5399a, C5466f c5466f);

    /* renamed from: a */
    public abstract C5462c mo169a(C5522j c5522j, C5399a c5399a, C5466f c5466f, C5408ae c5408ae);

    /* renamed from: a */
    public abstract C5463d mo171a(C5522j c5522j);

    /* renamed from: a */
    public abstract void mo167a(C5524k c5524k, SSLSocket sSLSocket, boolean z);

    /* renamed from: a */
    public abstract void mo166a(C5539s.C5540a c5540a, String str);

    /* renamed from: a */
    public abstract void mo165a(C5539s.C5540a c5540a, String str, String str2);

    /* renamed from: a */
    public abstract boolean mo173a(C5399a c5399a, C5399a c5399a2);

    /* renamed from: a */
    public abstract boolean mo168a(C5522j c5522j, C5462c c5462c);

    /* renamed from: b */
    public abstract void mo164b(C5522j c5522j, C5462c c5462c);
}

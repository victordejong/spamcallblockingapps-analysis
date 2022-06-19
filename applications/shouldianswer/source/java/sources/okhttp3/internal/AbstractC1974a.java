package okhttp3.internal;

import java.net.Socket;
import javax.net.ssl.SSLSocket;
import okhttp3.C1952a;
import okhttp3.C1955ab;
import okhttp3.C1959ad;
import okhttp3.C2072j;
import okhttp3.C2074k;
import okhttp3.C2087r;
import okhttp3.internal.connection.C2012c;
import okhttp3.internal.connection.C2013d;
import okhttp3.internal.connection.C2016f;
/* renamed from: okhttp3.internal.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/a.class */
public abstract class AbstractC1974a {

    /* renamed from: a */
    public static AbstractC1974a f4904a;

    /* renamed from: a */
    public abstract int mo1852a(C1955ab.C1956a c1956a);

    /* renamed from: a */
    public abstract Socket mo1850a(C2072j c2072j, C1952a c1952a, C2016f c2016f);

    /* renamed from: a */
    public abstract C2012c mo1849a(C2072j c2072j, C1952a c1952a, C2016f c2016f, C1959ad c1959ad);

    /* renamed from: a */
    public abstract C2013d mo1851a(C2072j c2072j);

    /* renamed from: a */
    public abstract void mo1847a(C2074k c2074k, SSLSocket sSLSocket, boolean z);

    /* renamed from: a */
    public abstract void mo1846a(C2087r.C2088a c2088a, String str);

    /* renamed from: a */
    public abstract void mo1845a(C2087r.C2088a c2088a, String str, String str2);

    /* renamed from: a */
    public abstract boolean mo1853a(C1952a c1952a, C1952a c1952a2);

    /* renamed from: a */
    public abstract boolean mo1848a(C2072j c2072j, C2012c c2012c);

    /* renamed from: b */
    public abstract void mo1844b(C2072j c2072j, C2012c c2012c);
}

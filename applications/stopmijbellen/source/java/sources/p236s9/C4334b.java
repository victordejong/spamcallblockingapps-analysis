package p236s9;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import p204p9.C4104h;
import p204p9.C4108j;
import p204p9.C4128v;
import p214q9.AbstractC4169a;
import p214q9.C4171c;
/* renamed from: s9.b */
/* loaded from: classes2-dex2jar.jar:s9/b.class */
public final class C4334b {

    /* renamed from: a */
    public final List<C4108j> f13481a;

    /* renamed from: b */
    public int f13482b = 0;

    /* renamed from: c */
    public boolean f13483c;

    /* renamed from: d */
    public boolean f13484d;

    public C4334b(List<C4108j> list) {
        this.f13481a = list;
    }

    /* renamed from: a */
    public C4108j m1094a(SSLSocket sSLSocket) throws IOException {
        C4108j c4108j;
        boolean z;
        int i = this.f13482b;
        int size = this.f13481a.size();
        while (true) {
            if (i >= size) {
                c4108j = null;
                break;
            }
            c4108j = this.f13481a.get(i);
            if (c4108j.m1415a(sSLSocket)) {
                this.f13482b = i + 1;
                break;
            }
            i++;
        }
        if (c4108j == null) {
            StringBuilder m8752j = C0082b.m8752j("Unable to find acceptable protocols. isFallback=");
            m8752j.append(this.f13484d);
            m8752j.append(", modes=");
            m8752j.append(this.f13481a);
            m8752j.append(", supported protocols=");
            m8752j.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
            throw new UnknownServiceException(m8752j.toString());
        }
        int i2 = this.f13482b;
        while (true) {
            if (i2 >= this.f13481a.size()) {
                z = false;
                break;
            } else if (this.f13481a.get(i2).m1415a(sSLSocket)) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        this.f13483c = z;
        AbstractC4169a abstractC4169a = AbstractC4169a.f13142a;
        boolean z2 = this.f13484d;
        Objects.requireNonNull((C4128v.C4129a) abstractC4169a);
        String[] m1319q = c4108j.f12921c != null ? C4171c.m1319q(C4104h.f12888b, sSLSocket.getEnabledCipherSuites(), c4108j.f12921c) : sSLSocket.getEnabledCipherSuites();
        String[] m1319q2 = c4108j.f12922d != null ? C4171c.m1319q(C4171c.f13149f, sSLSocket.getEnabledProtocols(), c4108j.f12922d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        Comparator<String> comparator = C4104h.f12888b;
        byte[] bArr = C4171c.f13144a;
        int length = supportedCipherSuites.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            }
            if (((C4104h.C4105a) comparator).compare(supportedCipherSuites[i3], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i3++;
        }
        String[] strArr = m1319q;
        if (z2) {
            strArr = m1319q;
            if (i3 != -1) {
                String str = supportedCipherSuites[i3];
                int length2 = m1319q.length + 1;
                strArr = new String[length2];
                System.arraycopy(m1319q, 0, strArr, 0, m1319q.length);
                strArr[length2 - 1] = str;
            }
        }
        C4108j.C4109a c4109a = new C4108j.C4109a(c4108j);
        c4109a.m1414a(strArr);
        c4109a.m1411d(m1319q2);
        C4108j c4108j2 = new C4108j(c4109a);
        String[] strArr2 = c4108j2.f12922d;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        String[] strArr3 = c4108j2.f12921c;
        if (strArr3 != null) {
            sSLSocket.setEnabledCipherSuites(strArr3);
        }
        return c4108j;
    }
}

package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzid;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.i.a.r5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/r5.class */
public final class RunnableC4802r5 implements Runnable {

    /* renamed from: a */
    public final URL f17362a;

    /* renamed from: b */
    public final AbstractC4784p5 f17363b;

    /* renamed from: c */
    public final String f17364c;

    /* renamed from: d */
    public final /* synthetic */ zzid f17365d;

    public RunnableC4802r5(zzid zzidVar, String str, URL url, byte[] bArr, Map<String, String> map, AbstractC4784p5 p5Var) {
        this.f17365d = zzidVar;
        Preconditions.m17281b(str);
        Preconditions.m17288a(url);
        Preconditions.m17288a(p5Var);
        this.f17362a = url;
        this.f17363b = p5Var;
        this.f17364c = str;
    }

    /* renamed from: a */
    public final /* synthetic */ void m24881a(int i, Exception exc, byte[] bArr, Map map) {
        this.f17363b.mo24879a(this.f17364c, i, exc, bArr, map);
    }

    /* renamed from: b */
    public final void m24880b(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f17365d.mo8795j().m9093a(new Runnable(this, i, exc, bArr, map) { // from class: c.d.b.d.i.a.q5

            /* renamed from: a */
            public final RunnableC4802r5 f17343a;

            /* renamed from: b */
            public final int f17344b;

            /* renamed from: c */
            public final Exception f17345c;

            /* renamed from: d */
            public final byte[] f17346d;

            /* renamed from: e */
            public final Map f17347e;

            {
                this.f17343a = this;
                this.f17344b = i;
                this.f17345c = exc;
                this.f17346d = bArr;
                this.f17347e = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17343a.m24881a(this.f17344b, this.f17345c, this.f17346d, this.f17347e);
            }
        });
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpURLConnection httpURLConnection;
        IOException e;
        Map<String, List<String>> map;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        Map<String, List<String>> map2;
        HttpURLConnection a;
        Map<String, List<String>> headerFields;
        byte[] a2;
        this.f17365d.mo9090b();
        int i = 0;
        i = 0;
        i = 0;
        i = 0;
        try {
            a = this.f17365d.m8947a(this.f17362a);
            try {
                i = a.getResponseCode();
                i = i;
                i = i;
                headerFields = a.getHeaderFields();
            } catch (IOException e2) {
                e = e2;
                map = null;
                httpURLConnection = a;
            } catch (Throwable th2) {
                th = th2;
                map2 = null;
                httpURLConnection2 = a;
            }
        } catch (IOException e3) {
            e = e3;
            httpURLConnection = null;
            map = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection2 = null;
            map2 = null;
        }
        try {
            zzid zzidVar = this.f17365d;
            a2 = zzid.m8948a(a);
            if (a != null) {
                a.disconnect();
            }
            m24880b(i, null, a2, headerFields);
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = a;
            map = headerFields;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            m24880b(i, e, null, map);
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection2 = a;
            map2 = headerFields;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            m24880b(i, null, null, map2);
            throw th;
        }
    }
}

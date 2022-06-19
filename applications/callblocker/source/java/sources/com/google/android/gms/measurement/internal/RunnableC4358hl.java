package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.hl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hl.class */
public final class RunnableC4358hl implements Runnable {

    /* renamed from: a */
    private final URL f19070a;

    /* renamed from: c */
    private final AbstractC4355hi f19072c;

    /* renamed from: d */
    private final String f19073d;

    /* renamed from: f */
    private final /* synthetic */ C4356hj f19075f;

    /* renamed from: b */
    private final byte[] f19071b = null;

    /* renamed from: e */
    private final Map<String, String> f19074e = null;

    public RunnableC4358hl(C4356hj c4356hj, String str, URL url, byte[] bArr, Map<String, String> map, AbstractC4355hi abstractC4355hi) {
        this.f19075f = c4356hj;
        C2662s.m13979a(str);
        C2662s.m13981a(url);
        C2662s.m13981a(abstractC4355hi);
        this.f19070a = url;
        this.f19072c = abstractC4355hi;
        this.f19073d = str;
    }

    /* renamed from: b */
    private final void m4370b(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        this.f19075f.mo4031u().m4587a(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.hk

            /* renamed from: a */
            private final RunnableC4358hl f19065a;

            /* renamed from: b */
            private final int f19066b;

            /* renamed from: c */
            private final Exception f19067c;

            /* renamed from: d */
            private final byte[] f19068d;

            /* renamed from: e */
            private final Map f19069e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19065a = this;
                this.f19066b = i;
                this.f19067c = exc;
                this.f19068d = bArr;
                this.f19069e = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19065a.m4371a(this.f19066b, this.f19067c, this.f19068d, this.f19069e);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m4371a(int i, Exception exc, byte[] bArr, Map map) {
        this.f19072c.mo4376a(this.f19073d, i, exc, bArr, map);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map<String, List<String>> map;
        HttpURLConnection httpURLConnection;
        int i;
        Throwable th;
        byte[] m4374a;
        this.f19075f.mo4038n();
        try {
            httpURLConnection = this.f19075f.m4373a(this.f19070a);
            int i2 = 0;
            int i3 = 0;
            try {
                if (this.f19074e != null) {
                    for (Map.Entry<String, String> entry : this.f19074e.entrySet()) {
                        httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                i = httpURLConnection.getResponseCode();
                i2 = i;
                i3 = i;
                map = httpURLConnection.getHeaderFields();
                try {
                    C4356hj c4356hj = this.f19075f;
                    m4374a = C4356hj.m4374a(httpURLConnection);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m4370b(i, null, m4374a, map);
                } catch (IOException e) {
                    e = e;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m4370b(i, e, null, map);
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    m4370b(i, null, null, map);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                map = null;
                i = i2;
            } catch (Throwable th3) {
                th = th3;
                map = null;
                i = i3;
            }
        } catch (IOException e3) {
            e = e3;
            map = null;
            httpURLConnection = null;
            i = 0;
        } catch (Throwable th4) {
            th = th4;
            map = null;
            httpURLConnection = null;
            i = 0;
        }
    }
}

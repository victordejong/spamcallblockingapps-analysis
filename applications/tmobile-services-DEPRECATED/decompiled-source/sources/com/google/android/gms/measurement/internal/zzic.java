package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzic.class */
public final class zzic implements Runnable {

    /* renamed from: f */
    private final URL f9478f;

    /* renamed from: g */
    private final zzid f9479g;

    /* renamed from: h */
    private final String f9480h;

    /* renamed from: i */
    private final /* synthetic */ zzia f9481i;

    public zzic(zzia zziaVar, String str, URL url, byte[] bArr, Map<String, String> map, zzid zzidVar) {
        this.f9481i = zziaVar;
        Preconditions.m14527g(str);
        Preconditions.m14523k(url);
        Preconditions.m14523k(zzidVar);
        this.f9478f = url;
        this.f9479g = zzidVar;
        this.f9480h = str;
    }

    /* renamed from: b */
    private final void m11237b(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        this.f9481i.mo11083b().m11409x(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.zzif

            /* renamed from: f */
            private final zzic f9482f;

            /* renamed from: g */
            private final int f9483g;

            /* renamed from: h */
            private final Exception f9484h;

            /* renamed from: i */
            private final byte[] f9485i;

            /* renamed from: j */
            private final Map f9486j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9482f = this;
                this.f9483g = i;
                this.f9484h = exc;
                this.f9485i = bArr;
                this.f9486j = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9482f.m11238a(this.f9483g, this.f9484h, this.f9485i, this.f9486j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m11238a(int i, Exception exc, byte[] bArr, Map map) {
        this.f9479g.mo11236a(this.f9480h, i, exc, bArr, map);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpURLConnection httpURLConnection;
        IOException e;
        Map<String, List<String>> map;
        HttpURLConnection httpURLConnection2;
        Throwable th;
        Map<String, List<String>> map2;
        HttpURLConnection s;
        Map<String, List<String>> headerFields;
        byte[] u;
        this.f9481i.mo11317d();
        int i = 0;
        i = 0;
        i = 0;
        i = 0;
        try {
            s = this.f9481i.m11242s(this.f9478f);
            try {
                i = s.getResponseCode();
                i = i;
                i = i;
                headerFields = s.getHeaderFields();
            } catch (IOException e2) {
                e = e2;
                map = null;
                httpURLConnection = s;
            } catch (Throwable th2) {
                th = th2;
                map2 = null;
                httpURLConnection2 = s;
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
            zzia zziaVar = this.f9481i;
            u = zzia.m11240u(s);
            if (s != null) {
                s.disconnect();
            }
            m11237b(i, null, u, headerFields);
        } catch (IOException e4) {
            e = e4;
            httpURLConnection = s;
            map = headerFields;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            m11237b(i, e, null, map);
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection2 = s;
            map2 = headerFields;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            m11237b(i, null, null, map2);
            throw th;
        }
    }
}

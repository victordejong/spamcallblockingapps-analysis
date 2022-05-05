package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.android.gms.internal.firebase-perf.zzaa;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import p081h.p203i.p204a.p224e.p259j.p269j.C7759a1;
import p081h.p203i.p204a.p224e.p259j.p269j.C7782d;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
import p081h.p203i.p325c.p379z.p382d.C10072c;
import p081h.p203i.p325c.p379z.p382d.C10073d;
import p081h.p203i.p325c.p379z.p382d.C10077h;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfUrlConnection.class */
public class FirebasePerfUrlConnection {
    /* renamed from: a */
    public static InputStream m31023a(C7782d dVar, C7928t5 t5Var, zzaa zzaaVar) throws IOException {
        zzaaVar.m31843a();
        long b = zzaaVar.m31841b();
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            URLConnection a2 = dVar.m19490a();
            return a2 instanceof HttpsURLConnection ? new C10073d((HttpsURLConnection) a2, zzaaVar, a).getInputStream() : a2 instanceof HttpURLConnection ? new C10072c((HttpURLConnection) a2, zzaaVar, a).getInputStream() : a2.getInputStream();
        } catch (IOException e) {
            a.m19571c(b);
            a.m19567f(zzaaVar.m31840c());
            a.m19575a(dVar.toString());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: a */
    public static Object m31022a(C7782d dVar, Class[] clsArr, C7928t5 t5Var, zzaa zzaaVar) throws IOException {
        zzaaVar.m31843a();
        long b = zzaaVar.m31841b();
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            URLConnection a2 = dVar.m19490a();
            return a2 instanceof HttpsURLConnection ? new C10073d((HttpsURLConnection) a2, zzaaVar, a).getContent(clsArr) : a2 instanceof HttpURLConnection ? new C10072c((HttpURLConnection) a2, zzaaVar, a).getContent(clsArr) : a2.getContent(clsArr);
        } catch (IOException e) {
            a.m19571c(b);
            a.m19567f(zzaaVar.m31840c());
            a.m19575a(dVar.toString());
            C10077h.m13454a(a);
            throw e;
        }
    }

    /* renamed from: b */
    public static Object m31021b(C7782d dVar, C7928t5 t5Var, zzaa zzaaVar) throws IOException {
        zzaaVar.m31843a();
        long b = zzaaVar.m31841b();
        C7759a1 a = C7759a1.m19576a(t5Var);
        try {
            URLConnection a2 = dVar.m19490a();
            return a2 instanceof HttpsURLConnection ? new C10073d((HttpsURLConnection) a2, zzaaVar, a).getContent() : a2 instanceof HttpURLConnection ? new C10072c((HttpURLConnection) a2, zzaaVar, a).getContent() : a2.getContent();
        } catch (IOException e) {
            a.m19571c(b);
            a.m19567f(zzaaVar.m31840c());
            a.m19575a(dVar.toString());
            C10077h.m13454a(a);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url) throws IOException {
        return m31021b(new C7782d(url), C7928t5.m18867c(), new com.google.android.gms.internal.firebase_perf.zzaa());
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) throws IOException {
        return m31022a(new C7782d(url), clsArr, C7928t5.m18867c(), new com.google.android.gms.internal.firebase_perf.zzaa());
    }

    @Keep
    public static Object instrument(Object obj) throws IOException {
        return obj instanceof HttpsURLConnection ? new C10073d((HttpsURLConnection) obj, new com.google.android.gms.internal.firebase_perf.zzaa(), C7759a1.m19576a(C7928t5.m18867c())) : obj instanceof HttpURLConnection ? new C10072c((HttpURLConnection) obj, new com.google.android.gms.internal.firebase_perf.zzaa(), C7759a1.m19576a(C7928t5.m18867c())) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) throws IOException {
        return m31023a(new C7782d(url), C7928t5.m18867c(), new com.google.android.gms.internal.firebase_perf.zzaa());
    }
}

package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import io.fabric.sdk.android.services.p068b.C1480i;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: io.fabric.sdk.android.e */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/e.class */
public class CallableC1454e implements Callable<Map<String, C1461j>> {

    /* renamed from: a */
    final String f4029a;

    public CallableC1454e(String str) {
        this.f4029a = str;
    }

    /* renamed from: a */
    private C1461j m3566a(ZipEntry zipEntry, ZipFile zipFile) {
        Throwable th;
        IOException e;
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty("fabric-identifier");
                    String property2 = properties.getProperty("fabric-version");
                    String property3 = properties.getProperty("fabric-build-type");
                    if (!TextUtils.isEmpty(property) && !TextUtils.isEmpty(property2)) {
                        C1461j c1461j = new C1461j(property, property2, property3);
                        C1480i.m3498a((Closeable) inputStream);
                        return c1461j;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid format of fabric file,");
                    sb.append(zipEntry.getName());
                    throw new IllegalStateException(sb.toString());
                } catch (IOException e2) {
                    e = e2;
                    AbstractC1462k m3572g = C1449c.m3572g();
                    InputStream inputStream2 = inputStream;
                    InputStream inputStream3 = inputStream;
                    StringBuilder sb2 = new StringBuilder();
                    InputStream inputStream4 = inputStream;
                    sb2.append("Error when parsing fabric properties ");
                    InputStream inputStream5 = inputStream;
                    sb2.append(zipEntry.getName());
                    InputStream inputStream6 = inputStream;
                    m3572g.mo3545e("Fabric", sb2.toString(), e);
                    C1480i.m3498a((Closeable) inputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                C1480i.m3498a(zipFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            zipFile = null;
            C1480i.m3498a(zipFile);
            throw th;
        }
    }

    /* renamed from: c */
    private Map<String, C1461j> m3564c() {
        HashMap hashMap = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            C1461j c1461j = new C1461j("com.google.firebase.firebase-ads", "0.0.0", "binary");
            hashMap.put(c1461j.m3558a(), c1461j);
            C1449c.m3572g().mo3550b("Fabric", "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception e) {
        }
        return hashMap;
    }

    /* renamed from: d */
    private Map<String, C1461j> m3563d() {
        C1461j m3566a;
        HashMap hashMap = new HashMap();
        ZipFile m3565b = m3565b();
        Enumeration<? extends ZipEntry> entries = m3565b.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            if (nextElement.getName().startsWith("fabric/") && nextElement.getName().length() > 7 && (m3566a = m3566a(nextElement, m3565b)) != null) {
                hashMap.put(m3566a.m3558a(), m3566a);
                C1449c.m3572g().mo3550b("Fabric", String.format("Found kit:[%s] version:[%s]", m3566a.m3558a(), m3566a.m3557b()));
            }
        }
        if (m3565b != null) {
            try {
                m3565b.close();
            } catch (IOException e) {
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public Map<String, C1461j> call() {
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(m3564c());
        hashMap.putAll(m3563d());
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3550b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return hashMap;
    }

    /* renamed from: b */
    protected ZipFile m3565b() {
        return new ZipFile(this.f4029a);
    }
}

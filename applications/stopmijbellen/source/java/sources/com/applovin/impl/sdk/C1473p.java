package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1327e;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.google.android.gms.internal.ads.C1676a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.applovin.impl.sdk.p */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/p.class */
public class C1473p {

    /* renamed from: b */
    private final C1408l f5548b;

    /* renamed from: c */
    private final C1479t f5549c;

    /* renamed from: a */
    private final String f5547a = "FileManager";

    /* renamed from: d */
    private final Object f5550d = new Object();

    /* renamed from: e */
    private final Set<String> f5551e = new HashSet();

    public C1473p(C1408l c1408l) {
        this.f5548b = c1408l;
        this.f5549c = c1408l.m5542A();
    }

    /* renamed from: a */
    private File m5154a(Context context) {
        return new File(context.getFilesDir(), "al");
    }

    /* renamed from: a */
    private File m5145a(String str, boolean z, Context context) {
        if (!StringUtils.isValidString(str)) {
            this.f5549c.m5116b("FileManager", "Nothing to look up, skipping...");
            return null;
        }
        C1479t c1479t = this.f5549c;
        c1479t.m5116b("FileManager", "Looking up cached resource: " + str);
        String str2 = str;
        if (str.contains("icon")) {
            str2 = str.replace("/", "_").replace(".", "_");
        }
        File m5154a = m5154a(context);
        File file = new File(m5154a, str2);
        if (z) {
            try {
                m5154a.mkdirs();
            } catch (Throwable th) {
                C1479t c1479t2 = this.f5549c;
                c1479t2.m5115b("FileManager", "Unable to make cache directory at " + m5154a, th);
                return null;
            }
        }
        return file;
    }

    /* renamed from: a */
    private boolean m5149a(File file, String str, List<String> list, boolean z, C1327e c1327e) {
        if (file == null || !file.exists() || file.isDirectory()) {
            InputStream inputStream = null;
            try {
                InputStream m5146a = m5146a(str, list, z, c1327e);
                inputStream = m5146a;
                boolean m5143b = m5143b(m5146a, file);
                Utils.close(m5146a, this.f5548b);
                return m5143b;
            } catch (Throwable th) {
                Utils.close(inputStream, this.f5548b);
                throw th;
            }
        }
        this.f5549c.m5116b("FileManager", "File exists for " + str);
        if (c1327e == null) {
            return true;
        }
        c1327e.m5753b(file.length());
        return true;
    }

    /* renamed from: b */
    private void m5144b(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f5550d) {
            boolean add = this.f5551e.add(absolutePath);
            while (!add) {
                try {
                    this.f5550d.wait();
                    add = this.f5551e.add(absolutePath);
                } catch (InterruptedException e) {
                    C1479t c1479t = this.f5549c;
                    c1479t.m5115b("FileManager", "Lock '" + absolutePath + "' interrupted", e);
                    throw new RuntimeException(e);
                }
            }
        }
    }

    /* renamed from: c */
    private void m5141c(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f5550d) {
            this.f5551e.remove(absolutePath);
            this.f5550d.notifyAll();
        }
    }

    /* renamed from: a */
    public File m5147a(String str, Context context) {
        return m5145a(str, true, context);
    }

    /* renamed from: a */
    public InputStream m5146a(String str, List<String> list, boolean z, C1327e c1327e) {
        if (z && !Utils.isDomainWhitelisted(str, list)) {
            C1479t c1479t = this.f5549c;
            c1479t.m5116b("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            return null;
        }
        String str2 = str;
        if (((Boolean) this.f5548b.m5511a(C1314b.f4841cR)).booleanValue()) {
            str2 = str;
            if (!str.contains("https://")) {
                this.f5549c.m5112d("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
                str2 = str.replace("http://", "https://");
            }
        }
        C1479t c1479t2 = this.f5549c;
        c1479t2.m5116b("FileManager", "Loading " + str2 + "...");
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            httpURLConnection.setConnectTimeout(((Integer) this.f5548b.m5511a(C1314b.f4839cP)).intValue());
            httpURLConnection.setReadTimeout(((Integer) this.f5548b.m5511a(C1314b.f4840cQ)).intValue());
            httpURLConnection.setDefaultUseCaches(true);
            httpURLConnection.setUseCaches(true);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            int responseCode = httpURLConnection.getResponseCode();
            c1327e.m5757a(responseCode);
            if (responseCode < 200 || responseCode >= 300) {
                return null;
            }
            C1479t c1479t3 = this.f5549c;
            c1479t3.m5116b("FileManager", "Opened stream to resource " + str2);
            return httpURLConnection.getInputStream();
        } catch (IOException e) {
            C1479t c1479t4 = this.f5549c;
            c1479t4.m5115b("FileManager", "Error loading " + str2, e);
            c1327e.m5755a(e);
            return null;
        }
    }

    /* renamed from: a */
    public String m5153a(Context context, String str, String str2, List<String> list, boolean z, C1327e c1327e) {
        return m5152a(context, str, str2, list, z, false, c1327e);
    }

    /* renamed from: a */
    public String m5152a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, C1327e c1327e) {
        if (!StringUtils.isValidString(str)) {
            this.f5549c.m5116b("FileManager", "Nothing to cache, skipping...");
            return null;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        String str3 = lastPathSegment;
        if (StringUtils.isValidString(lastPathSegment)) {
            str3 = lastPathSegment;
            if (StringUtils.isValidString(str2)) {
                str3 = C1676a.m4789h(str2, lastPathSegment);
            }
        }
        File m5147a = m5147a(str3, context);
        if (!m5149a(m5147a, str, list, z, c1327e)) {
            return null;
        }
        C1479t c1479t = this.f5549c;
        c1479t.m5116b("FileManager", "Caching succeeded for file " + str3);
        if (z2) {
            str3 = Uri.fromFile(m5147a).toString();
        }
        return str3;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    /* renamed from: a */
    public String m5151a(File file) {
        FileInputStream fileInputStream;
        FileNotFoundException e;
        IOException e2;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        if (file == null) {
            return null;
        }
        C1479t c1479t = this.f5549c;
        String m8752j = C0082b.m8752j("Reading resource from filesystem: ");
        m8752j.append(file.getName());
        c1479t.m5116b("FileManager", m8752j.toString());
        try {
            try {
                m5144b(file);
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        bArr = new byte[8192];
                    } catch (Throwable th2) {
                        th = th2;
                        this.f5549c.m5115b("FileManager", "Unknown failure to read file.", th);
                        m8752j = null;
                        Utils.close(fileInputStream, this.f5548b);
                        m5141c(file);
                        return m8752j;
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    C1479t c1479t2 = this.f5549c;
                    FileInputStream fileInputStream2 = fileInputStream;
                    FileInputStream fileInputStream3 = fileInputStream;
                    StringBuilder sb = new StringBuilder();
                    FileInputStream fileInputStream4 = fileInputStream;
                    sb.append("File not found. ");
                    FileInputStream fileInputStream5 = fileInputStream;
                    sb.append(e);
                    FileInputStream fileInputStream6 = fileInputStream;
                    c1479t2.m5114c("FileManager", sb.toString());
                    m8752j = null;
                    Utils.close(fileInputStream, this.f5548b);
                    m5141c(file);
                    return m8752j;
                } catch (IOException e4) {
                    e2 = e4;
                    C1479t c1479t3 = this.f5549c;
                    FileInputStream fileInputStream7 = fileInputStream;
                    FileInputStream fileInputStream8 = fileInputStream;
                    StringBuilder sb2 = new StringBuilder();
                    FileInputStream fileInputStream9 = fileInputStream;
                    sb2.append("Failed to read file: ");
                    FileInputStream fileInputStream10 = fileInputStream;
                    sb2.append(file.getName());
                    FileInputStream fileInputStream11 = fileInputStream;
                    sb2.append(e2);
                    FileInputStream fileInputStream12 = fileInputStream;
                    c1479t3.m5116b("FileManager", sb2.toString());
                    m8752j = null;
                    Utils.close(fileInputStream, this.f5548b);
                    m5141c(file);
                    return m8752j;
                }
            } catch (Throwable th3) {
                Utils.close(m8752j, this.f5548b);
                m5141c(file);
                throw th3;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            fileInputStream = null;
        } catch (IOException e6) {
            e2 = e6;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
        while (true) {
            int read = fileInputStream.read(bArr, 0, 8192);
            if (read < 0) {
                break;
            }
            try {
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Exception e7) {
                Utils.close(byteArrayOutputStream, this.f5548b);
                m8752j = null;
            }
            Utils.close(fileInputStream, this.f5548b);
            m5141c(file);
            return m8752j;
        }
        m8752j = byteArrayOutputStream.toString("UTF-8");
        Utils.close(fileInputStream, this.f5548b);
        m5141c(file);
        return m8752j;
    }

    /* renamed from: a */
    public boolean m5150a(File file, String str, List<String> list, C1327e c1327e) {
        return m5149a(file, str, list, true, c1327e);
    }

    /* renamed from: a */
    public boolean m5148a(InputStream inputStream, File file) {
        Throwable th;
        FileOutputStream fileOutputStream;
        C1479t c1479t = this.f5549c;
        StringBuilder m8752j = C0082b.m8752j("Writing resource to filesystem: ");
        m8752j.append(file.getName());
        c1479t.m5116b("FileManager", m8752j.toString());
        try {
            m5144b(file);
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = inputStream.read(bArr, 0, 8192);
                    if (read < 0) {
                        Utils.close(fileOutputStream2, this.f5548b);
                        m5141c(file);
                        return true;
                    }
                    try {
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (Exception e) {
                        this.f5549c.m5115b("FileManager", "Failed to write next buffer to file", e);
                        Utils.close(fileOutputStream2, this.f5548b);
                        m5141c(file);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                try {
                    this.f5549c.m5115b("FileManager", "Unknown failure to write file.", th);
                    Utils.close(fileOutputStream, this.f5548b);
                    m5141c(file);
                    return false;
                } catch (Throwable th3) {
                    Utils.close(fileOutputStream, this.f5548b);
                    m5141c(file);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    /* renamed from: b */
    public boolean m5143b(InputStream inputStream, File file) {
        if (file == null) {
            return false;
        }
        C1479t c1479t = this.f5549c;
        StringBuilder m8752j = C0082b.m8752j("Caching ");
        m8752j.append(file.getAbsolutePath());
        m8752j.append("...");
        c1479t.m5116b("FileManager", m8752j.toString());
        if (!m5148a(inputStream, file)) {
            C1479t c1479t2 = this.f5549c;
            StringBuilder m8752j2 = C0082b.m8752j("Unable to cache ");
            m8752j2.append(file.getAbsolutePath());
            c1479t2.m5111e("FileManager", m8752j2.toString());
            return false;
        }
        C1479t c1479t3 = this.f5549c;
        c1479t3.m5116b("FileManager", "Caching completed for " + file);
        return true;
    }

    /* renamed from: b */
    public boolean m5142b(String str, Context context) {
        File m5145a = m5145a(str, false, context);
        boolean z = false;
        if (m5145a != null) {
            z = false;
            if (m5145a.exists()) {
                z = false;
                if (!m5145a.isDirectory()) {
                    z = true;
                }
            }
        }
        return z;
    }
}

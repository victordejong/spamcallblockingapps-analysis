package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.firebase.crashlytics.internal.common.s */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/s.class */
class C9124s implements AbstractC9129x {

    /* renamed from: a */
    private final File f39397a;

    /* renamed from: b */
    private final String f39398b;

    /* renamed from: c */
    private final String f39399c;

    public C9124s(String str, String str2, File file) {
        this.f39398b = str;
        this.f39399c = str2;
        this.f39397a = file;
    }

    /* renamed from: c */
    private byte[] m1782c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream mo1765g = mo1765g();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            if (mo1765g == null) {
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (mo1765g == null) {
                    return null;
                }
                mo1765g.close();
                return null;
            }
            while (true) {
                try {
                    int read = mo1765g.read(bArr);
                    if (read <= 0) {
                        gZIPOutputStream.finish();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        mo1765g.close();
                        return byteArray;
                    }
                    gZIPOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: a */
    public String mo1767a() {
        return this.f39399c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: b */
    public AbstractC9004v.AbstractC9008c.AbstractC9010b mo1766b() {
        byte[] m1782c = m1782c();
        return m1782c != null ? AbstractC9004v.AbstractC9008c.AbstractC9010b.m2275a().mo2271b(m1782c).mo2270c(this.f39398b).mo2272a() : null;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: g */
    public InputStream mo1765g() {
        if (!this.f39397a.exists() || !this.f39397a.isFile()) {
            return null;
        }
        try {
            return new FileInputStream(this.f39397a);
        } catch (FileNotFoundException e) {
            return null;
        }
    }
}

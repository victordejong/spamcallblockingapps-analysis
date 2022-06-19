package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.firebase.crashlytics.internal.common.y */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/y.class */
class C9130y {
    /* renamed from: a */
    private static void m1764a(InputStream inputStream, File file) {
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        gZIPOutputStream2.finish();
                        CommonUtils.m1969f(gZIPOutputStream2);
                        return;
                    }
                    gZIPOutputStream2.write(bArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    CommonUtils.m1969f(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
        }
    }

    /* renamed from: b */
    public static void m1763b(File file, List<AbstractC9129x> list) {
        for (AbstractC9129x abstractC9129x : list) {
            InputStream inputStream = null;
            try {
                InputStream mo1765g = abstractC9129x.mo1765g();
                if (mo1765g == null) {
                    inputStream = mo1765g;
                } else {
                    m1764a(mo1765g, new File(file, abstractC9129x.mo1767a()));
                    inputStream = mo1765g;
                }
            } catch (IOException e) {
            } catch (Throwable th) {
                CommonUtils.m1969f(null);
                throw th;
            }
            CommonUtils.m1969f(inputStream);
        }
    }
}

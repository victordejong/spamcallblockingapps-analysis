package com.tmobile.tmoid.helperlib.sit.http;

import com.tmobile.tmoid.helperlib.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/http/Util.class */
public class Util {
    /* renamed from: a */
    public static byte[] m4859a(byte[] bArr) throws IOException {
        Throwable th;
        Exception e;
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        GZIPOutputStream gZIPOutputStream3 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.flush();
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e3) {
            e = e3;
            gZIPOutputStream2 = gZIPOutputStream;
            Log.m4653d("TMO-Agent", "request failed with exception: ", e);
            throw new IOException(e);
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream3 = gZIPOutputStream;
            if (gZIPOutputStream3 != null) {
                try {
                    gZIPOutputStream3.close();
                } catch (Exception e4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m4858b(byte[] r4) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 157
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.http.Util.m4858b(byte[]):java.lang.String");
    }
}

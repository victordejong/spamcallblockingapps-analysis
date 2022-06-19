package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Message;
import java.io.File;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/x.class */
public class C1732x {
    /* renamed from: a */
    public static File m39790a(Context context, File file, String str) {
        if (context == null || file == null || C1626as.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if (r0.canWrite() == false) goto L7;
     */
    /* renamed from: aE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File m39789aE(android.content.Context r2) {
        /*
            r0 = r2
            java.io.File r0 = r0.getExternalCacheDir()     // Catch: java.lang.Exception -> L20
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L12
            r0 = r3
            r4 = r0
            r0 = r3
            boolean r0 = r0.canWrite()     // Catch: java.lang.Exception -> L1a
            if (r0 != 0) goto L29
        L12:
            r0 = r2
            java.io.File r0 = r0.getCacheDir()     // Catch: java.lang.Exception -> L1a
            r4 = r0
            goto L29
        L1a:
            r4 = move-exception
            r0 = r3
            r2 = r0
            goto L23
        L20:
            r4 = move-exception
            r0 = 0
            r2 = r0
        L23:
            r0 = r4
            com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r0)
            r0 = r2
            r4 = r0
        L29:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.C1732x.m39789aE(android.content.Context):java.io.File");
    }

    /* renamed from: aF */
    public static File m39788aF(Context context) throws IOException {
        return m39785c(context, "JPEG_", ".jpg");
    }

    /* renamed from: b */
    public static File m39787b(Context context, Message message) {
        if (context == null || message == null || message.getChannelId() <= 0 || C1626as.isEmpty(message.getAlias())) {
            return null;
        }
        return new File(m39780j(context, Long.toString(message.getChannelId())), message.getAlias());
    }

    /* renamed from: bs */
    public static void m39786bs(String str) {
        try {
            m39781f(new File(str));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static File m39785c(Context context, String str, String str2) throws IOException {
        File file;
        String str3;
        File m39784ck;
        try {
            str3 = str + System.currentTimeMillis();
            m39784ck = m39784ck(context);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            C1723q.m39823a(e2);
            file = null;
        }
        if (m39784ck == null) {
            return null;
        }
        file = File.createTempFile(str3, str2, m39784ck);
        return file;
    }

    /* renamed from: ck */
    private static File m39784ck(Context context) {
        File m39790a;
        File m39790a2;
        File m39789aE = m39789aE(context);
        if (m39789aE == null || !m39789aE.canWrite() || (m39790a = m39790a(context, m39789aE, "freshchat")) == null || (m39790a2 = m39790a(context, m39790a, "tmp")) == null || !m39790a2.canWrite()) {
            return null;
        }
        return m39790a2;
    }

    /* renamed from: cl */
    public static void m39783cl(Context context) {
        try {
            File m39784ck = m39784ck(context);
            if (m39784ck == null || !m39784ck.exists() || !m39784ck.isDirectory()) {
                return;
            }
            m39782e(m39784ck);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: e */
    public static void m39782e(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IllegalArgumentException("not a directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m39782e(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    /* renamed from: f */
    public static void m39781f(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: j */
    private static File m39780j(Context context, String str) {
        File externalFilesDir = C1594aa.m40352aL(context) ? context.getExternalFilesDir(null) : context.getCacheDir();
        StringBuilder sb = new StringBuilder();
        sb.append(externalFilesDir.getAbsolutePath());
        String str2 = File.separator;
        File file = new File(C22128a.m8606k(sb, str2, "freshchat", str2, str));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }
}

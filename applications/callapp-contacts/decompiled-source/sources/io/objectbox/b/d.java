package io.objectbox.b;

import io.objectbox.BoxStore;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.net.URLConnection;
import org.a.a.b.a;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/d.class */
public class d {
    /* JADX WARN: Code restructure failed: missing block: B:38:0x012f, code lost:
        if (r0.startsWith("armv6") != false) goto L_0x00f6;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0307 A[Catch: UnsatisfiedLinkError -> 0x0364, TryCatch #0 {UnsatisfiedLinkError -> 0x0364, blocks: (B:66:0x02f3, B:68:0x0307, B:83:0x0356, B:85:0x035c, B:88:0x0363, B:72:0x0315, B:74:0x031b, B:76:0x0320), top: B:92:0x02f3, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0310  */
    static {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.objectbox.b.d.m6847clinit():void");
    }

    public static void a() {
    }

    private static void a(String str) {
        String concat = "/native/".concat(String.valueOf(str));
        URL resource = d.class.getResource(concat);
        if (resource == null) {
            System.err.println("Not available in classpath: ".concat(String.valueOf(concat)));
            return;
        }
        File file = new File(str);
        try {
            URLConnection openConnection = resource.openConnection();
            int contentLength = openConnection.getContentLength();
            long lastModified = openConnection.getLastModified();
            if (!file.exists() || file.length() != contentLength || file.lastModified() != lastModified) {
                BufferedOutputStream bufferedInputStream = new BufferedInputStream(openConnection.getInputStream());
                bufferedInputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    a.a(bufferedInputStream, bufferedInputStream);
                    if (lastModified > 0) {
                        file.setLastModified(lastModified);
                    }
                } finally {
                    a.a(bufferedInputStream);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static String b() {
        String str;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("uname -m").getInputStream()));
            str = bufferedReader.readLine();
            try {
                bufferedReader.close();
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            str = null;
        }
        return str;
    }

    private static boolean c() {
        if (BoxStore.a() == null) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("android.content.Context");
            if (BoxStore.b() == null) {
                Class.forName("com.getkeepsafe.relinker.ReLinker").getMethod("loadLibrary", cls, String.class, String.class).invoke(null, BoxStore.a(), "objectbox-jni", "2.9.1");
                return true;
            }
            BoxStore.b().getClass().getMethod("loadLibrary", cls, String.class, String.class).invoke(BoxStore.b(), BoxStore.a(), "objectbox-jni", "2.9.1");
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return false;
        }
    }
}

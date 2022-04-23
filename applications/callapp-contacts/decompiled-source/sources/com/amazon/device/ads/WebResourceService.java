package com.amazon.device.ads;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/WebResourceService.class */
public class WebResourceService implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static WebResourceService f6530a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f6531b = false;

    public static void a() {
        if (!f6531b) {
            WebResourceService b2 = b();
            DtbSharedPreferences.c();
            Long p = DtbSharedPreferences.p();
            if (p == null || new Date().getTime() - p.longValue() > 86400000) {
                f6531b = true;
                DtbThreadService.a().a(b2);
            }
        }
    }

    private void a(File file, File file2) {
        synchronized (this) {
            file.renameTo(file2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static WebResourceService b() {
        if (f6530a == null) {
            f6530a = new WebResourceService();
        }
        return f6530a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(String str) throws IOException {
        synchronized (this) {
            File filesDir = AdRegistration.d().getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + "/mdtb_web/" + str + ".js");
            if (!file.exists()) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine.trim());
                    sb.append(StringUtils.LF);
                } else {
                    return sb.toString();
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String[] b2;
        DtbHttpClient dtbHttpClient;
        File filesDir;
        File filesDir2 = AdRegistration.d().getFilesDir();
        File file = new File(filesDir2.getAbsolutePath() + "/mdtb_web/");
        if (!file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
        boolean z = true;
        for (String str : WebResourceOptions.b()) {
            try {
                dtbHttpClient = new DtbHttpClient(WebResourceOptions.a() + str);
                dtbHttpClient.f6488c = DtbDebugProperties.b();
                dtbHttpClient.b();
            } catch (Exception e) {
                DtbLog.c("Error registering device for ads:" + e.toString());
                z = false;
            }
            if (dtbHttpClient.f6487b != 200) {
                throw new RuntimeException("resource " + str + " not available");
                break;
            }
            String str2 = dtbHttpClient.e;
            File createTempFile = File.createTempFile("dtb-temp", "js", AdRegistration.d().getFilesDir());
            FileWriter fileWriter = new FileWriter(createTempFile);
            fileWriter.write(str2);
            fileWriter.close();
            a(createTempFile, new File(filesDir.getAbsolutePath() + "/mdtb_web/" + str));
        }
        if (z) {
            DtbSharedPreferences.c();
            DtbSharedPreferences.d(new Date().getTime());
        }
        f6531b = false;
    }
}

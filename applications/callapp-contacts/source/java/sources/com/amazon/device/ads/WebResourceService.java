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

    /* renamed from: a */
    private static WebResourceService f11938a;

    /* renamed from: b */
    private static boolean f11939b = false;

    /* renamed from: a */
    public static void m38738a() {
        if (f11939b) {
            return;
        }
        WebResourceService m38735b = m38735b();
        DtbSharedPreferences.m38797c();
        Long m38773p = DtbSharedPreferences.m38773p();
        if (m38773p != null && new Date().getTime() - m38773p.longValue() <= 86400000) {
            return;
        }
        f11939b = true;
        DtbThreadService.m38766a().m38763a(m38735b);
    }

    /* renamed from: a */
    private void m38737a(File file, File file2) {
        synchronized (this) {
            file.renameTo(file2);
        }
    }

    /* renamed from: b */
    public static WebResourceService m38735b() {
        if (f11938a == null) {
            f11938a = new WebResourceService();
        }
        return f11938a;
    }

    /* renamed from: a */
    public final String m38736a(String str) throws IOException {
        synchronized (this) {
            File filesDir = AdRegistration.m39071d().getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + "/mdtb_web/" + str + ".js");
            if (!file.exists()) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return sb.toString();
                }
                sb.append(readLine.trim());
                sb.append(StringUtils.f67179LF);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String[] m38740b;
        DtbHttpClient dtbHttpClient;
        File filesDir;
        File filesDir2 = AdRegistration.m39071d().getFilesDir();
        File file = new File(filesDir2.getAbsolutePath() + "/mdtb_web/");
        if (!file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
        boolean z = true;
        for (String str : WebResourceOptions.m38740b()) {
            try {
                dtbHttpClient = new DtbHttpClient(WebResourceOptions.m38741a() + str);
                dtbHttpClient.f11884c = DtbDebugProperties.m38873b();
                dtbHttpClient.m38832b();
            } catch (Exception e) {
                DtbLog.m38821c("Error registering device for ads:" + e.toString());
                z = false;
            }
            if (dtbHttpClient.f11883b != 200) {
                throw new RuntimeException("resource " + str + " not available");
                break;
            }
            String str2 = dtbHttpClient.f11886e;
            File createTempFile = File.createTempFile("dtb-temp", "js", AdRegistration.m39071d().getFilesDir());
            FileWriter fileWriter = new FileWriter(createTempFile);
            fileWriter.write(str2);
            fileWriter.close();
            m38737a(createTempFile, new File(filesDir.getAbsolutePath() + "/mdtb_web/" + str));
        }
        if (z) {
            DtbSharedPreferences.m38797c();
            DtbSharedPreferences.m38792d(new Date().getTime());
        }
        f11939b = false;
    }
}

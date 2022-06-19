package com.amazon.device.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/WebResourceService.class */
public class WebResourceService implements Runnable {
    private static final long REFRESH_INTERVAL = 86400000;
    private static final String WEB_DIR = "/mdtb_web/";
    private static WebResourceService theService;
    private static final String LOG_TAG = WebResourceService.class.getSimpleName();
    private static boolean inProgress = false;

    private void createWebDirIfNeeded() {
        File filesDir = AdRegistration.getContext().getFilesDir();
        File file = new File(filesDir.getAbsolutePath() + WEB_DIR);
        if (!file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
    }

    public static WebResourceService getInstance() {
        if (theService == null) {
            theService = new WebResourceService();
        }
        return theService;
    }

    public static void init() {
        try {
            if (inProgress) {
                return;
            }
            WebResourceService webResourceService = getInstance();
            Long webResoucesLastPing = DtbSharedPreferences.getInstance().getWebResoucesLastPing();
            if (webResoucesLastPing != null && new Date().getTime() - webResoucesLastPing.longValue() <= 86400000) {
                return;
            }
            inProgress = true;
            DtbThreadService.getInstance().execute(webResourceService);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute init method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute init method", e);
        }
    }

    private void renameTo(File file, File file2) {
        synchronized (this) {
            file.renameTo(file2);
        }
    }

    public void deleteWebDirContent() {
        File filesDir = AdRegistration.getContext().getFilesDir();
        File file = new File(filesDir.getAbsolutePath() + WEB_DIR);
        if (!file.exists() || !file.isDirectory()) {
            return;
        }
        for (File file2 : file.listFiles()) {
            file2.delete();
        }
    }

    public String loadFile(String str) throws IOException {
        synchronized (this) {
            File filesDir = AdRegistration.getContext().getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + WEB_DIR + str + ".js");
            if (!file.exists()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    fileInputStream.close();
                    return sb.toString();
                }
                sb.append(readLine.trim());
                sb.append(StringConstant.NEW_LINE);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String[] cDNResources;
        DtbHttpClient dtbHttpClient;
        File filesDir;
        try {
            createWebDirIfNeeded();
            boolean z = true;
            for (String str : WebResourceOptions.getCDNResources()) {
                try {
                    dtbHttpClient = new DtbHttpClient(WebResourceOptions.getCDNHost() + str);
                    dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                    dtbHttpClient.executeGET();
                } catch (Exception e) {
                    DtbLog.error("Error registering device for ads:" + e.toString());
                    z = false;
                }
                if (dtbHttpClient.getResponseCode() != 200) {
                    throw new RuntimeException("resource " + str + " not available");
                    break;
                }
                String response = dtbHttpClient.getResponse();
                File createTempFile = File.createTempFile("dtb-temp", "js", AdRegistration.getContext().getFilesDir());
                FileWriter fileWriter = new FileWriter(createTempFile);
                fileWriter.write(response);
                fileWriter.close();
                renameTo(createTempFile, new File(filesDir.getAbsolutePath() + WEB_DIR + str));
            }
            if (z) {
                DtbSharedPreferences.getInstance().saveWebResoucesLastPing(new Date().getTime());
            }
            inProgress = false;
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute init method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute init method", e2);
        }
    }
}

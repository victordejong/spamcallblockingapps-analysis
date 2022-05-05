package io.fabric.sdk.android;

import android.os.SystemClock;
import android.text.TextUtils;
import com.privacystar.core.util.pdus.PduPart;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/FabricKitsFinder.class */
public class FabricKitsFinder implements Callable<Map<String, KitInfo>> {
    private static final String FABRIC_BUILD_TYPE_KEY = "fabric-build-type";
    static final String FABRIC_DIR = "fabric/";
    private static final String FABRIC_IDENTIFIER_KEY = "fabric-identifier";
    private static final String FABRIC_VERSION_KEY = "fabric-version";
    final String apkFileName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FabricKitsFinder(String str) {
        this.apkFileName = str;
    }

    private Map<String, KitInfo> findImplicitKits() {
        HashMap hashMap = new HashMap();
        try {
            Class.forName("com.google.android.gms.ads.AdView");
            KitInfo kitInfo = new KitInfo("com.google.firebase.firebase-ads", "0.0.0", PduPart.P_BINARY);
            hashMap.put(kitInfo.getIdentifier(), kitInfo);
            Fabric.getLogger().mo282v(Fabric.TAG, "Found kit: com.google.firebase.firebase-ads");
        } catch (Exception e) {
        }
        return hashMap;
    }

    private Map<String, KitInfo> findRegisteredKits() throws Exception {
        KitInfo loadKitInfo;
        HashMap hashMap = new HashMap();
        ZipFile loadApkFile = loadApkFile();
        Enumeration<? extends ZipEntry> entries = loadApkFile.entries();
        while (entries.hasMoreElements()) {
            ZipEntry zipEntry = (ZipEntry) entries.nextElement();
            if (zipEntry.getName().startsWith(FABRIC_DIR) && zipEntry.getName().length() > FABRIC_DIR.length() && (loadKitInfo = loadKitInfo(zipEntry, loadApkFile)) != null) {
                hashMap.put(loadKitInfo.getIdentifier(), loadKitInfo);
                Fabric.getLogger().mo282v(Fabric.TAG, String.format("Found kit:[%s] version:[%s]", loadKitInfo.getIdentifier(), loadKitInfo.getVersion()));
            }
        }
        if (loadApkFile != null) {
            try {
                loadApkFile.close();
            } catch (IOException e) {
            }
        }
        return hashMap;
    }

    private KitInfo loadKitInfo(ZipEntry zipEntry, ZipFile zipFile) {
        Throwable th;
        IOException e;
        InputStream inputStream;
        try {
            try {
                inputStream = zipFile.getInputStream(zipEntry);
                try {
                    Properties properties = new Properties();
                    properties.load(inputStream);
                    String property = properties.getProperty(FABRIC_IDENTIFIER_KEY);
                    String property2 = properties.getProperty(FABRIC_VERSION_KEY);
                    String property3 = properties.getProperty(FABRIC_BUILD_TYPE_KEY);
                    if (!TextUtils.isEmpty(property) && !TextUtils.isEmpty(property2)) {
                        KitInfo kitInfo = new KitInfo(property, property2, property3);
                        CommonUtils.closeQuietly(inputStream);
                        return kitInfo;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid format of fabric file,");
                    sb.append(zipEntry.getName());
                    throw new IllegalStateException(sb.toString());
                } catch (IOException e2) {
                    e = e2;
                    Logger logger = Fabric.getLogger();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Error when parsing fabric properties ");
                    sb2.append(zipEntry.getName());
                    logger.mo285e(Fabric.TAG, sb2.toString(), e);
                    CommonUtils.closeQuietly(inputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeQuietly(zipFile);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            zipFile = null;
            CommonUtils.closeQuietly(zipFile);
            throw th;
        }
    }

    @Override // java.util.concurrent.Callable
    public Map<String, KitInfo> call() throws Exception {
        HashMap hashMap = new HashMap();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        hashMap.putAll(findImplicitKits());
        hashMap.putAll(findRegisteredKits());
        Logger logger = Fabric.getLogger();
        logger.mo282v(Fabric.TAG, "finish scanning in " + (SystemClock.elapsedRealtime() - elapsedRealtime));
        return hashMap;
    }

    protected ZipFile loadApkFile() throws IOException {
        return new ZipFile(this.apkFileName);
    }
}

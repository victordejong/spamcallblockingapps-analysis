package com.verizon.ads.verizonsspconfigprovider;

import android.content.Context;
import android.os.Build;
import com.mopub.common.Constants;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Configuration;
import com.verizon.ads.ConfigurationProvider;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.Plugin;
import com.verizon.ads.VASAds;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.IOUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider.class */
public class VerizonSSPConfigProvider implements ConfigurationProvider {
    private static final String DEFAULT_HANDSHAKE_BASE_URL = "https://ads.nexage.com";
    private static final int ERROR_BUSY = -5;
    private static final int ERROR_HTTP_REQUEST = -4;
    private static final int ERROR_INCOMPATIBLE_VERSION = -3;
    private static final int ERROR_INVALID_VERSION = -2;
    private static final int ERROR_PARSING = -1;
    private static final String HANDSHAKE_JSON = "handshake.json";
    private static final String HANDSHAKE_PATH = "/admax/sdk/handshake/1";
    private static final int HANDSHAKE_REQUEST_TIMEOUT = 15000;
    private static final String HANDSHAKE_VERSION = "1";
    private static final String KEY_EDITION_NAME = "editionName";
    private static final String KEY_EDITION_VERSION = "editionVersion";
    private static final String KEY_HANDSHAKE_BASE_URL = "handshakeBaseUrl";
    private static final int MAX_HANDSHAKE_ATTEMPTS = 10;
    private static final String VERIZON_ADS_DIRECTORY = "/.com.verizon.ads/";
    private final String appId;
    private int handshakeAttempts = 0;
    private AtomicBoolean requestInProgress = new AtomicBoolean(false);
    private final File vasAdsDirectory;
    private static final Logger logger = Logger.getInstance(VerizonSSPConfigProvider.class);
    private static final String WHO = VerizonSSPConfigProvider.class.getSimpleName();
    private static final DomainInfo DOMAIN_VERIZON_ADS = new DomainInfo(BuildConfig.LIBRARY_PACKAGE_NAME, null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_OMSDK = new DomainInfo(com.verizon.ads.omsdk.BuildConfig.LIBRARY_PACKAGE_NAME, null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_VERIZONSSP = new DomainInfo("com.verizon.ads.verizonssp", "verizon-ssp-config-key");
    private static final DomainInfo DOMAIN_VERIZON_ADS_CORE = new DomainInfo(VASAds.DOMAIN, "vas-core-key");
    private static final DomainInfo DOMAIN_VERIZON_ADS_NATIVEPLACEMENT = new DomainInfo(com.verizon.ads.nativeplacement.BuildConfig.LIBRARY_PACKAGE_NAME, null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_INLINEPLACEMENT = new DomainInfo(com.verizon.ads.inlineplacement.BuildConfig.LIBRARY_PACKAGE_NAME, null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_INTERSTITIALPLACEMENT = new DomainInfo(com.verizon.ads.interstitialplacement.BuildConfig.LIBRARY_PACKAGE_NAME, null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_VAST = new DomainInfo("com.verizon.ads.vast", null);
    private static final DomainInfo DOMAIN_VERIZON_ADS_VPAID = new DomainInfo("com.verizon.ads.vpaid", null);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo.class */
    public static class DomainInfo {

        /* renamed from: a */
        final String f61973a;

        /* renamed from: b */
        final String f61974b;

        DomainInfo(String str, String str2) {
            this.f61973a = str;
            this.f61974b = str2;
        }
    }

    public VerizonSSPConfigProvider(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.vasAdsDirectory = new File(applicationContext.getFilesDir() + VERIZON_ADS_DIRECTORY);
        this.appId = applicationContext.getPackageName();
    }

    static /* synthetic */ int access$008(VerizonSSPConfigProvider verizonSSPConfigProvider) {
        int i = verizonSSPConfigProvider.handshakeAttempts;
        verizonSSPConfigProvider.handshakeAttempts = i + 1;
        return i;
    }

    static String getHandshakeBaseUrl() {
        return Configuration.getString(DOMAIN_VERIZON_ADS_VERIZONSSP.f61973a, KEY_HANDSHAKE_BASE_URL, DEFAULT_HANDSHAKE_BASE_URL);
    }

    public static boolean isConfigProviderEnabled() {
        return Configuration.getBoolean(DOMAIN_VERIZON_ADS_VERIZONSSP.f61973a, "configProviderEnabled", true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0092, code lost:
        if ("green".equalsIgnoreCase(r0) != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.verizon.ads.ErrorInfo processHandshake(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.verizonsspconfigprovider.VerizonSSPConfigProvider.processHandshake(java.lang.String):com.verizon.ads.ErrorInfo");
    }

    public void saveHandshakeToFile(String str) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        logger.m5567d("Saving handshake file");
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                this.vasAdsDirectory.mkdirs();
                fileOutputStream2 = new FileOutputStream(new File(this.vasAdsDirectory, HANDSHAKE_JSON));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            IOUtils.write(fileOutputStream2, str);
            IOUtils.closeStream(fileOutputStream2);
        } catch (IOException e3) {
            fileOutputStream = fileOutputStream2;
            e = e3;
            logger.m5564e("Could not write handshake handshake.json", e);
            IOUtils.closeStream(fileOutputStream);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            IOUtils.closeStream(fileOutputStream3);
            throw th;
        }
    }

    private static void setConfigValue(DomainInfo domainInfo, String str, Object obj) {
        Configuration.set(obj, domainInfo.f61973a, str, domainInfo.f61974b);
    }

    JSONObject getHandshakeJSON() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        DomainInfo domainInfo = DOMAIN_VERIZON_ADS;
        String string = Configuration.getString(domainInfo.f61973a, KEY_EDITION_NAME, null);
        String string2 = Configuration.getString(domainInfo.f61973a, KEY_EDITION_VERSION, null);
        if (string == null || string2 == null) {
            jSONObject.put("sdkVer", String.format("core-%s", VASAds.getSDKInfo().version));
        } else {
            Object format = String.format("%s-%s", string, string2);
            jSONObject.put("sdkVer", format);
            jSONObject2.put("editionId", format);
        }
        jSONObject.put("ver", "1");
        jSONObject.put("os", Constants.ANDROID_PLATFORM);
        jSONObject.put("osv", Build.VERSION.RELEASE);
        jSONObject.put("appId", this.appId);
        jSONObject2.put("coreVer", VASAds.getSDKInfo().version);
        Set<Plugin> registeredPlugins = VASAds.getRegisteredPlugins();
        if (!registeredPlugins.isEmpty()) {
            JSONObject jSONObject3 = new JSONObject();
            for (Plugin plugin : registeredPlugins) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("name", plugin.getName());
                jSONObject4.put("version", plugin.getVersion());
                jSONObject4.put("author", plugin.getAuthor());
                if (plugin.getEmail() != null) {
                    jSONObject4.put("email", plugin.getEmail().toString());
                }
                if (plugin.getWebsite() != null) {
                    jSONObject4.put("website", plugin.getWebsite().toString());
                }
                jSONObject4.put("minApiLevel", plugin.getMinApiLevel());
                jSONObject4.put("enabled", VASAds.isPluginEnabled(plugin.getId()));
                jSONObject3.put(plugin.getId(), jSONObject4);
            }
            jSONObject2.put("sdkPlugins", jSONObject3);
        }
        jSONObject.put("sdkInfo", jSONObject2);
        return jSONObject;
    }

    @Override // com.verizon.ads.ConfigurationProvider
    public String getId() {
        return VerizonSSPConfigProvider.class.getSimpleName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v23, types: [java.lang.String] */
    String loadHandshakeFromFile() {
        Throwable th;
        FileInputStream fileInputStream;
        IOException e;
        logger.m5567d("Loading handshake file");
        Closeable closeable = null;
        try {
            try {
                fileInputStream = new FileInputStream(new File(this.vasAdsDirectory, HANDSHAKE_JSON));
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeStream(closeable);
                throw th;
            }
        } catch (FileNotFoundException e2) {
            fileInputStream = null;
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeStream(closeable);
            throw th;
        }
        try {
            closeable = IOUtils.read(fileInputStream, "UTF-8");
        } catch (FileNotFoundException e4) {
            logger.m5563i(String.format("Saved handshake '%s' does not exists", HANDSHAKE_JSON));
            closeable = null;
            IOUtils.closeStream(fileInputStream);
            return closeable;
        } catch (IOException e5) {
            e = e5;
            logger.m5564e(String.format("Could not read handshake '%s", HANDSHAKE_JSON), e);
            closeable = null;
            IOUtils.closeStream(fileInputStream);
            return closeable;
        }
        IOUtils.closeStream(fileInputStream);
        return closeable;
    }

    public boolean prepare() {
        try {
            DomainInfo domainInfo = DOMAIN_VERIZON_ADS_VERIZONSSP;
            if (Configuration.protectDomain(domainInfo.f61973a, domainInfo.f61974b)) {
                return true;
            }
            logger.m5565e(String.format("An error occurred while attempting to protect the domain '%s'.", domainInfo.f61973a));
            return false;
        } catch (Exception e) {
            logger.m5564e(String.format("An exception occurred while attempting to protect the domain '%s'.", DOMAIN_VERIZON_ADS_VERIZONSSP.f61973a), e);
            return false;
        }
    }

    HttpUtils.Response requestHandshake(String str) {
        try {
            String jSONObject = getHandshakeJSON().toString();
            if (Logger.isLogLevelEnabled(3)) {
                logger.m5567d(String.format("Requesting handshake.\n\tattempt: %d\n\turl: %s\n\tpost data: %s", Integer.valueOf(this.handshakeAttempts), str, jSONObject));
            }
            return HttpUtils.getContentFromPostRequest(str, jSONObject, "application/json", 15000);
        } catch (JSONException e) {
            logger.m5564e("Cannot build the handshake request data", e);
            return null;
        }
    }

    public void restoreHandshakeValues() {
        String loadHandshakeFromFile = loadHandshakeFromFile();
        if (loadHandshakeFromFile != null) {
            logger.m5567d("Restoring from saved handshake file");
            processHandshake(loadHandshakeFromFile);
        }
    }

    @Override // com.verizon.ads.ConfigurationProvider
    public void update(final ConfigurationProvider.UpdateListener updateListener) {
        Logger logger2 = logger;
        logger2.m5567d("Processing configuration update request");
        if (this.requestInProgress.compareAndSet(false, true)) {
            new Thread() { // from class: com.verizon.ads.verizonsspconfigprovider.VerizonSSPConfigProvider.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String handshakeBaseUrl = VerizonSSPConfigProvider.this.handshakeAttempts < 10 ? VerizonSSPConfigProvider.getHandshakeBaseUrl() : null;
                    String str = handshakeBaseUrl;
                    if (handshakeBaseUrl == null) {
                        str = VerizonSSPConfigProvider.DEFAULT_HANDSHAKE_BASE_URL;
                    }
                    String concat = str.concat(VerizonSSPConfigProvider.HANDSHAKE_PATH);
                    VerizonSSPConfigProvider.access$008(VerizonSSPConfigProvider.this);
                    if (Logger.isLogLevelEnabled(3)) {
                        VerizonSSPConfigProvider.logger.m5567d(String.format("Requesting handshake from '%s' - attempt %d", concat, Integer.valueOf(VerizonSSPConfigProvider.this.handshakeAttempts)));
                    }
                    HttpUtils.Response requestHandshake = VerizonSSPConfigProvider.this.requestHandshake(concat);
                    ErrorInfo errorInfo = requestHandshake == null ? new ErrorInfo(VerizonSSPConfigProvider.WHO, "No response from handshake HTTP request", -4) : requestHandshake.code != 200 ? new ErrorInfo(VerizonSSPConfigProvider.WHO, String.format("Handshake request failed with HTTP response code: %d", Integer.valueOf(requestHandshake.code)), -4) : VerizonSSPConfigProvider.processHandshake(requestHandshake.content);
                    if (errorInfo == null) {
                        VerizonSSPConfigProvider.this.saveHandshakeToFile(requestHandshake.content);
                        VerizonSSPConfigProvider.this.handshakeAttempts = 0;
                    } else if (Logger.isLogLevelEnabled(3)) {
                        VerizonSSPConfigProvider.logger.m5567d(errorInfo.toString());
                    }
                    VerizonSSPConfigProvider.this.requestInProgress.set(false);
                    ConfigurationProvider.UpdateListener updateListener2 = updateListener;
                    if (updateListener2 != null) {
                        updateListener2.onComplete(VerizonSSPConfigProvider.this, errorInfo);
                    }
                }
            }.start();
            return;
        }
        ErrorInfo errorInfo = new ErrorInfo(WHO, "Handshake request already in progress", -5);
        if (Logger.isLogLevelEnabled(3)) {
            logger2.m5567d(errorInfo.toString());
        }
        if (updateListener == null) {
            return;
        }
        updateListener.onComplete(this, errorInfo);
    }
}

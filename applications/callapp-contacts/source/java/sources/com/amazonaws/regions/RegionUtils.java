package com.amazonaws.regions;

import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/RegionUtils.class */
public class RegionUtils {

    /* renamed from: a */
    private static List<Region> f12273a;

    /* renamed from: b */
    private static final Log f12274b = LogFactory.m38583a("com.amazonaws.request");

    /* renamed from: a */
    public static Region m38498a(String str) {
        for (Region region : m38499a()) {
            if (region.f12268a.equals(str)) {
                return region;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static List<Region> m38499a() {
        List<Region> list;
        synchronized (RegionUtils.class) {
            try {
                if (f12273a == null) {
                    m38497b();
                }
                list = f12273a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    /* renamed from: b */
    public static Region m38496b(String str) {
        String host = m38495c(str).getHost();
        for (Region region : m38499a()) {
            for (String str2 : region.f12270c.values()) {
                if (m38495c(str2).getHost().equals(host)) {
                    return region;
                }
            }
        }
        throw new IllegalArgumentException("No region found with any service for endpoint ".concat(String.valueOf(str)));
    }

    /* renamed from: b */
    private static void m38497b() {
        synchronized (RegionUtils.class) {
            try {
                if (System.getProperty(SDKGlobalConfiguration.REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY) != null) {
                    try {
                        String property = System.getProperty(SDKGlobalConfiguration.REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY);
                        Log log = f12274b;
                        if (log.mo38597a()) {
                            log.mo38593b("Using local override of the regions file (" + property + ") to initiate regions data...");
                        }
                        FileInputStream fileInputStream = new FileInputStream(new File(property));
                        try {
                            new RegionMetadataParser();
                            f12273a = RegionMetadataParser.m38503a(fileInputStream);
                        } catch (Exception e) {
                            f12274b.mo38592b("Failed to parse regional endpoints", e);
                        }
                    } catch (FileNotFoundException e2) {
                        throw new RuntimeException("Couldn't find regions override file specified", e2);
                    }
                }
                if (f12273a == null) {
                    Log log2 = f12274b;
                    if (log2.mo38597a()) {
                        log2.mo38593b("Initializing the regions with default regions");
                    }
                    f12273a = RegionDefaults.m38505a();
                }
                if (f12273a == null) {
                    throw new RuntimeException("Failed to initialize the regions.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    private static URI m38495c(String str) {
        try {
            URI uri = new URI(str);
            URI uri2 = uri;
            if (uri.getHost() == null) {
                uri2 = new URI("http://".concat(String.valueOf(str)));
            }
            return uri2;
        } catch (URISyntaxException e) {
            throw new RuntimeException("Unable to parse service endpoint: " + e.getMessage());
        }
    }
}

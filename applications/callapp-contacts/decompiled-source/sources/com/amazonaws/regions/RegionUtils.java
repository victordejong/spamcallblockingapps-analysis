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

    /* renamed from: a  reason: collision with root package name */
    private static List<Region> f6761a;

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6762b = LogFactory.a("com.amazonaws.request");

    public static Region a(String str) {
        for (Region region : a()) {
            if (region.f6757a.equals(str)) {
                return region;
            }
        }
        return null;
    }

    private static List<Region> a() {
        List<Region> list;
        synchronized (RegionUtils.class) {
            try {
                if (f6761a == null) {
                    b();
                }
                list = f6761a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public static Region b(String str) {
        String host = c(str).getHost();
        for (Region region : a()) {
            for (String str2 : region.f6759c.values()) {
                if (c(str2).getHost().equals(host)) {
                    return region;
                }
            }
        }
        throw new IllegalArgumentException("No region found with any service for endpoint ".concat(String.valueOf(str)));
    }

    private static void b() {
        synchronized (RegionUtils.class) {
            try {
                if (System.getProperty(SDKGlobalConfiguration.REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY) != null) {
                    try {
                        String property = System.getProperty(SDKGlobalConfiguration.REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY);
                        Log log = f6762b;
                        if (log.a()) {
                            log.b("Using local override of the regions file (" + property + ") to initiate regions data...");
                        }
                        FileInputStream fileInputStream = new FileInputStream(new File(property));
                        try {
                            new RegionMetadataParser();
                            f6761a = RegionMetadataParser.a(fileInputStream);
                        } catch (Exception e) {
                            f6762b.b("Failed to parse regional endpoints", e);
                        }
                    } catch (FileNotFoundException e2) {
                        throw new RuntimeException("Couldn't find regions override file specified", e2);
                    }
                }
                if (f6761a == null) {
                    Log log2 = f6762b;
                    if (log2.a()) {
                        log2.b("Initializing the regions with default regions");
                    }
                    f6761a = RegionDefaults.a();
                }
                if (f6761a == null) {
                    throw new RuntimeException("Failed to initialize the regions.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static URI c(String str) {
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

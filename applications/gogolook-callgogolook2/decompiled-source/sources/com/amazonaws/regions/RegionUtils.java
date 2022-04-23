package com.amazonaws.regions;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/regions/RegionUtils.class */
public class RegionUtils {
    public static final Log log = LogFactory.getLog("com.amazonaws.request");
    public static List<Region> regions;

    public static Region getRegion(String str) {
        for (Region region : getRegions()) {
            if (region.getName().equals(str)) {
                return region;
            }
        }
        return null;
    }

    public static List<Region> getRegions() {
        List<Region> list;
        synchronized (RegionUtils.class) {
            try {
                if (regions == null) {
                    init();
                }
                list = regions;
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    public static void init() {
        synchronized (RegionUtils.class) {
            try {
                if (System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride") != null) {
                    try {
                        loadRegionsFromOverrideFile();
                    } catch (FileNotFoundException e) {
                        throw new RuntimeException("Couldn't find regions override file specified", e);
                    }
                }
                if (regions == null) {
                    initSDKRegions();
                }
                if (regions == null) {
                    throw new RuntimeException("Failed to initialize the regions.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void initRegions(InputStream inputStream) {
        try {
            regions = new RegionMetadataParser().parseRegionMetadata(inputStream);
        } catch (Exception e) {
            log.warn("Failed to parse regional endpoints", e);
        }
    }

    public static void initSDKRegions() {
        if (log.isDebugEnabled()) {
            log.debug("Initializing the regions with default regions");
        }
        regions = RegionDefaults.getRegions();
    }

    public static void loadRegionsFromOverrideFile() throws FileNotFoundException {
        String property = System.getProperty("com.amazonaws.regions.RegionUtils.fileOverride");
        if (log.isDebugEnabled()) {
            Log log2 = log;
            log2.debug("Using local override of the regions file (" + property + ") to initiate regions data...");
        }
        initRegions(new FileInputStream(new File(property)));
    }
}

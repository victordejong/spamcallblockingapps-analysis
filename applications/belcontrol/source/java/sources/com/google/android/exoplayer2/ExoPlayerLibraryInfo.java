package com.google.android.exoplayer2;

import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerLibraryInfo.class */
public final class ExoPlayerLibraryInfo {
    public static final boolean ASSERTIONS_ENABLED = true;
    public static final String TAG = "ExoPlayer";
    public static final boolean TRACE_ENABLED = true;
    public static final String VERSION = "2.8.3";
    public static final int VERSION_INT = 2008003;
    public static final String VERSION_SLASHY = "ExoPlayerLib/2.8.3";
    private static final HashSet<String> registeredModules = new HashSet<>();
    private static String registeredModulesString = "goog.exo.core";

    private ExoPlayerLibraryInfo() {
    }

    public static void registerModule(String str) {
        synchronized (ExoPlayerLibraryInfo.class) {
            try {
                if (registeredModules.add(str)) {
                    registeredModulesString += ", " + str;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String registeredModules() {
        String str;
        synchronized (ExoPlayerLibraryInfo.class) {
            try {
                str = registeredModulesString;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}

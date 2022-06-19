package com.google.firebase.platforminfo;

import kotlin.KotlinVersion;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/platforminfo/KotlinDetector.class */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }
}

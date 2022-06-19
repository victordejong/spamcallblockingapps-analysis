package com.google.firebase.platforminfo;

import kotlin.C1653d;
/* loaded from: classes-dex2jar.jar:com/google/firebase/platforminfo/KotlinDetector.class */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    public static String detectVersion() {
        try {
            return C1653d.f4370a.toString();
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }
}

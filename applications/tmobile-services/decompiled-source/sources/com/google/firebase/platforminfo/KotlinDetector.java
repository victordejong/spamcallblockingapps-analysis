package com.google.firebase.platforminfo;

import androidx.annotation.Nullable;
import kotlin.KotlinVersion;
/* loaded from: classes-dex2jar.jar:com/google/firebase/platforminfo/KotlinDetector.class */
public final class KotlinDetector {
    private KotlinDetector() {
    }

    @Nullable
    public static String detectVersion() {
        try {
            return KotlinVersion.f20410j.toString();
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }
}

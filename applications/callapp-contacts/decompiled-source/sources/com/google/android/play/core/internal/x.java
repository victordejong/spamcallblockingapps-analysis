package com.google.android.play.core.internal;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/x.class */
public final class x {
    public static String a(File file) {
        if (file.getName().endsWith(".apk")) {
            String name = file.getName();
            String str = "";
            String replaceFirst = name.replaceFirst("(_\\d+)?\\.apk", "");
            if (replaceFirst.equals("base-master")) {
                return "";
            }
            String str2 = "base-";
            if (replaceFirst.startsWith("base-")) {
                str = "config.";
            } else {
                replaceFirst = replaceFirst.replace(VerificationLanguage.REGION_PREFIX, ".config.");
                str2 = ".config.master";
            }
            return replaceFirst.replace(str2, str);
        }
        throw new IllegalArgumentException("Non-apk found in splits directory.");
    }

    public static <T> void a(T t, Object obj) {
        if (t == null) {
            throw new NullPointerException((String) obj);
        }
    }

    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}

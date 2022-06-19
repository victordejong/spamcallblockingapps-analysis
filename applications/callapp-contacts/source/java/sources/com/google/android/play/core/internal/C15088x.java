package com.google.android.play.core.internal;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
/* renamed from: com.google.android.play.core.internal.x */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/x.class */
public final class C15088x {
    /* renamed from: a */
    public static String m9481a(File file) {
        if (file.getName().endsWith(".apk")) {
            String name = file.getName();
            CharSequence charSequence = "";
            String replaceFirst = name.replaceFirst("(_\\d+)?\\.apk", "");
            if (replaceFirst.equals("base-master")) {
                return "";
            }
            CharSequence charSequence2 = "base-";
            if (replaceFirst.startsWith("base-")) {
                charSequence = "config.";
            } else {
                replaceFirst = replaceFirst.replace(VerificationLanguage.REGION_PREFIX, ".config.");
                charSequence2 = ".config.master";
            }
            return replaceFirst.replace(charSequence2, charSequence);
        }
        throw new IllegalArgumentException("Non-apk found in splits directory.");
    }

    /* renamed from: a */
    public static <T> void m9480a(T t, Object obj) {
        if (t != null) {
            return;
        }
        throw new NullPointerException((String) obj);
    }

    /* renamed from: a */
    public static void m9479a(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}

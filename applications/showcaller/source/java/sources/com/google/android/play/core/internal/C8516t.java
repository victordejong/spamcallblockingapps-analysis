package com.google.android.play.core.internal;

import android.os.Build;
import java.io.File;
/* renamed from: com.google.android.play.core.internal.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/t.class */
public final class C8516t {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static AbstractC8514s m3470a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            switch (i) {
                case 21:
                    return new C8524x((byte[]) null);
                case 22:
                    return new C8524x();
                case 23:
                    return new C8524x((char[]) null);
                case 24:
                    return new C8524x((short[]) null);
                case 25:
                    return new C8524x((int[]) null);
                case 26:
                    return new C8524x((boolean[]) null);
                case 27:
                    if (Build.VERSION.PREVIEW_SDK_INT == 0) {
                        return new C8524x((float[]) null);
                    }
                    break;
            }
            return new C8524x((byte[][]) null);
        }
        throw new AssertionError("Unsupported Android Version");
    }

    /* renamed from: b */
    public static String m3469b(File file) {
        if (file.getName().endsWith(".apk")) {
            CharSequence charSequence = "";
            String replaceFirst = file.getName().replaceFirst("(_\\d+)?\\.apk", "");
            if (replaceFirst.equals("base-master")) {
                return "";
            }
            CharSequence charSequence2 = "base-";
            if (replaceFirst.startsWith("base-")) {
                charSequence = "config.";
            } else {
                replaceFirst = replaceFirst.replace("-", ".config.");
                charSequence2 = ".config.master";
            }
            return replaceFirst.replace(charSequence2, charSequence);
        }
        throw new IllegalArgumentException("Non-apk found in splits directory.");
    }

    /* renamed from: c */
    public static void m3468c(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: d */
    public static <T> void m3467d(T t, Object obj) {
        if (t != null) {
            return;
        }
        throw new NullPointerException((String) obj);
    }
}

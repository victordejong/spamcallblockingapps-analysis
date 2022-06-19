package com.tenor.android.core.util;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractIOUtils.class */
public class AbstractIOUtils {
    public static void close(Closeable... closeableArr) {
        if (closeableArr == null || closeableArr.length <= 0) {
            return;
        }
        try {
            for (Closeable closeable : closeableArr) {
                if (closeable != null) {
                    closeable.close();
                    continue;
                }
            }
        } catch (IOException e) {
        }
    }
}

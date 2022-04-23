package com.facebook.stetho.inspector.helper;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.annotation.Nullable;
import android.view.ViewDebug;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/helper/IntegerFormatter.class */
public class IntegerFormatter {
    private static IntegerFormatter cachedFormatter;

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/helper/IntegerFormatter$IntegerFormatterWithHex.class */
    private static class IntegerFormatterWithHex extends IntegerFormatter {
        private IntegerFormatterWithHex() {
            super();
        }

        @Override // com.facebook.stetho.inspector.helper.IntegerFormatter
        @TargetApi(21)
        public String format(Integer num, @Nullable ViewDebug.ExportedProperty exportedProperty) {
            if (exportedProperty == null || !exportedProperty.formatToHexString()) {
                return IntegerFormatter.super.format(num, exportedProperty);
            }
            return "0x" + Integer.toHexString(num.intValue());
        }
    }

    private IntegerFormatter() {
    }

    public static IntegerFormatter getInstance() {
        if (cachedFormatter == null) {
            synchronized (IntegerFormatter.class) {
                try {
                    if (cachedFormatter == null) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            cachedFormatter = new IntegerFormatterWithHex();
                        } else {
                            cachedFormatter = new IntegerFormatter();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return cachedFormatter;
    }

    public String format(Integer num, @Nullable ViewDebug.ExportedProperty exportedProperty) {
        return String.valueOf(num);
    }
}

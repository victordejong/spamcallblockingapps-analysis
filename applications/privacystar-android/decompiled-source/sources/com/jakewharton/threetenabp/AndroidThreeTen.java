package com.jakewharton.threetenabp;

import android.app.Application;
import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import org.threeten.p040bp.zone.TzdbZoneRulesProvider;
import org.threeten.p040bp.zone.ZoneRulesProvider;
/* loaded from: classes-dex2jar.jar:com/jakewharton/threetenabp/AndroidThreeTen.class */
public final class AndroidThreeTen {
    private static final AtomicBoolean initialized = new AtomicBoolean();

    private AndroidThreeTen() {
        throw new AssertionError("No instances.");
    }

    public static void init(Application application) {
        init((Context) application);
    }

    public static void init(Context context) {
        Throwable th;
        IOException e;
        if (!initialized.getAndSet(true)) {
            r4 = null;
            InputStream inputStream = null;
            try {
                try {
                    inputStream = context.getAssets().open("org/threeten/bp/TZDB.dat");
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                TzdbZoneRulesProvider tzdbZoneRulesProvider = new TzdbZoneRulesProvider(inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                    }
                }
                ZoneRulesProvider.registerProvider(tzdbZoneRulesProvider);
            } catch (IOException e4) {
                e = e4;
                throw new IllegalStateException("TZDB.dat missing from assets.", e);
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        }
    }
}

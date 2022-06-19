package com.google.android.gms.internal.firebase_messaging;

import com.amazon.device.ads.MraidCloseCommand;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzm.class */
public final class zzm {
    public static final Logger zza = Logger.getLogger(zzm.class.getName());

    private zzm() {
    }

    public static void zza(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException e) {
            try {
                zza.logp(Level.WARNING, "com.google.common.io.Closeables", MraidCloseCommand.NAME, "IOException thrown while closing Closeable.", (Throwable) e);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }
    }
}

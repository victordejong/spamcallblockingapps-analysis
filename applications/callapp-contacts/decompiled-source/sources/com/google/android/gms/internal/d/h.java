package com.google.android.gms.internal.d;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f28870a = Logger.getLogger(h.class.getName());

    private h() {
    }

    public static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                try {
                    f28870a.logp(Level.WARNING, "com.google.common.io.Closeables", EventConstants.CLOSE, "IOException thrown while closing Closeable.", (Throwable) e);
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
    }
}

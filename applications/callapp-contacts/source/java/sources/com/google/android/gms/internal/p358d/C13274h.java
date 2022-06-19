package com.google.android.gms.internal.p358d;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.google.android.gms.internal.d.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/h.class */
public final class C13274h {

    /* renamed from: a */
    static final Logger f50530a = Logger.getLogger(C13274h.class.getName());

    private C13274h() {
    }

    /* renamed from: a */
    public static void m13506a(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException e) {
            try {
                f50530a.logp(Level.WARNING, "com.google.common.io.Closeables", EventConstants.CLOSE, "IOException thrown while closing Closeable.", (Throwable) e);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }
    }
}

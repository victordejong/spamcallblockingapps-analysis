package com.appsflyer.internal;

import android.support.annotation.NonNull;
import java.util.concurrent.ExecutorService;
/* renamed from: com.appsflyer.internal.y */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y.class */
public final class C0836y {
    public final C0773bj AFInAppEventType;
    public final ExecutorService AFKeystoreWrapper;

    /* renamed from: com.appsflyer.internal.y$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y$a.class */
    public interface AbstractC0838a {
        void AFInAppEventType(@NonNull String str, @NonNull String str2);

        void AFKeystoreWrapper(String str, Exception exc);
    }

    public C0836y() {
    }

    public C0836y(C0773bj c0773bj, ExecutorService executorService) {
        this.AFInAppEventType = c0773bj;
        this.AFKeystoreWrapper = executorService;
    }
}

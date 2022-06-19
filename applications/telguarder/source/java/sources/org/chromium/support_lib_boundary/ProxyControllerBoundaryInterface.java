package org.chromium.support_lib_boundary;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/ProxyControllerBoundaryInterface.class */
public interface ProxyControllerBoundaryInterface {
    void clearProxyOverride(Runnable runnable, Executor executor);

    void setProxyOverride(String[][] strArr, String[] strArr2, Runnable runnable, Executor executor);
}

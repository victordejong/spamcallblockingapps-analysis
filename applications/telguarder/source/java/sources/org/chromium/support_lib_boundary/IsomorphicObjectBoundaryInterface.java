package org.chromium.support_lib_boundary;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface.class */
public interface IsomorphicObjectBoundaryInterface {
    Object getOrCreatePeer(Callable<Object> callable);
}

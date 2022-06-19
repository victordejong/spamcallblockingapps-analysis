package org.chromium.support_lib_boundary;

import java.lang.reflect.InvocationHandler;
/* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/WebMessageBoundaryInterface.class */
public interface WebMessageBoundaryInterface extends FeatureFlagHolderBoundaryInterface {
    String getData();

    InvocationHandler[] getPorts();
}

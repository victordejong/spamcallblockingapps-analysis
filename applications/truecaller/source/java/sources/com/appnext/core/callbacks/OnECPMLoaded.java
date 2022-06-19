package com.appnext.core.callbacks;

import com.appnext.core.ECPM;
/* loaded from: classes-dex2jar.jar:com/appnext/core/callbacks/OnECPMLoaded.class */
public interface OnECPMLoaded {
    void ecpm(ECPM ecpm);

    void error(String str);
}

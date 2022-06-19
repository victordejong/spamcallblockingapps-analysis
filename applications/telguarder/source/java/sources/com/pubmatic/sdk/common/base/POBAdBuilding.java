package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.models.POBAdResponse;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBAdBuilding.class */
public interface POBAdBuilding<T extends POBAdDescriptor> {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBAdBuilding$PMAdBuilderListener.class */
    public interface PMAdBuilderListener<T extends POBAdDescriptor> {
        void adBuilderOnError(POBError pOBError);

        void adBuilderOnSuccess(POBAdResponse<T> pOBAdResponse);
    }

    void build(POBAdResponse<T> pOBAdResponse);

    void setListener(PMAdBuilderListener<T> pMAdBuilderListener);
}

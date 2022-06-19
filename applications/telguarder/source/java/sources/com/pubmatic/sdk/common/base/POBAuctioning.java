package com.pubmatic.sdk.common.base;

import com.pubmatic.sdk.common.base.POBAdDescriptor;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/base/POBAuctioning.class */
public interface POBAuctioning<T extends POBAdDescriptor> {
    T perform(List<T> list);
}

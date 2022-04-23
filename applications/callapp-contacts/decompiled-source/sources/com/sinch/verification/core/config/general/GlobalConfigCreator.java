package com.sinch.verification.core.config.general;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.List;
import kotlin.Metadata;
import okhttp3.Interceptor;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\u00020��2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&¨\u0006\t"}, d2 = {"Lcom/sinch/verification/core/config/general/GlobalConfigCreator;", "", "apiHost", "", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/sinch/verification/core/config/general/GlobalConfig;", "interceptors", "", "Lokhttp3/Interceptor;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/general/GlobalConfigCreator.class */
public interface GlobalConfigCreator {
    GlobalConfigCreator apiHost(String str);

    GlobalConfig build();

    GlobalConfigCreator interceptors(List<? extends Interceptor> list);
}

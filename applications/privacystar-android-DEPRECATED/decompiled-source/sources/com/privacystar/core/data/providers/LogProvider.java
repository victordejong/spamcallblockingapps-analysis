package com.privacystar.core.data.providers;

import com.privacystar.core.data.call.call_details.CallDetails;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/LogProvider.class */
public interface LogProvider {
    boolean finishedLoading();

    CallDetails getContentAt(int i);

    List<CallDetails> getContentRange(int i, int i2);

    int getContentSize();

    int getContentType();

    int getContentUpperBound();

    boolean setup();

    void setupAsync(LogProviderCB logProviderCB);

    void update();

    void updateAsync(LogProviderCB logProviderCB);
}

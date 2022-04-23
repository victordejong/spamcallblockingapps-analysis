package com.integralads.avid.library.mopub.processing;

import android.view.View;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/processing/IAvidNodeProcessor.class */
public interface IAvidNodeProcessor {

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker.class */
    public interface IAvidViewWalker {
        void walkView(View view, IAvidNodeProcessor iAvidNodeProcessor, JSONObject jSONObject);
    }

    JSONObject getState(View view);

    void iterateChildren(View view, JSONObject jSONObject, IAvidViewWalker iAvidViewWalker, boolean z);
}

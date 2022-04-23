package com.integralads.avid.library.mopub.processing;

import android.view.View;
import com.integralads.avid.library.mopub.activity.AvidActivityStack;
import com.integralads.avid.library.mopub.processing.IAvidNodeProcessor;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/processing/AvidSceenProcessor.class */
public class AvidSceenProcessor implements IAvidNodeProcessor {

    /* renamed from: a */
    public final IAvidNodeProcessor f33045a;

    public AvidSceenProcessor(IAvidNodeProcessor iAvidNodeProcessor) {
        this.f33045a = iAvidNodeProcessor;
    }

    @Override // com.integralads.avid.library.mopub.processing.IAvidNodeProcessor
    public JSONObject getState(View view) {
        return AvidJSONUtil.getViewState(0, 0, 0, 0);
    }

    @Override // com.integralads.avid.library.mopub.processing.IAvidNodeProcessor
    public void iterateChildren(View view, JSONObject jSONObject, IAvidNodeProcessor.IAvidViewWalker iAvidViewWalker, boolean z) {
        for (View view2 : AvidActivityStack.getInstance().getRootViews()) {
            iAvidViewWalker.walkView(view2, this.f33045a, jSONObject);
        }
    }
}

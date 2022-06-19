package com.verizon.ads;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/PEXHandler.class */
public interface PEXHandler {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/PEXHandler$PEXHandlerListener.class */
    public interface PEXHandlerListener {
        void onEvent(String str, Map<String, Object> map);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/PEXHandler$PEXPrepareListener.class */
    public interface PEXPrepareListener {
        void onComplete(ErrorInfo errorInfo);
    }

    void execute(Context context, PEXHandlerListener pEXHandlerListener, JSONObject jSONObject);

    void prepare(AdSession adSession, PEXPrepareListener pEXPrepareListener, boolean z, JSONObject jSONObject);

    void release();
}

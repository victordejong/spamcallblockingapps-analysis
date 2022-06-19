package com.facebook.internal.logging;

import java.io.Serializable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/ExternalLog.class */
public interface ExternalLog extends Serializable {
    JSONObject convertToJSONObject();

    String getEventName();

    LogCategory getLogCategory();
}

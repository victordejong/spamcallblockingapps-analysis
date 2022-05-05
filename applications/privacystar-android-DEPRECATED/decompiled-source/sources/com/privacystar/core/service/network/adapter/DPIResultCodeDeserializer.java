package com.privacystar.core.service.network.adapter;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import java.lang.reflect.Type;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/adapter/DPIResultCodeDeserializer.class */
public class DPIResultCodeDeserializer implements JsonDeserializer<CallWatchPaymentResponse.DPIResultCode> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.JsonDeserializer
    public CallWatchPaymentResponse.DPIResultCode deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        return CallWatchPaymentResponse.DPIResultCode.fromValue(jsonElement.getAsInt());
    }
}

package com.apptentive.android.sdk.module.messagecenter.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageFactory.class */
public class MessageFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.messagecenter.model.MessageFactory$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/model/MessageFactory$1.class */
    public static /* synthetic */ class C08491 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$model$ApptentiveMessage$Type */
        static final /* synthetic */ int[] f77x52bb0752 = new int[ApptentiveMessage.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f77x52bb0752[ApptentiveMessage.Type.CompoundMessage.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f77x52bb0752[ApptentiveMessage.Type.unknown.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static ApptentiveMessage fromJson(String str) {
        try {
            ApptentiveMessage.Type type = ApptentiveMessage.Type.CompoundMessage;
            JSONObject jSONObject = new JSONObject(str);
            ApptentiveMessage.Type type2 = type;
            if (!jSONObject.isNull("type")) {
                String string = jSONObject.getString("type");
                type2 = type;
                if (!StringUtils.isNullOrEmpty(string)) {
                    type2 = ApptentiveMessage.Type.valueOf(string);
                }
            }
            switch (C08491.f77x52bb0752[type2.ordinal()]) {
                case 1:
                    return new CompoundMessage(str);
                case 2:
                    return null;
                default:
                    return null;
            }
        } catch (IllegalArgumentException e) {
            return null;
        } catch (JSONException e2) {
            ApptentiveLog.m402v(ApptentiveLogTag.MESSAGES, e2, "Error parsing json as Message: %s", str);
            return null;
        }
    }
}

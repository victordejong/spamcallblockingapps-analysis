package com.apptentive.android.sdk.storage.legacy;

import com.apptentive.android.sdk.model.DevicePayload;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.model.JsonPayload;
import com.apptentive.android.sdk.model.PayloadType;
import com.apptentive.android.sdk.model.PersonPayload;
import com.apptentive.android.sdk.model.SurveyResponsePayload;
import com.apptentive.android.sdk.module.messagecenter.model.MessageFactory;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/legacy/LegacyPayloadFactory.class */
public final class LegacyPayloadFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.storage.legacy.LegacyPayloadFactory$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/legacy/LegacyPayloadFactory$1.class */
    public static /* synthetic */ class C08921 {
        static final /* synthetic */ int[] $SwitchMap$com$apptentive$android$sdk$model$PayloadType = new int[PayloadType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.message.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.event.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.device.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.sdk.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.app_release.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.person.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$apptentive$android$sdk$model$PayloadType[PayloadType.survey.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public static JsonPayload createPayload(PayloadType payloadType, String str) throws JSONException {
        switch (C08921.$SwitchMap$com$apptentive$android$sdk$model$PayloadType[payloadType.ordinal()]) {
            case 1:
                return MessageFactory.fromJson(str);
            case 2:
                return new EventPayload(str);
            case 3:
                return new DevicePayload(str);
            case 4:
                return null;
            case 5:
                return null;
            case 6:
                return new PersonPayload(str);
            case 7:
                return new SurveyResponsePayload(str);
            default:
                throw new IllegalArgumentException("Unexpected payload type: " + payloadType);
        }
    }
}

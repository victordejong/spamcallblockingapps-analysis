package com.apptentive.android.sdk.module.engagement.interaction.model.common;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action.class */
public abstract class Action<T extends Action> extends JSONObject {
    private static final String KEY_ACTION = "action";
    public static final String KEY_ID = "id";
    public static final String KEY_LABEL = "label";

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.model.common.Action$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action$1.class */
    static /* synthetic */ class C08131 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f72xc0751b89 = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f72xc0751b89[Type.dismiss.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f72xc0751b89[Type.interaction.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f72xc0751b89[Type.unknown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Factory.class */
    public static class Factory {
        public static Action parseAction(String str) {
            try {
                Type type = Type.unknown;
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("action")) {
                    type = Type.parse(jSONObject.getString("action"));
                }
                switch (C08131.f72xc0751b89[type.ordinal()]) {
                    case 1:
                        return new DismissAction(str);
                    case 2:
                        return new LaunchInteractionAction(str);
                    default:
                        return null;
                }
            } catch (JSONException e) {
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type.class */
    public enum Type {
        dismiss,
        interaction,
        unknown;

        public static Type parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.INTERACTIONS;
                ApptentiveLog.m403v(apptentiveLogTag, "Error parsing unknown Action.Type: " + str, new Object[0]);
                return unknown;
            }
        }
    }

    public Action(String str) throws JSONException {
        super(str);
    }

    public String getId() {
        return optString("id", null);
    }

    public String getLabel() {
        return optString("label", null);
    }

    public Type getType() {
        return Type.parse(optString("action", Type.unknown.name()));
    }
}

package com.apptentive.android.sdk.module.engagement.interaction.model.common;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import com.google.firebase.messaging.Constants;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action.class */
public abstract class Action<T extends Action> extends JSONObject {

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.model.common.Action$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/common/Action$1.class */
    static /* synthetic */ class C08161 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f6456xc0751b89;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            f6456xc0751b89 = iArr;
            try {
                iArr[Type.dismiss.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6456xc0751b89[Type.interaction.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6456xc0751b89[Type.unknown.ordinal()] = 3;
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
                int i = C08161.f6456xc0751b89[type.ordinal()];
                if (i == 1) {
                    return new DismissAction(str);
                }
                if (i != 2) {
                    return null;
                }
                return new LaunchInteractionAction(str);
            } catch (JSONException e) {
                ErrorMetrics.logException(e);
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
                ApptentiveLog.m15638v(apptentiveLogTag, "Error parsing unknown Action.Type: " + str, new Object[0]);
                ErrorMetrics.logException(e);
                return unknown;
            }
        }
    }

    public Action(String str) throws JSONException {
        super(str);
    }

    public String getId() {
        return optString(Name.MARK, null);
    }

    public String getLabel() {
        return optString(Constants.ScionAnalytics.PARAM_LABEL, null);
    }

    public Type getType() {
        return Type.parse(optString("action", Type.unknown.name()));
    }
}

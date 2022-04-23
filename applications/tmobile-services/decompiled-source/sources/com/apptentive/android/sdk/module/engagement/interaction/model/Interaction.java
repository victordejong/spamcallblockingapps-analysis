package com.apptentive.android.sdk.module.engagement.interaction.model;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interaction.class */
public abstract class Interaction extends JSONObject {

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.model.Interaction$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interaction$1.class */
    static /* synthetic */ class C08141 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type */
        static final /* synthetic */ int[] f6454xb4613d26;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            f6454xb4613d26 = iArr;
            try {
                iArr[Type.UpgradeMessage.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6454xb4613d26[Type.EnjoymentDialog.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6454xb4613d26[Type.RatingDialog.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6454xb4613d26[Type.MessageCenter.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6454xb4613d26[Type.AppStoreRating.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6454xb4613d26[Type.Survey.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6454xb4613d26[Type.TextModal.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6454xb4613d26[Type.NavigateToLink.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f6454xb4613d26[Type.unknown.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interaction$DisplayType.class */
    public enum DisplayType {
        notification,
        unknown;

        public static DisplayType parse(String str) {
            try {
                return valueOf(str);
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Error parsing interaction display_type: " + str, new Object[0]);
                ErrorMetrics.logException(e);
                return unknown;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory.class */
    public static class Factory {
        public static Interaction parseInteraction(String str) {
            if (str == null) {
                return null;
            }
            try {
                Type type = Type.unknown;
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("type")) {
                    type = Type.parse(jSONObject.getString("type"));
                }
                switch (C08141.f6454xb4613d26[type.ordinal()]) {
                    case 1:
                        return new UpgradeMessageInteraction(str);
                    case 2:
                        return new EnjoymentDialogInteraction(str);
                    case 3:
                        return new RatingDialogInteraction(str);
                    case 4:
                        return new MessageCenterInteraction(str);
                    case 5:
                        return new AppStoreRatingInteraction(str);
                    case 6:
                        return new SurveyInteraction(str);
                    case 7:
                        return new TextModalInteraction(str);
                    case 8:
                        return new NavigateToLinkInteraction(str);
                    default:
                        return null;
                }
            } catch (JSONException e) {
                ApptentiveLog.m15634w(ApptentiveLogTag.INTERACTIONS, e, "Error parsing Interaction", new Object[0]);
                ErrorMetrics.logException(e);
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Type.class */
    public enum Type {
        UpgradeMessage,
        EnjoymentDialog,
        RatingDialog,
        MessageCenter,
        AppStoreRating,
        Survey,
        TextModal,
        NavigateToLink,
        unknown;

        public static Type parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.INTERACTIONS;
                ApptentiveLog.m15638v(apptentiveLogTag, "Error parsing unknown Interaction.Type: " + str, new Object[0]);
                ErrorMetrics.logException(e);
                return unknown;
            }
        }
    }

    public Interaction(String str) throws JSONException {
        super(str);
    }

    public InteractionConfiguration getConfiguration() {
        try {
            if (!isNull("configuration")) {
                return new InteractionConfiguration(getJSONObject("configuration").toString());
            }
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
        }
        return new InteractionConfiguration();
    }

    protected DisplayType getDefaultDisplayType() {
        return DisplayType.unknown;
    }

    public DisplayType getDisplayType() {
        try {
            return isNull("display_type") ? getDefaultDisplayType() : DisplayType.parse(getString("display_type"));
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return DisplayType.unknown;
        }
    }

    public String getId() {
        try {
            if (!isNull(Name.MARK)) {
                return getString(Name.MARK);
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getTitle() {
        return null;
    }

    public Type getType() {
        try {
            if (!isNull("type")) {
                return Type.parse(getString("type"));
            }
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
        }
        return Type.unknown;
    }
}

package com.privacystar.core.util;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p001v4.app.NotificationCompat;
import android.webkit.URLUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.service.network.model.response.MessageTrackingResponse;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001:\u00019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0004J\u0016\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.JR\u0010/\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u00020\u00042\b\b\u0002\u00105\u001a\u00020\u00042\b\b\u0002\u00106\u001a\u00020\u0004J\u001e\u00107\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004J\u001e\u00108\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006:"}, m254d2 = {"Lcom/privacystar/core/util/CampaignUtil;", "", "()V", "CAMPAIGN_ACTION_APPROVED", "", "CAMPAIGN_ACTION_BLOCK", "CAMPAIGN_ACTION_DASHBOARD", "CAMPAIGN_ACTION_HOME", "CAMPAIGN_ACTION_INBOX", "CAMPAIGN_ACTION_INBOX_RATE", "CAMPAIGN_ACTION_PROTECTION", "CAMPAIGN_ACTION_STATE", "CAMPAIGN_ACTION_SUBCRIBE", "CAMPAIGN_ACTION_WALKTHROUGH", "CAMPAIGN_LOGO_MAIN", "CAMPAIGN_LOGO_SECONDARY", "FIELD_BUTTON1_ACTION", "FIELD_BUTTON1_TEXT", "FIELD_BUTTON2_ACTION", "FIELD_BUTTON2_TEXT", "FIELD_DURATION", "FIELD_LOCAL_CAMPAIGN_BATCH_ID", "FIELD_LOGO", "FIELD_MESSAGE", "FIELD_NOTIFICATION_MESSAGE", "FIELD_NOTIFICATION_TITLE", "FIELD_REPEATING_INTERVAL", "FIELD_SECONDARY_IMAGE", "FIELD_TAG", "FIELD_TITLE", "FIELD_TTL", "IMAGE_FOLDER", "downloadAndSave", "", "context", "Landroid/content/Context;", "imageURL", "batchId", "getImageFileName", "getImageFolderName", "getImageUrl", "messageInHex", "field", "messageToTemplate", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", NotificationCompat.CATEGORY_MESSAGE, "Lcom/privacystar/core/data/model/Message;", "testMessage", "logo", "title", "message", "button1Text", "buttonAction1", "buttonText2", "buttonAction2", "tryDownloadLogo", "tryDownloadSecondaryImage", "CampaignTemplate", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CampaignUtil.class */
public final class CampaignUtil {
    @NotNull
    public static final String CAMPAIGN_ACTION_APPROVED = "8";
    @NotNull
    public static final String CAMPAIGN_ACTION_BLOCK = "7";
    @NotNull
    public static final String CAMPAIGN_ACTION_DASHBOARD = "3";
    @NotNull
    public static final String CAMPAIGN_ACTION_HOME = "1";
    @NotNull
    public static final String CAMPAIGN_ACTION_INBOX = "9";
    @NotNull
    public static final String CAMPAIGN_ACTION_INBOX_RATE = "10";
    @NotNull
    public static final String CAMPAIGN_ACTION_PROTECTION = "5";
    @NotNull
    public static final String CAMPAIGN_ACTION_STATE = "6";
    @NotNull
    public static final String CAMPAIGN_ACTION_SUBCRIBE = "2";
    @NotNull
    public static final String CAMPAIGN_ACTION_WALKTHROUGH = "4";
    @NotNull
    public static final String CAMPAIGN_LOGO_MAIN = "1";
    @NotNull
    public static final String CAMPAIGN_LOGO_SECONDARY = "2";
    @NotNull
    public static final String FIELD_BUTTON1_ACTION = "Button_action";
    @NotNull
    public static final String FIELD_BUTTON1_TEXT = "Button_text";
    @NotNull
    public static final String FIELD_BUTTON2_ACTION = "Button_action2";
    @NotNull
    public static final String FIELD_BUTTON2_TEXT = "Button_text2";
    @NotNull
    public static final String FIELD_DURATION = "Duration";
    @NotNull
    public static final String FIELD_LOCAL_CAMPAIGN_BATCH_ID = "Local_Notification_Batch_Id";
    @NotNull
    public static final String FIELD_LOGO = "Logo";
    @NotNull
    public static final String FIELD_MESSAGE = "Message";
    @NotNull
    public static final String FIELD_NOTIFICATION_MESSAGE = "Notification_message";
    @NotNull
    public static final String FIELD_NOTIFICATION_TITLE = "Notification_title";
    @NotNull
    public static final String FIELD_REPEATING_INTERVAL = "Repeating_interval";
    @NotNull
    public static final String FIELD_SECONDARY_IMAGE = "Secondary_image";
    @NotNull
    public static final String FIELD_TAG = "Workrequest_tag";
    @NotNull
    public static final String FIELD_TITLE = "Title";
    @NotNull
    public static final String FIELD_TTL = "Time_to_live";
    private static final String IMAGE_FOLDER = "/messageImages/";
    public static final CampaignUtil INSTANCE = new CampaignUtil();

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b(\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\b\u0018�� :2\u00020\u0001:\u0001:B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B]\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006¢\u0006\u0002\u0010\u000fJ\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\t\u0010'\u001a\u00020\u0006HÆ\u0003J\t\u0010(\u001a\u00020\u0006HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0006HÆ\u0003J\t\u0010,\u001a\u00020\u0006HÆ\u0003Jc\u0010-\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u0006HÆ\u0001J\b\u0010.\u001a\u00020/H\u0016J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u000103HÖ\u0003J\t\u00104\u001a\u00020/HÖ\u0001J\t\u00105\u001a\u00020\u0006HÖ\u0001J\u0018\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020/H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010\u0011\"\u0004\b!\u0010\u0013R\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013¨\u0006;"}, m254d2 = {"Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "Landroid/os/Parcelable;", FirebaseAnalytics.Param.SOURCE, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "batchId", "", "logo", "title", "message", "secondaryImage", "buttonText1", "buttonAction1", "buttonText2", "buttonAction2", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBatchId", "()Ljava/lang/String;", "setBatchId", "(Ljava/lang/String;)V", "getButtonAction1", "setButtonAction1", "getButtonAction2", "setButtonAction2", "getButtonText1", "setButtonText1", "getButtonText2", "setButtonText2", "getLogo", "setLogo", "getMessage", "setMessage", "getSecondaryImage", "setSecondaryImage", "getTitle", "setTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "flags", "CREATOR", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CampaignUtil$CampaignTemplate.class */
    public static final class CampaignTemplate implements Parcelable {
        public static final CREATOR CREATOR = new CREATOR(null);
        @NotNull
        private String batchId;
        @NotNull
        private String buttonAction1;
        @NotNull
        private String buttonAction2;
        @NotNull
        private String buttonText1;
        @NotNull
        private String buttonText2;
        @NotNull
        private String logo;
        @NotNull
        private String message;
        @NotNull
        private String secondaryImage;
        @NotNull
        private String title;

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "()V", "createFromParcel", FirebaseAnalytics.Param.SOURCE, "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/CampaignUtil$CampaignTemplate$CREATOR.class */
        public static final class CREATOR implements Parcelable.Creator<CampaignTemplate> {
            private CREATOR() {
            }

            public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public CampaignTemplate createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkParameterIsNotNull(source, "source");
                return new CampaignTemplate(source);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NotNull
            public CampaignTemplate[] newArray(int i) {
                return new CampaignTemplate[i];
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CampaignTemplate(@org.jetbrains.annotations.NotNull android.os.Parcel r12) {
            /*
                r11 = this;
                r0 = r12
                java.lang.String r1 = "source"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r0, r1)
                r0 = r12
                java.lang.String r0 = r0.readString()
                r13 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0012
            L_0x000f:
                goto L_0x0018
            L_0x0012:
                java.lang.String r0 = ""
                r13 = r0
                goto L_0x000f
            L_0x0018:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r14 = r0
                r0 = r14
                if (r0 == 0) goto L_0x0024
            L_0x0021:
                goto L_0x002a
            L_0x0024:
                java.lang.String r0 = "1"
                r14 = r0
                goto L_0x0021
            L_0x002a:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r15 = r0
                r0 = r15
                if (r0 == 0) goto L_0x0038
            L_0x0035:
                goto L_0x003f
            L_0x0038:
                java.lang.String r0 = ""
                r15 = r0
                goto L_0x0035
            L_0x003f:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r16 = r0
                r0 = r16
                if (r0 == 0) goto L_0x004d
            L_0x004a:
                goto L_0x0054
            L_0x004d:
                java.lang.String r0 = ""
                r16 = r0
                goto L_0x004a
            L_0x0054:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r17 = r0
                r0 = r17
                if (r0 == 0) goto L_0x0062
            L_0x005f:
                goto L_0x0069
            L_0x0062:
                java.lang.String r0 = ""
                r17 = r0
                goto L_0x005f
            L_0x0069:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r18 = r0
                r0 = r18
                if (r0 == 0) goto L_0x0077
            L_0x0074:
                goto L_0x007e
            L_0x0077:
                java.lang.String r0 = ""
                r18 = r0
                goto L_0x0074
            L_0x007e:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r19 = r0
                r0 = r19
                if (r0 == 0) goto L_0x008c
            L_0x0089:
                goto L_0x0093
            L_0x008c:
                java.lang.String r0 = ""
                r19 = r0
                goto L_0x0089
            L_0x0093:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r20 = r0
                r0 = r20
                if (r0 == 0) goto L_0x00a1
            L_0x009e:
                goto L_0x00a8
            L_0x00a1:
                java.lang.String r0 = ""
                r20 = r0
                goto L_0x009e
            L_0x00a8:
                r0 = r12
                java.lang.String r0 = r0.readString()
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L_0x00b4
            L_0x00b1:
                goto L_0x00ba
            L_0x00b4:
                java.lang.String r0 = ""
                r12 = r0
                goto L_0x00b1
            L_0x00ba:
                r0 = r11
                r1 = r13
                r2 = r14
                r3 = r15
                r4 = r16
                r5 = r17
                r6 = r18
                r7 = r19
                r8 = r20
                r9 = r12
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.CampaignUtil.CampaignTemplate.<init>(android.os.Parcel):void");
        }

        public CampaignTemplate(@NotNull String batchId, @NotNull String logo, @NotNull String title, @NotNull String message, @NotNull String secondaryImage, @NotNull String buttonText1, @NotNull String buttonAction1, @NotNull String buttonText2, @NotNull String buttonAction2) {
            Intrinsics.checkParameterIsNotNull(batchId, "batchId");
            Intrinsics.checkParameterIsNotNull(logo, "logo");
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(message, "message");
            Intrinsics.checkParameterIsNotNull(secondaryImage, "secondaryImage");
            Intrinsics.checkParameterIsNotNull(buttonText1, "buttonText1");
            Intrinsics.checkParameterIsNotNull(buttonAction1, "buttonAction1");
            Intrinsics.checkParameterIsNotNull(buttonText2, "buttonText2");
            Intrinsics.checkParameterIsNotNull(buttonAction2, "buttonAction2");
            this.batchId = batchId;
            this.logo = logo;
            this.title = title;
            this.message = message;
            this.secondaryImage = secondaryImage;
            this.buttonText1 = buttonText1;
            this.buttonAction1 = buttonAction1;
            this.buttonText2 = buttonText2;
            this.buttonAction2 = buttonAction2;
        }

        public /* synthetic */ CampaignTemplate(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? "1" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9);
        }

        @NotNull
        public static /* synthetic */ CampaignTemplate copy$default(CampaignTemplate campaignTemplate, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i, Object obj) {
            if ((i & 1) != 0) {
                str = campaignTemplate.batchId;
            }
            if ((i & 2) != 0) {
                str2 = campaignTemplate.logo;
            }
            if ((i & 4) != 0) {
                str3 = campaignTemplate.title;
            }
            if ((i & 8) != 0) {
                str4 = campaignTemplate.message;
            }
            if ((i & 16) != 0) {
                str5 = campaignTemplate.secondaryImage;
            }
            if ((i & 32) != 0) {
                str6 = campaignTemplate.buttonText1;
            }
            if ((i & 64) != 0) {
                str7 = campaignTemplate.buttonAction1;
            }
            if ((i & 128) != 0) {
                str8 = campaignTemplate.buttonText2;
            }
            if ((i & 256) != 0) {
                str9 = campaignTemplate.buttonAction2;
            }
            return campaignTemplate.copy(str, str2, str3, str4, str5, str6, str7, str8, str9);
        }

        @NotNull
        public final String component1() {
            return this.batchId;
        }

        @NotNull
        public final String component2() {
            return this.logo;
        }

        @NotNull
        public final String component3() {
            return this.title;
        }

        @NotNull
        public final String component4() {
            return this.message;
        }

        @NotNull
        public final String component5() {
            return this.secondaryImage;
        }

        @NotNull
        public final String component6() {
            return this.buttonText1;
        }

        @NotNull
        public final String component7() {
            return this.buttonAction1;
        }

        @NotNull
        public final String component8() {
            return this.buttonText2;
        }

        @NotNull
        public final String component9() {
            return this.buttonAction2;
        }

        @NotNull
        public final CampaignTemplate copy(@NotNull String batchId, @NotNull String logo, @NotNull String title, @NotNull String message, @NotNull String secondaryImage, @NotNull String buttonText1, @NotNull String buttonAction1, @NotNull String buttonText2, @NotNull String buttonAction2) {
            Intrinsics.checkParameterIsNotNull(batchId, "batchId");
            Intrinsics.checkParameterIsNotNull(logo, "logo");
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(message, "message");
            Intrinsics.checkParameterIsNotNull(secondaryImage, "secondaryImage");
            Intrinsics.checkParameterIsNotNull(buttonText1, "buttonText1");
            Intrinsics.checkParameterIsNotNull(buttonAction1, "buttonAction1");
            Intrinsics.checkParameterIsNotNull(buttonText2, "buttonText2");
            Intrinsics.checkParameterIsNotNull(buttonAction2, "buttonAction2");
            return new CampaignTemplate(batchId, logo, title, message, secondaryImage, buttonText1, buttonAction1, buttonText2, buttonAction2);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CampaignTemplate)) {
                return false;
            }
            CampaignTemplate campaignTemplate = (CampaignTemplate) obj;
            return Intrinsics.areEqual(this.batchId, campaignTemplate.batchId) && Intrinsics.areEqual(this.logo, campaignTemplate.logo) && Intrinsics.areEqual(this.title, campaignTemplate.title) && Intrinsics.areEqual(this.message, campaignTemplate.message) && Intrinsics.areEqual(this.secondaryImage, campaignTemplate.secondaryImage) && Intrinsics.areEqual(this.buttonText1, campaignTemplate.buttonText1) && Intrinsics.areEqual(this.buttonAction1, campaignTemplate.buttonAction1) && Intrinsics.areEqual(this.buttonText2, campaignTemplate.buttonText2) && Intrinsics.areEqual(this.buttonAction2, campaignTemplate.buttonAction2);
        }

        @NotNull
        public final String getBatchId() {
            return this.batchId;
        }

        @NotNull
        public final String getButtonAction1() {
            return this.buttonAction1;
        }

        @NotNull
        public final String getButtonAction2() {
            return this.buttonAction2;
        }

        @NotNull
        public final String getButtonText1() {
            return this.buttonText1;
        }

        @NotNull
        public final String getButtonText2() {
            return this.buttonText2;
        }

        @NotNull
        public final String getLogo() {
            return this.logo;
        }

        @NotNull
        public final String getMessage() {
            return this.message;
        }

        @NotNull
        public final String getSecondaryImage() {
            return this.secondaryImage;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.batchId;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.logo;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.title;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.message;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.secondaryImage;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.buttonText1;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.buttonAction1;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.buttonText2;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.buttonAction2;
            if (str9 != null) {
                i = str9.hashCode();
            }
            return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
        }

        public final void setBatchId(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.batchId = str;
        }

        public final void setButtonAction1(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.buttonAction1 = str;
        }

        public final void setButtonAction2(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.buttonAction2 = str;
        }

        public final void setButtonText1(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.buttonText1 = str;
        }

        public final void setButtonText2(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.buttonText2 = str;
        }

        public final void setLogo(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.logo = str;
        }

        public final void setMessage(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.message = str;
        }

        public final void setSecondaryImage(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.secondaryImage = str;
        }

        public final void setTitle(@NotNull String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.title = str;
        }

        @NotNull
        public String toString() {
            return "CampaignTemplate(batchId=" + this.batchId + ", logo=" + this.logo + ", title=" + this.title + ", message=" + this.message + ", secondaryImage=" + this.secondaryImage + ", buttonText1=" + this.buttonText1 + ", buttonAction1=" + this.buttonAction1 + ", buttonText2=" + this.buttonText2 + ", buttonAction2=" + this.buttonAction2 + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel dest, int i) {
            Intrinsics.checkParameterIsNotNull(dest, "dest");
            dest.writeString(this.batchId);
            dest.writeString(this.logo);
            dest.writeString(this.title);
            dest.writeString(this.message);
            dest.writeString(this.secondaryImage);
            dest.writeString(this.buttonText1);
            dest.writeString(this.buttonAction1);
            dest.writeString(this.buttonText2);
            dest.writeString(this.buttonAction2);
        }
    }

    private CampaignUtil() {
    }

    public static /* synthetic */ void testMessage$default(CampaignUtil campaignUtil, Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, Object obj) {
        if ((i & 128) != 0) {
            str7 = "";
        }
        if ((i & 256) != 0) {
            str8 = "";
        }
        campaignUtil.testMessage(context, str, str2, str3, str4, str5, str6, str7, str8);
    }

    public final void downloadAndSave(@NotNull Context context, @NotNull String imageURL, @NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(imageURL, "imageURL");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
    }

    @NotNull
    public final String getImageFileName(@NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        return IMAGE_FOLDER + batchId + ".png";
    }

    @NotNull
    public final String getImageFolderName() {
        return IMAGE_FOLDER;
    }

    @NotNull
    public final String getImageUrl(@NotNull String messageInHex, @NotNull String field) {
        String str;
        Intrinsics.checkParameterIsNotNull(messageInHex, "messageInHex");
        Intrinsics.checkParameterIsNotNull(field, "field");
        String convertFromHexString = Text.convertFromHexString(messageInHex);
        if (Intrinsics.areEqual("", convertFromHexString)) {
            return convertFromHexString;
        }
        try {
            str = new JSONObject(convertFromHexString).getString(field);
            Intrinsics.checkExpressionValueIsNotNull(str, "jsonObject.getString(field)");
        } catch (JSONException e) {
            Timber.m33e(e);
            str = "";
        }
        return str;
    }

    @NotNull
    public final CampaignTemplate messageToTemplate(@NotNull Message msg) {
        Intrinsics.checkParameterIsNotNull(msg, "msg");
        String batchId = msg.getBatchId();
        Intrinsics.checkExpressionValueIsNotNull(batchId, "msg.batchId");
        CampaignTemplate campaignTemplate = new CampaignTemplate(batchId, null, null, null, null, null, null, null, null, 510, null);
        try {
            Timber.m37d("msg = : " + msg.getMessageBody(), new Object[0]);
            String convertFromHexString = Text.convertFromHexString(msg.getMessageBody());
            Timber.m37d("Text from hex: " + convertFromHexString, new Object[0]);
            JSONObject jSONObject = new JSONObject(convertFromHexString);
            if (jSONObject.has(FIELD_LOGO)) {
                String string = jSONObject.getString(FIELD_LOGO);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(FIELD_LOGO)");
                campaignTemplate.setLogo(string);
            }
            if (jSONObject.has(FIELD_TITLE)) {
                String string2 = jSONObject.getString(FIELD_TITLE);
                Intrinsics.checkExpressionValueIsNotNull(string2, "getString(FIELD_TITLE)");
                campaignTemplate.setTitle(string2);
            }
            if (jSONObject.has("Message")) {
                String string3 = jSONObject.getString("Message");
                Intrinsics.checkExpressionValueIsNotNull(string3, "getString(FIELD_MESSAGE)");
                campaignTemplate.setMessage(string3);
            }
            if (jSONObject.has(FIELD_SECONDARY_IMAGE)) {
                String string4 = jSONObject.getString(FIELD_SECONDARY_IMAGE);
                Intrinsics.checkExpressionValueIsNotNull(string4, "getString(FIELD_SECONDARY_IMAGE)");
                campaignTemplate.setSecondaryImage(string4);
            }
            if (jSONObject.has(FIELD_BUTTON1_TEXT)) {
                String string5 = jSONObject.getString(FIELD_BUTTON1_TEXT);
                Intrinsics.checkExpressionValueIsNotNull(string5, "getString(FIELD_BUTTON1_TEXT)");
                campaignTemplate.setButtonText1(string5);
            }
            if (jSONObject.has(FIELD_BUTTON1_ACTION)) {
                String string6 = jSONObject.getString(FIELD_BUTTON1_ACTION);
                Intrinsics.checkExpressionValueIsNotNull(string6, "getString(FIELD_BUTTON1_ACTION)");
                campaignTemplate.setButtonAction1(string6);
            }
            if (jSONObject.has(FIELD_BUTTON2_TEXT)) {
                String string7 = jSONObject.getString(FIELD_BUTTON2_TEXT);
                Intrinsics.checkExpressionValueIsNotNull(string7, "getString(FIELD_BUTTON2_TEXT)");
                campaignTemplate.setButtonText2(string7);
            }
            if (jSONObject.has(FIELD_BUTTON2_ACTION)) {
                String string8 = jSONObject.getString(FIELD_BUTTON2_ACTION);
                Intrinsics.checkExpressionValueIsNotNull(string8, "getString(FIELD_BUTTON2_ACTION)");
                campaignTemplate.setButtonAction2(string8);
            }
        } catch (JSONException e) {
            Timber.m33e(e);
        }
        return campaignTemplate;
    }

    public final void testMessage(@NotNull Context context, @NotNull String batchId, @NotNull String logo, @NotNull String title, @NotNull String message, @NotNull String button1Text, @NotNull String buttonAction1, @NotNull String buttonText2, @NotNull String buttonAction2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        Intrinsics.checkParameterIsNotNull(logo, "logo");
        Intrinsics.checkParameterIsNotNull(title, "title");
        Intrinsics.checkParameterIsNotNull(message, "message");
        Intrinsics.checkParameterIsNotNull(button1Text, "button1Text");
        Intrinsics.checkParameterIsNotNull(buttonAction1, "buttonAction1");
        Intrinsics.checkParameterIsNotNull(buttonText2, "buttonText2");
        Intrinsics.checkParameterIsNotNull(buttonAction2, "buttonAction2");
        Timber.m37d("Processing inbox message response.", new Object[0]);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FIELD_LOGO, logo);
            jSONObject.put(FIELD_TITLE, title);
            jSONObject.put("Message", message);
            jSONObject.put(FIELD_BUTTON1_TEXT, button1Text);
            jSONObject.put(FIELD_BUTTON1_ACTION, buttonAction1);
            jSONObject.put(FIELD_BUTTON2_TEXT, buttonText2);
            jSONObject.put(FIELD_BUTTON2_ACTION, buttonAction2);
        } catch (JSONException e) {
        }
        String convertToHexString = Text.convertToHexString(jSONObject.toString());
        System.out.println("HEX: " + convertToHexString);
        MessageTrackingResponse messageTrackingResponse = new MessageTrackingResponse();
        messageTrackingResponse.setMessageHtml(convertToHexString);
        messageTrackingResponse.setNotificationMessage("Message from PrivacyStar");
        messageTrackingResponse.setNotificationTitle(title);
        Realm defaultInstance = Realm.getDefaultInstance();
        Throwable th = null;
        try {
            MessageRealm.storeMessage(defaultInstance, batchId, messageTrackingResponse.getMessageHtml(), messageTrackingResponse.getNotificationTitle(), messageTrackingResponse.getNotificationMessage());
            NotificationUtil.showPushMessageNotification(PSApplication.context(), batchId, messageTrackingResponse.getNotificationTitle(), messageTrackingResponse.getNotificationMessage());
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(defaultInstance, th);
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void tryDownloadLogo(@NotNull Context context, @NotNull String messageInHex, @NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(messageInHex, "messageInHex");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        String imageUrl = getImageUrl(messageInHex, FIELD_LOGO);
        if (!(imageUrl.length() == 0) && URLUtil.isValidUrl(imageUrl)) {
            Timber.m28v("URL is valid and non-empty.  Attempting to download and save image for batchID:" + batchId, new Object[0]);
        }
    }

    public final void tryDownloadSecondaryImage(@NotNull Context context, @NotNull String messageInHex, @NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(messageInHex, "messageInHex");
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        String imageUrl = getImageUrl(messageInHex, FIELD_SECONDARY_IMAGE);
        if (!(imageUrl.length() == 0) && URLUtil.isValidUrl(imageUrl)) {
            Timber.m28v("URL is valid and non-empty.  Attempting to download and save image for batchID:" + batchId, new Object[0]);
        }
    }
}

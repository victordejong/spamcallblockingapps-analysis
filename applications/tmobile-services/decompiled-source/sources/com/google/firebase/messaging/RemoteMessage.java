package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage.class */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new RemoteMessageCreator();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    @SafeParcelable.Field
    Bundle bundle;
    private Map<String, String> data;
    private Notification notification;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$Builder.class */
    public static class Builder {
        private final Bundle bundle = new Bundle();
        private final Map<String, String> data = new ArrayMap();

        public Builder(@NonNull String str) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid to: ".concat(valueOf) : new String("Invalid to: "));
            } else {
                this.bundle.putString(Constants.MessagePayloadKeys.f11921TO, str);
            }
        }

        @NonNull
        public Builder addData(@NonNull String str, @Nullable String str2) {
            this.data.put(str, str2);
            return this;
        }

        @NonNull
        public RemoteMessage build() {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, String> entry : this.data.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            bundle.putAll(this.bundle);
            this.bundle.remove(Constants.MessagePayloadKeys.FROM);
            return new RemoteMessage(bundle);
        }

        @NonNull
        public Builder clearData() {
            this.data.clear();
            return this;
        }

        @NonNull
        public Builder setCollapseKey(@Nullable String str) {
            this.bundle.putString(Constants.MessagePayloadKeys.COLLAPSE_KEY, str);
            return this;
        }

        @NonNull
        public Builder setData(@NonNull Map<String, String> map) {
            this.data.clear();
            this.data.putAll(map);
            return this;
        }

        @NonNull
        public Builder setMessageId(@NonNull String str) {
            this.bundle.putString(Constants.MessagePayloadKeys.MSGID, str);
            return this;
        }

        @NonNull
        public Builder setMessageType(@Nullable String str) {
            this.bundle.putString(Constants.MessagePayloadKeys.MESSAGE_TYPE, str);
            return this;
        }

        @NonNull
        @ShowFirstParty
        public Builder setRawData(byte[] bArr) {
            this.bundle.putByteArray(Constants.MessagePayloadKeys.RAW_DATA, bArr);
            return this;
        }

        @NonNull
        public Builder setTtl(@IntRange(from = 0, to = 86400) int i) {
            this.bundle.putString(Constants.MessagePayloadKeys.TTL, String.valueOf(i));
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$MessagePriority.class */
    public @interface MessagePriority {
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/RemoteMessage$Notification.class */
    public static class Notification {
        private final String body;
        private final String[] bodyLocArgs;
        private final String bodyLocKey;
        private final String channelId;
        private final String clickAction;
        private final String color;
        private final boolean defaultLightSettings;
        private final boolean defaultSound;
        private final boolean defaultVibrateTimings;
        private final Long eventTime;
        private final String icon;
        private final String imageUrl;
        private final int[] lightSettings;
        private final Uri link;
        private final boolean localOnly;
        private final Integer notificationCount;
        private final Integer notificationPriority;
        private final String sound;
        private final boolean sticky;
        private final String tag;
        private final String ticker;
        private final String title;
        private final String[] titleLocArgs;
        private final String titleLocKey;
        private final long[] vibrateTimings;
        private final Integer visibility;

        private Notification(NotificationParams notificationParams) {
            this.title = notificationParams.getString(Constants.MessageNotificationKeys.TITLE);
            this.titleLocKey = notificationParams.getLocalizationResourceForKey(Constants.MessageNotificationKeys.TITLE);
            this.titleLocArgs = getLocalizationArgs(notificationParams, Constants.MessageNotificationKeys.TITLE);
            this.body = notificationParams.getString(Constants.MessageNotificationKeys.BODY);
            this.bodyLocKey = notificationParams.getLocalizationResourceForKey(Constants.MessageNotificationKeys.BODY);
            this.bodyLocArgs = getLocalizationArgs(notificationParams, Constants.MessageNotificationKeys.BODY);
            this.icon = notificationParams.getString(Constants.MessageNotificationKeys.ICON);
            this.sound = notificationParams.getSoundResourceName();
            this.tag = notificationParams.getString(Constants.MessageNotificationKeys.TAG);
            this.color = notificationParams.getString(Constants.MessageNotificationKeys.COLOR);
            this.clickAction = notificationParams.getString(Constants.MessageNotificationKeys.CLICK_ACTION);
            this.channelId = notificationParams.getString(Constants.MessageNotificationKeys.CHANNEL);
            this.link = notificationParams.getLink();
            this.imageUrl = notificationParams.getString(Constants.MessageNotificationKeys.IMAGE_URL);
            this.ticker = notificationParams.getString(Constants.MessageNotificationKeys.TICKER);
            this.notificationPriority = notificationParams.getInteger(Constants.MessageNotificationKeys.NOTIFICATION_PRIORITY);
            this.visibility = notificationParams.getInteger(Constants.MessageNotificationKeys.VISIBILITY);
            this.notificationCount = notificationParams.getInteger(Constants.MessageNotificationKeys.NOTIFICATION_COUNT);
            this.sticky = notificationParams.getBoolean(Constants.MessageNotificationKeys.STICKY);
            this.localOnly = notificationParams.getBoolean(Constants.MessageNotificationKeys.LOCAL_ONLY);
            this.defaultSound = notificationParams.getBoolean(Constants.MessageNotificationKeys.DEFAULT_SOUND);
            this.defaultVibrateTimings = notificationParams.getBoolean(Constants.MessageNotificationKeys.DEFAULT_VIBRATE_TIMINGS);
            this.defaultLightSettings = notificationParams.getBoolean(Constants.MessageNotificationKeys.DEFAULT_LIGHT_SETTINGS);
            this.eventTime = notificationParams.getLong(Constants.MessageNotificationKeys.EVENT_TIME);
            this.lightSettings = notificationParams.getLightSettings();
            this.vibrateTimings = notificationParams.getVibrateTimings();
        }

        private static String[] getLocalizationArgs(NotificationParams notificationParams, String str) {
            Object[] localizationArgsForKey = notificationParams.getLocalizationArgsForKey(str);
            if (localizationArgsForKey == null) {
                return null;
            }
            String[] strArr = new String[localizationArgsForKey.length];
            for (int i = 0; i < localizationArgsForKey.length; i++) {
                strArr[i] = String.valueOf(localizationArgsForKey[i]);
            }
            return strArr;
        }

        @Nullable
        public String getBody() {
            return this.body;
        }

        @Nullable
        public String[] getBodyLocalizationArgs() {
            return this.bodyLocArgs;
        }

        @Nullable
        public String getBodyLocalizationKey() {
            return this.bodyLocKey;
        }

        @Nullable
        public String getChannelId() {
            return this.channelId;
        }

        @Nullable
        public String getClickAction() {
            return this.clickAction;
        }

        @Nullable
        public String getColor() {
            return this.color;
        }

        public boolean getDefaultLightSettings() {
            return this.defaultLightSettings;
        }

        public boolean getDefaultSound() {
            return this.defaultSound;
        }

        public boolean getDefaultVibrateSettings() {
            return this.defaultVibrateTimings;
        }

        @Nullable
        public Long getEventTime() {
            return this.eventTime;
        }

        @Nullable
        public String getIcon() {
            return this.icon;
        }

        @Nullable
        public Uri getImageUrl() {
            String str = this.imageUrl;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        @Nullable
        public int[] getLightSettings() {
            return this.lightSettings;
        }

        @Nullable
        public Uri getLink() {
            return this.link;
        }

        public boolean getLocalOnly() {
            return this.localOnly;
        }

        @Nullable
        public Integer getNotificationCount() {
            return this.notificationCount;
        }

        @Nullable
        public Integer getNotificationPriority() {
            return this.notificationPriority;
        }

        @Nullable
        public String getSound() {
            return this.sound;
        }

        public boolean getSticky() {
            return this.sticky;
        }

        @Nullable
        public String getTag() {
            return this.tag;
        }

        @Nullable
        public String getTicker() {
            return this.ticker;
        }

        @Nullable
        public String getTitle() {
            return this.title;
        }

        @Nullable
        public String[] getTitleLocalizationArgs() {
            return this.titleLocArgs;
        }

        @Nullable
        public String getTitleLocalizationKey() {
            return this.titleLocKey;
        }

        @Nullable
        public long[] getVibrateTimings() {
            return this.vibrateTimings;
        }

        @Nullable
        public Integer getVisibility() {
            return this.visibility;
        }
    }

    @SafeParcelable.Constructor
    public RemoteMessage(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.bundle = bundle;
    }

    private final int getMessagePriority(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    @Nullable
    public final String getCollapseKey() {
        return this.bundle.getString(Constants.MessagePayloadKeys.COLLAPSE_KEY);
    }

    @NonNull
    public final Map<String, String> getData() {
        if (this.data == null) {
            this.data = Constants.MessagePayloadKeys.extractDeveloperDefinedPayload(this.bundle);
        }
        return this.data;
    }

    @Nullable
    public final String getFrom() {
        return this.bundle.getString(Constants.MessagePayloadKeys.FROM);
    }

    @Nullable
    public final String getMessageId() {
        String string = this.bundle.getString(Constants.MessagePayloadKeys.MSGID);
        String str = string;
        if (string == null) {
            str = this.bundle.getString(Constants.MessagePayloadKeys.MSGID_SERVER);
        }
        return str;
    }

    @Nullable
    public final String getMessageType() {
        return this.bundle.getString(Constants.MessagePayloadKeys.MESSAGE_TYPE);
    }

    @Nullable
    public final Notification getNotification() {
        if (this.notification == null && NotificationParams.isNotification(this.bundle)) {
            this.notification = new Notification(new NotificationParams(this.bundle));
        }
        return this.notification;
    }

    public final int getOriginalPriority() {
        String string = this.bundle.getString(Constants.MessagePayloadKeys.ORIGINAL_PRIORITY);
        String str = string;
        if (string == null) {
            str = this.bundle.getString(Constants.MessagePayloadKeys.PRIORITY_V19);
        }
        return getMessagePriority(str);
    }

    public final int getPriority() {
        String string = this.bundle.getString(Constants.MessagePayloadKeys.DELIVERED_PRIORITY);
        String str = string;
        if (string == null) {
            if (TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(this.bundle.getString(Constants.MessagePayloadKeys.PRIORITY_REDUCED_V19))) {
                return 2;
            }
            str = this.bundle.getString(Constants.MessagePayloadKeys.PRIORITY_V19);
        }
        return getMessagePriority(str);
    }

    @Nullable
    @ShowFirstParty
    public final byte[] getRawData() {
        return this.bundle.getByteArray(Constants.MessagePayloadKeys.RAW_DATA);
    }

    @Nullable
    public final String getSenderId() {
        return this.bundle.getString(Constants.MessagePayloadKeys.SENDER_ID);
    }

    public final long getSentTime() {
        Object obj = this.bundle.get(Constants.MessagePayloadKeys.SENT_TIME);
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
            sb.append("Invalid sent time: ");
            sb.append(valueOf);
            Log.w(Constants.TAG, sb.toString());
            return 0L;
        }
    }

    @Nullable
    public final String getTo() {
        return this.bundle.getString(Constants.MessagePayloadKeys.f11921TO);
    }

    public final int getTtl() {
        Object obj = this.bundle.get(Constants.MessagePayloadKeys.TTL);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13);
            sb.append("Invalid TTL: ");
            sb.append(valueOf);
            Log.w(Constants.TAG, sb.toString());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void populateSendMessageIntent(Intent intent) {
        intent.putExtras(this.bundle);
    }

    @KeepForSdk
    public final Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.bundle);
        return intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        RemoteMessageCreator.writeToParcel(this, parcel, i);
    }
}

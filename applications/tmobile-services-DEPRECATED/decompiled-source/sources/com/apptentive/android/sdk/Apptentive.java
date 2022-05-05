package com.apptentive.android.sdk;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.model.ExtendedData;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.messagecenter.UnreadMessagesListener;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive.class */
public class Apptentive {
    private static OnPreInteractionListener preInteractionListener;

    /* renamed from: com.apptentive.android.sdk.Apptentive$10 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$10.class */
    final class C067610 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Number val$value;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().put(this.val$key, (Serializable) this.val$value);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$11 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$11.class */
    final class C067711 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Boolean val$value;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().put(this.val$key, (Serializable) this.val$value);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$12 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$12.class */
    final class C067812 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Version val$version;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().put(this.val$key, (Serializable) this.val$version);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$13 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$13.class */
    final class C067913 extends ConversationDispatchTask {
        final /* synthetic */ DateTime val$dateTime;
        final /* synthetic */ String val$key;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().put(this.val$key, (Serializable) this.val$dateTime);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$14 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$14.class */
    final class C068014 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().remove((Object) this.val$key);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$15 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$15.class */
    final class C068115 extends ConversationDispatchTask {
        final /* synthetic */ int val$pushProvider;
        final /* synthetic */ String val$token;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit().putInt("pushProvider", this.val$pushProvider).putString("pushToken", this.val$token).apply();
            conversation.setPushIntegration(this.val$pushProvider, this.val$token);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$16 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$16.class */
    final class C068216 extends ConversationDispatchTask {
        final /* synthetic */ PendingIntentCallback val$callback;
        final /* synthetic */ Intent val$intent;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(this.val$intent));
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.16.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    C068216.this.val$callback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                }
            });
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$17 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$17.class */
    final class C068417 extends ConversationDispatchTask {
        final /* synthetic */ Bundle val$bundle;
        final /* synthetic */ PendingIntentCallback val$callback;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(this.val$bundle));
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.17.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    C068417.this.val$callback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                }
            });
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$18 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$18.class */
    final class C068618 extends ConversationDispatchTask {
        final /* synthetic */ PendingIntentCallback val$callback;
        final /* synthetic */ Map val$data;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(this.val$data));
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.18.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    C068618.this.val$callback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                }
            });
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$19 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$19.class */
    final class C068819 extends ConversationDispatchTask {
        final /* synthetic */ Context val$context;
        final /* synthetic */ Map val$customData;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            return ApptentiveInternal.getInstance().showMessageCenterInternal(this.val$context, this.val$customData);
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$20 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$20.class */
    final class C069020 extends ConversationDispatchTask {
        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            return ApptentiveInternal.canShowMessageCenterInternal(conversation);
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$21 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$21.class */
    final class C069121 extends ConversationDispatchTask {
        final /* synthetic */ UnreadMessagesListener val$listener;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getMessageManager().setHostUnreadMessagesListener(this.val$listener);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$23 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$23.class */
    final class C069323 extends ConversationDispatchTask {
        final /* synthetic */ String val$text;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            CompoundMessage compoundMessage = new CompoundMessage();
            compoundMessage.setBody(this.val$text);
            compoundMessage.setRead(true);
            compoundMessage.setHidden(true);
            compoundMessage.setSenderId(conversation.getPerson().getId());
            compoundMessage.setAssociatedFiles(null);
            conversation.getMessageManager().sendMessage(compoundMessage);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$24 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$24.class */
    final class C069424 extends ConversationDispatchTask {
        final /* synthetic */ String val$uri;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            if (TextUtils.isEmpty(this.val$uri)) {
                return false;
            }
            CompoundMessage compoundMessage = new CompoundMessage();
            compoundMessage.setBody(null);
            compoundMessage.setRead(true);
            compoundMessage.setHidden(true);
            compoundMessage.setSenderId(conversation.getPerson().getId());
            ArrayList arrayList = new ArrayList();
            Context applicationContext = ApptentiveInternal.getInstance().getApplicationContext();
            String generateCacheFilePathFromNonceOrPrefix = Util.generateCacheFilePathFromNonceOrPrefix(applicationContext, compoundMessage.getNonce(), Uri.parse(this.val$uri).getLastPathSegment());
            String mimeTypeFromUri = Util.getMimeTypeFromUri(applicationContext, Uri.parse(this.val$uri));
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            String extensionFromMimeType = singleton.getExtensionFromMimeType(mimeTypeFromUri);
            String str = extensionFromMimeType;
            if (extensionFromMimeType == null) {
                str = MimeTypeMap.getFileExtensionFromUrl(this.val$uri);
            }
            String str2 = mimeTypeFromUri;
            if (mimeTypeFromUri == null) {
                str2 = mimeTypeFromUri;
                if (str != null) {
                    str2 = singleton.getMimeTypeFromExtension(str);
                }
            }
            String str3 = generateCacheFilePathFromNonceOrPrefix;
            if (!TextUtils.isEmpty(str)) {
                str3 = generateCacheFilePathFromNonceOrPrefix + "." + str;
            }
            StoredFile createLocalStoredFile = Util.createLocalStoredFile(this.val$uri, str3, str2);
            if (createLocalStoredFile == null) {
                return false;
            }
            createLocalStoredFile.setId(compoundMessage.getNonce());
            arrayList.add(createLocalStoredFile);
            compoundMessage.setAssociatedFiles(arrayList);
            conversation.getMessageManager().sendMessage(compoundMessage);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$25 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$25.class */
    final class C069525 extends ConversationDispatchTask {
        final /* synthetic */ byte[] val$content;
        final /* synthetic */ String val$mimeType;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ByteArrayInputStream byteArrayInputStream;
            Throwable th;
            try {
                byteArrayInputStream = new ByteArrayInputStream(this.val$content);
                try {
                    Apptentive.sendAttachmentFile(byteArrayInputStream, this.val$mimeType);
                    Util.ensureClosed(byteArrayInputStream);
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    Util.ensureClosed(byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayInputStream = null;
            }
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$29 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$29.class */
    final class C069929 extends ConversationDispatchTask {
        final /* synthetic */ String val$event;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            return Apptentive.canShowLocalAppInteraction(conversation, this.val$event);
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$30 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$30.class */
    final class C070130 extends ConversationDispatchTask {
        final /* synthetic */ OnSurveyFinishedListener val$listener;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ApptentiveInternal.getInstance().setOnSurveyFinishedListener(this.val$listener);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$31 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$31.class */
    final class C070231 extends DispatchTask {
        final /* synthetic */ LoginCallback val$callback;
        final /* synthetic */ String val$token;

        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            try {
                Apptentive.loginGuarded(this.val$token, this.val$callback);
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to login", new Object[0]);
                Apptentive.logException(e);
                Apptentive.notifyFailure(this.val$callback, "Exception while trying to login");
            }
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$33 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$33.class */
    final class C070433 extends ConversationDispatchTask {
        C070433() {
        }

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ApptentiveInternal.getInstance().logout();
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$34 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$34.class */
    final class C070534 extends ConversationDispatchTask {
        C070534() {
        }

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ApptentiveInternal apptentiveInternal = (ApptentiveInternal) ObjectUtils.m15631as(ApptentiveInternal.getInstance(), ApptentiveInternal.class);
            if (apptentiveInternal == null) {
                return false;
            }
            apptentiveInternal.tryUpdateApptimizeData();
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$35 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$35.class */
    final class C070635 extends ConversationDispatchTask {
        C070635() {
        }

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            ApptentiveInternal apptentiveInternal = (ApptentiveInternal) ObjectUtils.m15631as(ApptentiveInternal.getInstance(), ApptentiveInternal.class);
            if (apptentiveInternal == null) {
                return false;
            }
            apptentiveInternal.tryUpdateApptimizeData();
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$4 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$4.class */
    final class C07074 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Number val$value;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getDevice().getCustomData().put(this.val$key, (Serializable) this.val$value);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$5.class */
    final class C07085 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Boolean val$value;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getDevice().getCustomData().put(this.val$key, (Serializable) this.val$value);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$6 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$6.class */
    final class C07096 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ Version val$version;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getDevice().getCustomData().put(this.val$key, (Serializable) this.val$version);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$7 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$7.class */
    final class C07107 extends ConversationDispatchTask {
        final /* synthetic */ DateTime val$dateTime;
        final /* synthetic */ String val$key;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getDevice().getCustomData().put(this.val$key, (Serializable) this.val$dateTime);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$8 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$8.class */
    final class C07118 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getDevice().getCustomData().remove((Object) this.val$key);
            return true;
        }
    }

    /* renamed from: com.apptentive.android.sdk.Apptentive$9 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$9.class */
    final class C07129 extends ConversationDispatchTask {
        final /* synthetic */ String val$key;
        final /* synthetic */ String val$value;

        @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
        protected boolean execute(Conversation conversation) {
            conversation.getPerson().getCustomData().put(this.val$key, (Serializable) StringUtils.trim(this.val$value));
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$AuthenticationFailedListener.class */
    public interface AuthenticationFailedListener {
        void onAuthenticationFailed(AuthenticationFailedReason authenticationFailedReason);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$AuthenticationFailedReason.class */
    public enum AuthenticationFailedReason {
        UNKNOWN,
        INVALID_ALGORITHM,
        MALFORMED_TOKEN,
        INVALID_TOKEN,
        MISSING_SUB_CLAIM,
        MISMATCHED_SUB_CLAIM,
        INVALID_SUB_CLAIM,
        EXPIRED_TOKEN,
        REVOKED_TOKEN,
        MISSING_APP_KEY,
        MISSING_APP_SIGNATURE,
        INVALID_KEY_SIGNATURE_PAIR;
        
        private String error;

        public static AuthenticationFailedReason parse(String str, String str2) {
            try {
                AuthenticationFailedReason valueOf = valueOf(str);
                valueOf.error = str2;
                return valueOf;
            } catch (Exception e) {
                ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Error parsing unknown Apptentive.AuthenticationFailedReason: %s", str);
                Apptentive.logException(e);
                return UNKNOWN;
            }
        }

        public String error() {
            return this.error;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "AuthenticationFailedReason{error='" + this.error + "'errorType='" + name() + "'}";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$BooleanCallback.class */
    public interface BooleanCallback {
        void onFinish(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$DateTime.class */
    public static class DateTime implements Serializable, Comparable<DateTime> {
        public static final String KEY_TYPE = "_type";
        public static final String SEC = "sec";
        public static final String TYPE = "datetime";
        private static final long serialVersionUID = -7893194735115350118L;
        private String sec;

        public DateTime(double d) {
            setDateTime(d);
        }

        public DateTime(JSONObject jSONObject) throws JSONException {
            this.sec = jSONObject.optString(SEC);
        }

        public int compareTo(DateTime dateTime) {
            return Double.compare(getDateTime(), dateTime.getDateTime());
        }

        public double getDateTime() {
            return Double.valueOf(this.sec).doubleValue();
        }

        public void setDateTime(double d) {
            this.sec = String.valueOf(d);
        }

        public JSONObject toJSONObject() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("_type", TYPE);
                jSONObject.put(SEC, this.sec);
            } catch (JSONException e) {
                ApptentiveLog.m15641e(e, "Error creating Apptentive.DateTime.", new Object[0]);
                Apptentive.logException(e);
            }
            return jSONObject;
        }

        public String toString() {
            return Double.toString(getDateTime());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$LoginCallback.class */
    public interface LoginCallback {
        void onLoginFail(String str);

        void onLoginFinish();
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$OnPreInteractionListener.class */
    public interface OnPreInteractionListener {
        boolean shouldEngageInteraction(String str, @Nullable Map<String, Object> map);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$PendingIntentCallback.class */
    public interface PendingIntentCallback {
        void onPendingIntent(PendingIntent pendingIntent);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$Version.class */
    public static class Version implements Serializable, Comparable<Version> {
        public static final String KEY_TYPE = "_type";
        public static final String TYPE = "version";
        private static final long serialVersionUID = 1891878408603512644L;
        private String version;

        public Version() {
        }

        public Version(long j) {
            this.version = Long.toString(j);
        }

        public Version(JSONObject jSONObject) throws JSONException {
            this.version = jSONObject.optString(TYPE, null);
        }

        public int compareTo(Version version) {
            String version2 = getVersion();
            String version3 = version.getVersion();
            String[] split = version2.split("\\.");
            String[] split2 = version3.split("\\.");
            int max = Math.max(split.length, split2.length);
            int i = 0;
            while (i < max) {
                long j = 0;
                long parseLong = split.length > i ? Long.parseLong(split[i]) : 0L;
                if (split2.length > i) {
                    j = Long.parseLong(split2[i]);
                }
                int i2 = (parseLong > j ? 1 : (parseLong == j ? 0 : -1));
                if (i2 < 0) {
                    return -1;
                }
                if (i2 > 0) {
                    return 1;
                }
                i++;
            }
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return false;
            }
            if (compareTo((Version) obj) != 0) {
                z = false;
            }
            return z;
        }

        public String getVersion() {
            return this.version;
        }

        public void setVersion(long j) {
            setVersion(Long.toString(j));
        }

        public void setVersion(String str) {
            this.version = str;
        }

        public void toJsonObject() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("_type", TYPE);
                jSONObject.put(TYPE, this.version);
            } catch (JSONException e) {
                ApptentiveLog.m15641e(e, "Error creating Apptentive.Version.", new Object[0]);
                Apptentive.logException(e);
            }
        }

        public String toString() {
            return getVersion();
        }
    }

    public static void addCustomDeviceData(final String str, final String str2) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.3
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) StringUtils.trim(str2));
                return true;
            }
        }, "add custom device data");
    }

    public static void addUnreadMessagesListener(final UnreadMessagesListener unreadMessagesListener) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.22
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getMessageManager().addHostUnreadMessagesListener(UnreadMessagesListener.this);
                return true;
            }
        }, "add unread message listener");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean canShowLocalAppInteraction(Conversation conversation, String str) {
        return EngagementModule.canShowInteraction(conversation, "app", str, "local");
    }

    public static void engage(Context context, String str) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, null, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(final Context context, final String str, BooleanCallback booleanCallback, final Map<String, Object> map, final ExtendedData... extendedDataArr) {
        synchronized (Apptentive.class) {
            try {
                if (context == null) {
                    throw new IllegalArgumentException("Context is null");
                } else if (!StringUtils.isNullOrEmpty(str)) {
                    final OnPreInteractionListener onPreInteractionListener = preInteractionListener;
                    if (onPreInteractionListener != null) {
                        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.27
                            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                            protected boolean execute(Conversation conversation) {
                                if (!Apptentive.canShowLocalAppInteraction(conversation, str)) {
                                    return false;
                                }
                                boolean shouldEngageInteraction = onPreInteractionListener.shouldEngageInteraction(str, map);
                                ApptentiveLog.m15639i("Engagement callback allows interaction for event '%s': %b", str, Boolean.valueOf(shouldEngageInteraction));
                                if (!shouldEngageInteraction) {
                                    return false;
                                }
                                return Apptentive.engageLocalAppEvent(context, conversation, str, map, extendedDataArr);
                            }
                        }, StringUtils.format("engage '%s' event", str));
                    } else {
                        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.28
                            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                            protected boolean execute(Conversation conversation) {
                                return Apptentive.engageLocalAppEvent(context, conversation, str, map, extendedDataArr);
                            }
                        }, StringUtils.format("engage '%s' event", str));
                    }
                } else {
                    throw new IllegalArgumentException("Event is null or empty");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean engageLocalAppEvent(Context context, Conversation conversation, String str, Map<String, Object> map, ExtendedData[] extendedDataArr) {
        return EngagementModule.engage(context, conversation, "local", "app", null, str, null, map, extendedDataArr);
    }

    public static String getPersonEmail() {
        ConversationProxy conversationProxy;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered() || (conversationProxy = ApptentiveInternal.getInstance().getConversationProxy()) == null) {
                return null;
            }
            return conversationProxy.getPersonEmail();
        } catch (Exception e) {
            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Exception while getting person email", new Object[0]);
            logException(e);
            return null;
        }
    }

    public static String getPersonName() {
        ConversationProxy conversationProxy;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered() || (conversationProxy = ApptentiveInternal.getInstance().getConversationProxy()) == null) {
                return null;
            }
            return conversationProxy.getPersonName();
        } catch (Exception e) {
            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Exception while getting person name", new Object[0]);
            logException(e);
            return null;
        }
    }

    public static int getUnreadMessageCount() {
        int i = 0;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered()) {
                return 0;
            }
            ConversationProxy conversationProxy = ApptentiveInternal.getInstance().getConversationProxy();
            if (conversationProxy != null) {
                i = conversationProxy.getUnreadMessageCount();
            }
            return i;
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.MESSAGES, e, "Exception while getting unread message count", new Object[0]);
            logException(e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loginGuarded(String str, LoginCallback loginCallback) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveInstance instance = ApptentiveInternal.getInstance();
        if (instance.isNull()) {
            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Unable to login: Apptentive instance is not properly initialized", new Object[0]);
            notifyFailure(loginCallback, "Apptentive instance is not properly initialized");
            return;
        }
        instance.login(str, loginCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyFailure(final LoginCallback loginCallback, final String str) {
        if (loginCallback != null) {
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.32
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    LoginCallback.this.onLoginFail(str);
                }
            });
        }
    }

    public static void register(Application application, ApptentiveConfiguration apptentiveConfiguration) {
        if (application == null) {
            throw new IllegalArgumentException("Application is null");
        } else if (apptentiveConfiguration == null) {
            throw new IllegalArgumentException("Apptentive configuration is null");
        } else if (!Availability.isAndroidX()) {
            ApptentiveLog.m15642e("Unable to register Apptentive SDK: AndroidX support required. For more information see: https://learn.apptentive.com/knowledge-base/android-integration-reference/#migrating-from-support-library-to-androidx", new Object[0]);
        } else {
            try {
                ApptentiveInternal.createInstance(application, apptentiveConfiguration);
            } catch (Exception e) {
                ApptentiveLog.m15641e(e, "Exception while registering Apptentive SDK", new Object[0]);
                logException(e);
            }
        }
    }

    public static void register(Application application, String str, String str2) {
        register(application, new ApptentiveConfiguration(str, str2));
    }

    public static void sendAttachmentFile(final InputStream inputStream, final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.26
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                if (inputStream == null) {
                    return false;
                }
                CompoundMessage compoundMessage = new CompoundMessage();
                compoundMessage.setBody(null);
                compoundMessage.setRead(true);
                compoundMessage.setHidden(true);
                compoundMessage.setSenderId(conversation.getPerson().getId());
                ArrayList arrayList = new ArrayList();
                String generateCacheFilePathFromNonceOrPrefix = Util.generateCacheFilePathFromNonceOrPrefix(ApptentiveInternal.getInstance().getApplicationContext(), compoundMessage.getNonce(), null);
                String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
                String str2 = generateCacheFilePathFromNonceOrPrefix;
                if (!TextUtils.isEmpty(extensionFromMimeType)) {
                    str2 = generateCacheFilePathFromNonceOrPrefix + "." + extensionFromMimeType;
                }
                StoredFile createLocalStoredFile = Util.createLocalStoredFile(inputStream, str2, str2, str);
                if (createLocalStoredFile == null) {
                    return false;
                }
                createLocalStoredFile.setId(compoundMessage.getNonce());
                arrayList.add(createLocalStoredFile);
                compoundMessage.setAssociatedFiles(arrayList);
                conversation.getMessageManager().sendMessage(compoundMessage);
                return true;
            }
        }, "add unread message listener");
    }

    public static void setPersonEmail(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().getConversationProxy().setPersonEmail(str);
                return true;
            }
        }, "set person email");
    }

    public static void setPersonName(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.2
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().getConversationProxy().setPersonName(str);
                return true;
            }
        }, "set person name");
    }
}

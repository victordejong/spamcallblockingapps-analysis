package com.google.firebase.messaging;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirelogAnalyticsEvent.class */
public final class FirelogAnalyticsEvent {
    private final String eventType;
    private final Intent intent;

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventEncoder.class */
    static class FirelogAnalyticsEventEncoder implements ObjectEncoder<FirelogAnalyticsEvent> {
        public void encode(FirelogAnalyticsEvent firelogAnalyticsEvent, ObjectEncoderContext objectEncoderContext) throws EncodingException, IOException {
            Intent intent = firelogAnalyticsEvent.getIntent();
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_TTL, MessagingAnalytics.getTtl(intent));
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_EVENT, firelogAnalyticsEvent.getEventType());
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_INSTANCE_ID, MessagingAnalytics.getInstanceId());
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_PRIORITY, MessagingAnalytics.getPriority(intent));
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_PACKAGE_NAME, MessagingAnalytics.getPackageName());
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_SDK_PLATFORM, Constants.FirelogAnalytics.SDK_PLATFORM_ANDROID);
            objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_MESSAGE_TYPE, MessagingAnalytics.getMessageTypeForFirelog(intent));
            String messageId = MessagingAnalytics.getMessageId(intent);
            if (messageId != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_MESSAGE_ID, messageId);
            }
            String topic = MessagingAnalytics.getTopic(intent);
            if (topic != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_TOPIC, topic);
            }
            String collapseKey = MessagingAnalytics.getCollapseKey(intent);
            if (collapseKey != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_COLLAPSE_KEY, collapseKey);
            }
            if (MessagingAnalytics.getMessageLabel(intent) != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_ANALYTICS_LABEL, MessagingAnalytics.getMessageLabel(intent));
            }
            if (MessagingAnalytics.getComposerLabel(intent) != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_COMPOSER_LABEL, MessagingAnalytics.getComposerLabel(intent));
            }
            String projectNumber = MessagingAnalytics.getProjectNumber();
            if (projectNumber != null) {
                objectEncoderContext.add(Constants.FirelogAnalytics.PARAM_PROJECT_NUMBER, projectNumber);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapper.class */
    public static final class FirelogAnalyticsEventWrapper {
        private final FirelogAnalyticsEvent firelogAnalyticsEvent;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FirelogAnalyticsEventWrapper(@NonNull FirelogAnalyticsEvent firelogAnalyticsEvent) {
            Preconditions.m14523k(firelogAnalyticsEvent);
            this.firelogAnalyticsEvent = firelogAnalyticsEvent;
        }

        @NonNull
        final FirelogAnalyticsEvent getFirelogAnalyticsEvent() {
            return this.firelogAnalyticsEvent;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapperEncoder.class */
    static final class FirelogAnalyticsEventWrapperEncoder implements ObjectEncoder<FirelogAnalyticsEventWrapper> {
        public final void encode(FirelogAnalyticsEventWrapper firelogAnalyticsEventWrapper, ObjectEncoderContext objectEncoderContext) throws EncodingException, IOException {
            objectEncoderContext.add("messaging_client_event", firelogAnalyticsEventWrapper.getFirelogAnalyticsEvent());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirelogAnalyticsEvent(@NonNull String str, @NonNull Intent intent) {
        Preconditions.m14526h(str, "evenType must be non-null");
        this.eventType = str;
        Preconditions.m14522l(intent, "intent must be non-null");
        this.intent = intent;
    }

    @NonNull
    final String getEventType() {
        return this.eventType;
    }

    @NonNull
    final Intent getIntent() {
        return this.intent;
    }
}

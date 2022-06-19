package com.freshchat.consumer.sdk.beans.config;

import com.freshchat.consumer.sdk.beans.UserEventsConfig;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/config/DefaultUserEventsConfig.class */
public class DefaultUserEventsConfig extends UserEventsConfig {
    public static final long MAX_ALLOWED_PER_DAY = 50;
    public static final long MAX_ALLOWED_PROPERTIES_PER_EVENT = 20;
    public static final int MAX_CHARACTERS_PER_EVENT_NAME = 32;
    public static final int MAX_CHARACTERS_PER_EVENT_PROPERTY_NAME = 32;
    public static final int MAX_CHARACTERS_PER_EVENT_PROPERTY_VALUE = 256;
    public static final long MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD = 15000;
    public static final long MAX_EVENTS_PER_BATCH = 10;
    public static final long TRIGGER_UPLOAD_ON_EVENTS_COUNT = 5;

    public DefaultUserEventsConfig() {
        setMaxAllowedEventsPerDay(50L);
        setMaxDelayInMillisUntilUpload(MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
        setMaxEventsPerBatch(10L);
        setMaxAllowedPropertiesPerEvent(20L);
        setTriggerUploadOnEventsCount(5L);
        setMaxCharsPerEventName(32);
        setMaxCharsPerEventPropertyName(32);
        setMaxCharsPerEventPropertyValue(256);
    }
}

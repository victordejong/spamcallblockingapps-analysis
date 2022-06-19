package com.airbnb.deeplinkdispatch;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLinkHandler.class */
public @interface DeepLinkHandler {
    public static final String ACTION = "com.airbnb.deeplinkdispatch.DEEPLINK_ACTION";
    public static final String EXTRA_ERROR_MESSAGE = "com.airbnb.deeplinkdispatch.EXTRA_ERROR_MESSAGE";
    public static final String EXTRA_SUCCESSFUL = "com.airbnb.deeplinkdispatch.EXTRA_SUCCESSFUL";
    public static final String EXTRA_URI = "com.airbnb.deeplinkdispatch.EXTRA_URI";
    public static final String EXTRA_URI_TEMPLATE = "com.airbnb.deeplinkdispatch.EXTRA_URI_TEMPLATE";

    Class<?>[] value();
}

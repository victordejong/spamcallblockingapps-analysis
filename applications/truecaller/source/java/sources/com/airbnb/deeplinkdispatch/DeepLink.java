package com.airbnb.deeplinkdispatch;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/DeepLink.class */
public @interface DeepLink {
    public static final String IS_DEEP_LINK = "is_deep_link_flag";
    public static final String REFERRER_URI = "android.intent.extra.REFERRER";
    public static final String URI = "deep_link_uri";

    String[] value();
}

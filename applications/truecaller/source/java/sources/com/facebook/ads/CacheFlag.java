package com.facebook.ads;

import androidx.annotation.Keep;
import java.util.EnumSet;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/CacheFlag.class */
public enum CacheFlag {
    NONE,
    ICON,
    IMAGE,
    VIDEO;
    
    public static final EnumSet<CacheFlag> ALL = EnumSet.allOf(CacheFlag.class);
}

package com.facebook.ads;

import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/CacheFlag.class */
public enum CacheFlag {
    NONE,
    ICON,
    IMAGE,
    VIDEO;
    
    public static final EnumSet<CacheFlag> ALL = EnumSet.allOf(CacheFlag.class);
}

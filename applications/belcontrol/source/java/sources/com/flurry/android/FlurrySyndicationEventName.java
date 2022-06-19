package com.flurry.android;
/* loaded from: classes-dex2jar.jar:com/flurry/android/FlurrySyndicationEventName.class */
public enum FlurrySyndicationEventName {
    REBLOG("Reblog"),
    FAST_REBLOG("FastReblog"),
    SOURCE_LINK("SourceClick"),
    LIKE("Like");
    

    /* renamed from: a */
    private String f3180a;

    FlurrySyndicationEventName(String str) {
        this.f3180a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f3180a;
    }
}

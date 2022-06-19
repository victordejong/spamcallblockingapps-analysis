package com.mopub.mraid;
/* renamed from: com.mopub.mraid.b */
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/b.class */
enum EnumC16906b {
    PORTRAIT(1),
    LANDSCAPE(0),
    NONE(-1);
    
    private final int mActivityInfoOrientation;

    EnumC16906b(int i) {
        this.mActivityInfoOrientation = i;
    }

    public final int getActivityInfoOrientation() {
        return this.mActivityInfoOrientation;
    }
}

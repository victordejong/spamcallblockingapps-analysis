package com.mopub.mraid;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/b.class */
enum b {
    PORTRAIT(1),
    LANDSCAPE(0),
    NONE(-1);
    
    private final int mActivityInfoOrientation;

    b(int i) {
        this.mActivityInfoOrientation = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int getActivityInfoOrientation() {
        return this.mActivityInfoOrientation;
    }
}

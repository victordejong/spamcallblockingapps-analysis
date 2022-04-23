package com.mopub.mraid;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidOrientation.class */
public enum MraidOrientation {
    PORTRAIT(1),
    LANDSCAPE(0),
    NONE(-1);
    
    public final int mActivityInfoOrientation;

    MraidOrientation(int i) {
        this.mActivityInfoOrientation = i;
    }

    public int getActivityInfoOrientation() {
        return this.mActivityInfoOrientation;
    }
}

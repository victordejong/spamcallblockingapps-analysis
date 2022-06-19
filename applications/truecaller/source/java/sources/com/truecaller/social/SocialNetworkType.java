package com.truecaller.social;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social/SocialNetworkType.class */
public enum SocialNetworkType {
    FACEBOOK(C4473R.string.SocialNetworkFacebook, C4473R.color.social_network_facebook, C4473R.C4474drawable.ic_facebook, C4473R.C4474drawable.social_network_facebook),
    GOOGLE(C4473R.string.SocialNetworkGoogle, C4473R.color.social_network_google, C4473R.C4474drawable.ic_google, C4473R.C4474drawable.social_network_google);
    
    private final int mBackground;
    private final int mColor;
    private final int mIcon;
    private final int mName;

    SocialNetworkType(int i, int i2, int i3, int i4) {
        this.mName = i;
        this.mColor = i2;
        this.mIcon = i3;
        this.mBackground = i4;
    }

    public int getBackground() {
        return this.mBackground;
    }

    public int getColor() {
        return this.mColor;
    }

    public int getIcon() {
        return this.mIcon;
    }

    public int getName() {
        return this.mName;
    }
}

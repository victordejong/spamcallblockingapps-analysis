package com.truecaller.social;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.Fragment;
import p193e.p194a.p434b5.AbstractC8645b;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social/SocialNetworkProvider.class */
public abstract class SocialNetworkProvider {
    public boolean isSupported(Context context) {
        return true;
    }

    public abstract AbstractC8645b network(Activity activity, Fragment fragment);

    public abstract SocialNetworkType type();
}

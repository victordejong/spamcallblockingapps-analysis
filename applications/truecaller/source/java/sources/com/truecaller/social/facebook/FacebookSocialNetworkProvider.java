package com.truecaller.social.facebook;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.truecaller.social.SocialNetworkProvider;
import com.truecaller.social.SocialNetworkType;
import p193e.p194a.p434b5.AbstractC8645b;
import p193e.p194a.p434b5.p435g.C8653a;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social/facebook/FacebookSocialNetworkProvider.class */
public class FacebookSocialNetworkProvider extends SocialNetworkProvider {
    @Override // com.truecaller.social.SocialNetworkProvider
    public AbstractC8645b network(Activity activity, Fragment fragment) {
        return new C8653a(activity, fragment);
    }

    @Override // com.truecaller.social.SocialNetworkProvider
    public SocialNetworkType type() {
        return SocialNetworkType.FACEBOOK;
    }
}

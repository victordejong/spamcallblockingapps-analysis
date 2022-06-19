package com.iab.omid.library.mopub.adsession;

import android.support.annotation.Nullable;
import android.view.View;
import com.iab.omid.library.mopub.p127d.C2618e;
import com.iab.omid.library.mopub.publisher.AdSessionStatePublisher;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/adsession/AdSession.class */
public abstract class AdSession {
    public static AdSession createAdSession(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        C2618e.m36401a();
        C2618e.m36398a(adSessionConfiguration, "AdSessionConfiguration is null");
        C2618e.m36398a(adSessionContext, "AdSessionContext is null");
        return new a(adSessionConfiguration, adSessionContext);
    }

    public abstract void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str);

    public abstract void error(ErrorType errorType, String str);

    public abstract void finish();

    public abstract String getAdSessionId();

    public abstract AdSessionStatePublisher getAdSessionStatePublisher();

    public abstract void registerAdView(View view);

    public abstract void removeAllFriendlyObstructions();

    public abstract void removeFriendlyObstruction(View view);

    public abstract void start();
}

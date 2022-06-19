package com.iab.omid.library.pubmatic.adsession;

import android.view.View;
import com.iab.omid.library.pubmatic.p014d.C1774e;
import com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher;
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/AdSession.class */
public abstract class AdSession {
    public static AdSession createAdSession(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        C1774e.m1225a();
        C1774e.m1222a(adSessionConfiguration, "AdSessionConfiguration is null");
        C1774e.m1222a(adSessionContext, "AdSessionContext is null");
        return new C1753a(adSessionConfiguration, adSessionContext);
    }

    public abstract void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void error(ErrorType errorType, String str);

    public abstract void finish();

    public abstract String getAdSessionId();

    public abstract AdSessionStatePublisher getAdSessionStatePublisher();

    public abstract void registerAdView(View view);

    public abstract void removeAllFriendlyObstructions();

    public abstract void removeFriendlyObstruction(View view);

    public abstract void start();
}

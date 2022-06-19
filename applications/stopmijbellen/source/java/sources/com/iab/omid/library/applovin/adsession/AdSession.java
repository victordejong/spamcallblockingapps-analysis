package com.iab.omid.library.applovin.adsession;

import android.view.View;
import com.iab.omid.library.applovin.p062d.C1950e;
import com.iab.omid.library.applovin.publisher.AdSessionStatePublisher;
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/AdSession.class */
public abstract class AdSession {
    public static AdSession createAdSession(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        C1950e.m4086a();
        C1950e.m4083a(adSessionConfiguration, "AdSessionConfiguration is null");
        C1950e.m4083a(adSessionContext, "AdSessionContext is null");
        return new C1929a(adSessionConfiguration, adSessionContext);
    }

    public abstract void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void error(ErrorType errorType, String str);

    public abstract void finish();

    public abstract String getAdSessionId();

    public abstract AdSessionStatePublisher getAdSessionStatePublisher();

    public abstract void registerAdView(View view);

    public abstract void removeAllFriendlyObstructions();

    public abstract void removeFriendlyObstruction(View view);

    public abstract void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener);

    public abstract void start();
}

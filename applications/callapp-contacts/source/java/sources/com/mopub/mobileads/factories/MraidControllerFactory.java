package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a */
    protected static MraidControllerFactory f59699a = new MraidControllerFactory();

    public static MraidController create(Context context, String str, PlacementType placementType, boolean z) {
        return new MraidController(context, str, placementType, z);
    }

    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f59699a = mraidControllerFactory;
    }
}

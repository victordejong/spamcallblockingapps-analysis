package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MraidControllerFactory f34401a = new MraidControllerFactory();

    public static MraidController create(Context context, String str, PlacementType placementType, boolean z) {
        return new MraidController(context, str, placementType, z);
    }

    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f34401a = mraidControllerFactory;
    }
}

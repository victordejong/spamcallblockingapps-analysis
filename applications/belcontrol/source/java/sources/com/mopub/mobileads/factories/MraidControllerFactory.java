package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a */
    public static MraidControllerFactory f5001a = new MraidControllerFactory();

    public static MraidController create(Context context, String str, PlacementType placementType, boolean z) {
        return f5001a.m3497a(context, str, placementType, z);
    }

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f5001a = mraidControllerFactory;
    }

    /* renamed from: a */
    public MraidController m3497a(Context context, String str, PlacementType placementType, boolean z) {
        return new MraidController(context, str, placementType, z);
    }
}

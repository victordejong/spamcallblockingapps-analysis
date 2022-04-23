package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a */
    public static MraidControllerFactory f34507a = new MraidControllerFactory();

    public static MraidController create(Context context, AdReport adReport, PlacementType placementType) {
        return f34507a.m4138a(context, adReport, placementType);
    }

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f34507a = mraidControllerFactory;
    }

    /* renamed from: a */
    public MraidController m4138a(Context context, AdReport adReport, PlacementType placementType) {
        return new MraidController(context, adReport, placementType);
    }
}

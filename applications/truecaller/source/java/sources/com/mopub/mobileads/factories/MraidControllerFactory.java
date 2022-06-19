package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a */
    public static MraidControllerFactory f9003a = new MraidControllerFactory();

    public static MraidController create(Context context, String str, PlacementType placementType, boolean z) {
        Objects.requireNonNull(f9003a);
        return new MraidController(context, str, placementType, z);
    }

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f9003a = mraidControllerFactory;
    }
}

package com.mopub.mobileads.factories;

import android.content.Context;
import androidx.annotation.NonNull;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/MraidControllerFactory.class */
public class MraidControllerFactory {

    /* renamed from: a */
    public static MraidControllerFactory f8848a = new MraidControllerFactory();

    public static MraidController create(@NonNull Context context, @NonNull AdReport adReport, @NonNull PlacementType placementType) {
        return f8848a.m30344a(context, adReport, placementType);
    }

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory mraidControllerFactory) {
        f8848a = mraidControllerFactory;
    }

    /* renamed from: a */
    public MraidController m30344a(@NonNull Context context, @NonNull AdReport adReport, @NonNull PlacementType placementType) {
        return new MraidController(context, adReport, placementType);
    }
}

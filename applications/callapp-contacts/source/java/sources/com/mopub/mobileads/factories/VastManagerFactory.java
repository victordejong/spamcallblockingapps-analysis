package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastManager;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/VastManagerFactory.class */
public class VastManagerFactory {

    /* renamed from: a */
    protected static VastManagerFactory f59700a = new VastManagerFactory();

    public static VastManager create(Context context) {
        Preconditions.checkNotNull(context, "context cannot be null");
        return f59700a.internalCreate(context, true);
    }

    public static VastManager create(Context context, boolean z) {
        Preconditions.checkNotNull(context, "context cannot be null");
        return f59700a.internalCreate(context, z);
    }

    @Deprecated
    public static void setInstance(VastManagerFactory vastManagerFactory) {
        f59700a = vastManagerFactory;
    }

    public VastManager internalCreate(Context context, boolean z) {
        Preconditions.checkNotNull(context, "context cannot be null");
        return new VastManager(context, z);
    }
}

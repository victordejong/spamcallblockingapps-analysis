package com.privacystar.core.feature;

import com.privacystar.core.data.sqlite.RealmConverter;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0096D¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/feature/FeatureManagerImpl;", "Lcom/privacystar/core/feature/FeatureManager;", "()V", "callCenter", "", "getCallCenter", "()Z", RealmConverter.GROUP_BLOCKING_TABLE, "getGroupBlocking", "neighborHoodSpoofing", "getNeighborHoodSpoofing", "unknownBlocking", "getUnknownBlocking", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/feature/FeatureManagerImpl.class */
public final class FeatureManagerImpl implements FeatureManager {
    public static final FeatureManagerImpl INSTANCE = new FeatureManagerImpl();
    private static final boolean callCenter = true;
    private static final boolean groupBlocking = true;
    private static final boolean neighborHoodSpoofing = true;
    private static final boolean unknownBlocking = true;

    private FeatureManagerImpl() {
    }

    @Override // com.privacystar.core.feature.FeatureManager
    public boolean getCallCenter() {
        return callCenter;
    }

    @Override // com.privacystar.core.feature.FeatureManager
    public boolean getGroupBlocking() {
        return groupBlocking;
    }

    @Override // com.privacystar.core.feature.FeatureManager
    public boolean getNeighborHoodSpoofing() {
        return neighborHoodSpoofing;
    }

    @Override // com.privacystar.core.feature.FeatureManager
    public boolean getUnknownBlocking() {
        return unknownBlocking;
    }
}

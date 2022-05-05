package com.privacystar.core.feature;

import com.privacystar.core.data.sqlite.RealmConverter;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\t\bf\u0018��2\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0012\u0010\b\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0005R\u0012\u0010\n\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0005¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/feature/FeatureManager;", "", "callCenter", "", "getCallCenter", "()Z", RealmConverter.GROUP_BLOCKING_TABLE, "getGroupBlocking", "neighborHoodSpoofing", "getNeighborHoodSpoofing", "unknownBlocking", "getUnknownBlocking", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/feature/FeatureManager.class */
public interface FeatureManager {
    boolean getCallCenter();

    boolean getGroupBlocking();

    boolean getNeighborHoodSpoofing();

    boolean getUnknownBlocking();
}

package com.privacystar.core.util;

import com.privacystar.core.util.NotificationUtilContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/util/NotificationUtilManagerImpl;", "Lcom/privacystar/core/util/NotificationUtilContract$Manager;", "()V", "shouldShowCallTimeInTimeFormat", "", "shouldShowOffenderIconForPostCall", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NotificationUtilManagerImpl.class */
public final class NotificationUtilManagerImpl implements NotificationUtilContract.Manager {
    public static final NotificationUtilManagerImpl INSTANCE = new NotificationUtilManagerImpl();

    private NotificationUtilManagerImpl() {
    }

    @Override // com.privacystar.core.util.NotificationUtilContract.Manager
    public boolean shouldShowCallTimeInTimeFormat() {
        return true;
    }

    @Override // com.privacystar.core.util.NotificationUtilContract.Manager
    public boolean shouldShowOffenderIconForPostCall() {
        return false;
    }
}

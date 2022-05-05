package com.privacystar.core.p011ui.detail_view;

import com.privacystar.core.p011ui.detail_view.DetailActivityContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/DetailActivityManagerImpl;", "Lcom/privacystar/core/ui/detail_view/DetailActivityContract$Manager;", "()V", "shouldShowBadgeIcons", "", "shouldShowEditButton", "shouldShowPaywall", "shouldUseAdvancedDashboard", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.DetailActivityManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivityManagerImpl.class */
public final class DetailActivityManagerImpl implements DetailActivityContract.Manager {
    public static final DetailActivityManagerImpl INSTANCE = new DetailActivityManagerImpl();

    private DetailActivityManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.Manager
    public boolean shouldShowBadgeIcons() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.inbox.InboxContract.Manager
    public boolean shouldShowEditButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivityContract.Manager
    public boolean shouldShowPaywall() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivityContract.Manager
    public boolean shouldUseAdvancedDashboard() {
        return true;
    }
}

package com.privacystar.core.p011ui.detail_view;

import com.privacystar.core.p011ui.detail_view.inbox.InboxContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/DetailActivityContract;", "", "()V", "Manager", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.DetailActivityContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivityContract.class */
public final class DetailActivityContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/DetailActivityContract$Manager;", "Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$Manager;", "shouldShowPaywall", "", "shouldUseAdvancedDashboard", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.DetailActivityContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/DetailActivityContract$Manager.class */
    public interface Manager extends InboxContract.Manager {
        boolean shouldShowPaywall();

        boolean shouldUseAdvancedDashboard();
    }
}

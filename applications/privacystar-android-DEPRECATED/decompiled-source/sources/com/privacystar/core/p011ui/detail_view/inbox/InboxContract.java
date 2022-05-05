package com.privacystar.core.p011ui.detail_view.inbox;

import com.privacystar.core.util.CampaignUtil;
import io.realm.Realm;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxContract;", "", "()V", "Manager", "View", "ViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxContract.class */
public final class InboxContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$Manager;", "", "shouldShowBadgeIcons", "", "shouldShowEditButton", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxContract$Manager.class */
    public interface Manager {
        boolean shouldShowBadgeIcons();

        boolean shouldShowEditButton();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000bH&J\b\u0010\u000e\u001a\u00020\u0005H&J\b\u0010\u000f\u001a\u00020\u0005H&J\b\u0010\u0010\u001a\u00020\u0005H&J\b\u0010\u0011\u001a\u00020\u0005H&J\b\u0010\u0012\u001a\u00020\u0005H&¨\u0006\u0013"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$View;", "", "getRealmTemp", "Lio/realm/Realm;", "launchMessage", "", "template", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "notifyAdapterOnUiThread", "setEditButtonStatus", "editing", "", "setupContent", "contentExists", "setupRecyclerView", "setupToolbar", "setupToolbarWithMenu", "setupView", "showRateDialog", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxContract$View.class */
    public interface View {
        @NotNull
        Realm getRealmTemp();

        void launchMessage(@NotNull CampaignUtil.CampaignTemplate campaignTemplate);

        void notifyAdapterOnUiThread();

        void setEditButtonStatus(boolean z);

        void setupContent(boolean z);

        void setupRecyclerView();

        void setupToolbar();

        void setupToolbarWithMenu();

        void setupView();

        void showRateDialog();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH&¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$ViewHolder;", "", "setMessage", "", "batchId", "", "setSubtitle", "subtitleText", "setTitle", "titleText", "toggleReadIcon", "read", "", "editing", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxContract$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxContract$ViewHolder.class */
    public interface ViewHolder {
        void setMessage(@NotNull String str);

        void setSubtitle(@NotNull String str);

        void setTitle(@NotNull String str);

        void toggleReadIcon(boolean z, boolean z2);
    }
}

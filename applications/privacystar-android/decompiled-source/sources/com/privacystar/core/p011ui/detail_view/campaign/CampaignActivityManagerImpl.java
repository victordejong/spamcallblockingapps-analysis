package com.privacystar.core.p011ui.detail_view.campaign;

import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.campaign.CampaignContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignActivityManagerImpl;", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignActivityManager;", "()V", "getDefaultImage", "", "shouldShowOverflowMenu", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignActivityManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignActivityManagerImpl.class */
public final class CampaignActivityManagerImpl implements CampaignContract.CampaignActivityManager {
    public static final CampaignActivityManagerImpl INSTANCE = new CampaignActivityManagerImpl();

    private CampaignActivityManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignActivityManager
    public int getDefaultImage() {
        return C1566R.C1568drawable.app_logo;
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignActivityManager
    public boolean shouldShowOverflowMenu() {
        return true;
    }
}

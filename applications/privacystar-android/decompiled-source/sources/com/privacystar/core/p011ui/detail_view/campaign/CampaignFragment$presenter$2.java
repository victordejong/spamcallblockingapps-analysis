package com.privacystar.core.p011ui.detail_view.campaign;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignPresenter;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignFragment$presenter$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignFragment$presenter$2.class */
final class CampaignFragment$presenter$2 extends Lambda implements Function0<CampaignPresenter> {
    final /* synthetic */ CampaignFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignFragment$presenter$2(CampaignFragment campaignFragment) {
        super(0);
        this.this$0 = campaignFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final CampaignPresenter invoke() {
        return new CampaignPresenter(new WeakReference(this.this$0), this.this$0.getTemplate());
    }
}

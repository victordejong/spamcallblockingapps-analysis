package com.privacystar.core.p011ui.intro;

import com.privacystar.core.p011ui.detail_view.dashboard.DashboardItem;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardItemRepository;
import io.realm.Realm;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItem;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.DashboardFragment$itemList$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/DashboardFragment$itemList$2.class */
final class DashboardFragment$itemList$2 extends Lambda implements Function0<List<? extends DashboardItem>> {
    final /* synthetic */ DashboardFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DashboardFragment$itemList$2(DashboardFragment dashboardFragment) {
        super(0);
        this.this$0 = dashboardFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final List<? extends DashboardItem> invoke() {
        Realm realm;
        DashboardItemRepository dashboardItemRepository = DashboardItemRepository.INSTANCE;
        realm = this.this$0.getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return dashboardItemRepository.provideDashboardIntroItems(realm);
    }
}

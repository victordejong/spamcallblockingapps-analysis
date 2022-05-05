package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n¢\u0006\u0002\b\u0006"}, m254d2 = {"<anonymous>", "", "it", "Lkotlin/Pair;", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper$getTotalBlocksInMonth$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$getTotalBlocksInMonth$1.class */
public final class AdvancedDashboardHelper$getTotalBlocksInMonth$1 extends Lambda implements Function1<Pair<? extends AdvancedDashboardHelper.MonthYear, ? extends Integer>, Boolean> {
    final /* synthetic */ AdvancedDashboardHelper.MonthYear $monthYear;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdvancedDashboardHelper$getTotalBlocksInMonth$1(AdvancedDashboardHelper.MonthYear monthYear) {
        super(1);
        this.$monthYear = monthYear;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Pair<? extends AdvancedDashboardHelper.MonthYear, ? extends Integer> pair) {
        return Boolean.valueOf(invoke2((Pair<AdvancedDashboardHelper.MonthYear, Integer>) pair));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final boolean invoke2(@NotNull Pair<AdvancedDashboardHelper.MonthYear, Integer> it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return Intrinsics.areEqual(it.getFirst(), this.$monthYear);
    }
}

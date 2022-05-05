package com.privacystar.core.p011ui.report;

import com.privacystar.core.p011ui.report.GenericReportContract;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportScammerStartBuilder$setupView$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportScammerStartBuilder$setupView$1.class */
final class ReportScammerStartBuilder$setupView$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ReportBuilderBundle $data;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportScammerStartBuilder$setupView$1(ReportBuilderBundle reportBuilderBundle) {
        super(0);
        this.$data = reportBuilderBundle;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$data.getListener().onNavigation(GenericReportContract.ReportNavigation.NON_OFFENDER);
    }
}

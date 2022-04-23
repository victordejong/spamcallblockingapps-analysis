package com.privacystar.core.p011ui.report;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "it", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportActivity$setupCurrentReportBuilder$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportActivity$setupCurrentReportBuilder$1.class */
public final class GenericReportActivity$setupCurrentReportBuilder$1 extends Lambda implements Function1<Boolean, Unit> {
    final /* synthetic */ GenericReportActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenericReportActivity$setupCurrentReportBuilder$1(GenericReportActivity genericReportActivity) {
        super(1);
        this.this$0 = genericReportActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(boolean z) {
        if (!z) {
            Timber.m37d("It is false", new Object[0]);
        }
        this.this$0.readyToMoveToNextPage(z);
    }
}

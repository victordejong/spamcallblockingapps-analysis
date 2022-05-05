package com.privacystar.core.p011ui.report;

import com.privacystar.core.p011ui.report.GenericReportContract;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H&J;\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00050\u000eH&¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/report/IReportBuilder;", "", "hasNextPage", "", "onActionButton", "", "setButtonEnabled", "enabled", "setupView", "data", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "actionButtonOption", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "onOptionSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isReady", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.IReportBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/IReportBuilder.class */
public interface IReportBuilder {
    boolean hasNextPage();

    void onActionButton();

    void setButtonEnabled(boolean z);

    void setupView(@NotNull ReportBuilderBundle reportBuilderBundle, @NotNull GenericReportContract.ButtonDisplayOption buttonDisplayOption, @NotNull Function1<? super Boolean, Unit> function1);
}

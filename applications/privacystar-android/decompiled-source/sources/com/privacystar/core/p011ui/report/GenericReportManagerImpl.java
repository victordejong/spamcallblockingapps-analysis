package com.privacystar.core.p011ui.report;

import com.privacystar.core.p011ui.report.GenericReportContract;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportManagerImpl;", "Lcom/privacystar/core/ui/report/GenericReportContract$Manager;", "()V", "buttonOptionIfLastPage", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "buttonOptionIfNotLastPage", "shouldConsiderSMS", "", "shouldDynamicallyEnableDisableButtons", "shouldShowSuccessAsANewPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportManagerImpl.class */
public final class GenericReportManagerImpl implements GenericReportContract.Manager {
    public static final GenericReportManagerImpl INSTANCE = new GenericReportManagerImpl();

    private GenericReportManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.Manager
    @NotNull
    public GenericReportContract.ButtonDisplayOption buttonOptionIfLastPage() {
        return GenericReportContract.ButtonDisplayOption.ACTION_AND_BACK_BUTTON;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.Manager
    @NotNull
    public GenericReportContract.ButtonDisplayOption buttonOptionIfNotLastPage() {
        return GenericReportContract.ButtonDisplayOption.ACTION_BUTTON_ONLY;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.Manager
    public boolean shouldConsiderSMS() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.Manager
    public boolean shouldDynamicallyEnableDisableButtons() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.Manager
    public boolean shouldShowSuccessAsANewPage() {
        return true;
    }
}

package com.privacystar.core.p011ui.report;

import android.support.p004v7.widget.AppCompatEditText;
import android.text.Editable;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.report.GenericReportContract;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\nH\u0016J;\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\f0\u0014H\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004X\u0082.¢\u0006\u0002\n��R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u0018"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportDebtConsentBuilder;", "Lcom/privacystar/core/ui/report/IReportBuilder;", "()V", "bundle", "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "emailField", "Landroid/support/v7/widget/AppCompatEditText;", "nameField", "hasNextPage", "", "onActionButton", "", "setButtonEnabled", "enabled", "setupView", "data", "actionButtonOption", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "onOptionSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isReady", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportDebtConsentBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportDebtConsentBuilder.class */
public final class ReportDebtConsentBuilder implements IReportBuilder {
    public static final ReportDebtConsentBuilder INSTANCE = new ReportDebtConsentBuilder();
    private static WeakReference<ReportBuilderBundle> bundle;
    private static WeakReference<AppCompatEditText> emailField;
    private static WeakReference<AppCompatEditText> nameField;

    private ReportDebtConsentBuilder() {
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public boolean hasNextPage() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void onActionButton() {
        WeakReference<ReportBuilderBundle> weakReference = bundle;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bundle");
        }
        ReportBuilderBundle reportBuilderBundle = weakReference.get();
        if (reportBuilderBundle != null) {
            HashMap<Integer, String> reportItems = reportBuilderBundle.getReportItems();
            WeakReference<AppCompatEditText> weakReference2 = nameField;
            if (weakReference2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nameField");
            }
            AppCompatEditText appCompatEditText = weakReference2.get();
            Editable editable = null;
            reportItems.put(34, String.valueOf(appCompatEditText != null ? appCompatEditText.getText() : null));
            HashMap<Integer, String> reportItems2 = reportBuilderBundle.getReportItems();
            WeakReference<AppCompatEditText> weakReference3 = emailField;
            if (weakReference3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("emailField");
            }
            AppCompatEditText appCompatEditText2 = weakReference3.get();
            if (appCompatEditText2 != null) {
                editable = appCompatEditText2.getText();
            }
            reportItems2.put(33, String.valueOf(editable));
            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.THANK_YOU);
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setButtonEnabled(boolean z) {
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setupView(@NotNull ReportBuilderBundle data, @NotNull GenericReportContract.ButtonDisplayOption actionButtonOption, @NotNull Function1<? super Boolean, Unit> onOptionSelectedListener) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(actionButtonOption, "actionButtonOption");
        Intrinsics.checkParameterIsNotNull(onOptionSelectedListener, "onOptionSelectedListener");
        bundle = new WeakReference<>(data);
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_consent_title_1, data.getContext());
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_consent_title_2, data.getContext());
        AppCompatEditText addEditText = ReportFormItemCreators.INSTANCE.addEditText(data.getContext(), C1566R.string.report_consent_name_field_hint, data.getReportContainer(), 36);
        AppCompatEditText addEditText2 = ReportFormItemCreators.INSTANCE.addEditText(data.getContext(), C1566R.string.report_consent_email_field_hint, data.getReportContainer(), 36);
        nameField = new WeakReference<>(addEditText);
        emailField = new WeakReference<>(addEditText2);
        if (actionButtonOption != GenericReportContract.ButtonDisplayOption.BUTTON_ON_TOOLBAR) {
            ReportFormItemCreators.INSTANCE.addFinishButton(data.getReportContainer(), data.getContext(), ReportDebtConsentBuilder$setupView$1.INSTANCE);
        }
    }
}

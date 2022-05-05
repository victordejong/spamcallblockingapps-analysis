package com.privacystar.core.p011ui.report;

import android.content.Context;
import android.content.DialogInterface;
import android.support.p004v7.app.AlertDialog;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.report.GenericReportContract;
import com.privacystar.core.service.PreferenceService;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J;\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00110\u0019H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.¢\u0006\u0002\n��R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\tX\u0082.¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082.¢\u0006\u0002\n��¨\u0006\u001d"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportNonOffenderBuilder;", "Lcom/privacystar/core/ui/report/IReportBuilder;", "()V", "SHARED_PREF", "", "bundle", "Ljava/lang/ref/SoftReference;", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "radioChoices", "", "[Ljava/lang/String;", "radioGroup", "Ljava/lang/ref/WeakReference;", "Landroid/widget/RadioGroup;", "hasNextPage", "", "onActionButton", "", "setButtonEnabled", "enabled", "setupView", "data", "actionButtonOption", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "onOptionSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isReady", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportNonOffenderBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportNonOffenderBuilder.class */
public final class ReportNonOffenderBuilder implements IReportBuilder {
    public static final ReportNonOffenderBuilder INSTANCE = new ReportNonOffenderBuilder();
    private static final String SHARED_PREF = "report_non_offender_pref";
    private static SoftReference<ReportBuilderBundle> bundle;
    private static String[] radioChoices;
    private static WeakReference<RadioGroup> radioGroup;

    private ReportNonOffenderBuilder() {
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public boolean hasNextPage() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void onActionButton() {
        SoftReference<ReportBuilderBundle> softReference = bundle;
        if (softReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bundle");
        }
        ReportBuilderBundle reportBuilderBundle = softReference.get();
        if (reportBuilderBundle != null) {
            WeakReference<RadioGroup> weakReference = radioGroup;
            if (weakReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("radioGroup");
            }
            RadioGroup rg = weakReference.get();
            if (rg != null) {
                Intrinsics.checkExpressionValueIsNotNull(rg, "rg");
                if (rg.getCheckedRadioButtonId() != -1) {
                    int indexOfChild = rg.indexOfChild(reportBuilderBundle.getReportContainer().findViewById(rg.getCheckedRadioButtonId()));
                    String[] strArr = radioChoices;
                    if (strArr == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("radioChoices");
                    }
                    String str = strArr[indexOfChild];
                    Timber.m28v("User selected: [%s]", str);
                    reportBuilderBundle.getReportItems().put(2, str);
                    PreferenceService.putInt(SHARED_PREF, indexOfChild);
                    switch (indexOfChild) {
                        case 0:
                            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.DEBT_COLLECTOR_START);
                            return;
                        case 1:
                            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.TELEMARKETER_START);
                            return;
                        case 2:
                            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.SCAMMER_START);
                            return;
                        default:
                            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.TELEMARKETER_START);
                            return;
                    }
                } else {
                    new AlertDialog.Builder(reportBuilderBundle.getContext(), C1566R.C1574style.AlertDialogStyle).setMessage(C1566R.string.report_dialog_needs_more_info).setNeutralButton(C1566R.string.general_text_okay, (DialogInterface.OnClickListener) null).show();
                }
            }
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setButtonEnabled(boolean z) {
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setupView(@NotNull ReportBuilderBundle data, @NotNull GenericReportContract.ButtonDisplayOption actionButtonOption, @NotNull final Function1<? super Boolean, Unit> onOptionSelectedListener) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(actionButtonOption, "actionButtonOption");
        Intrinsics.checkParameterIsNotNull(onOptionSelectedListener, "onOptionSelectedListener");
        bundle = new SoftReference<>(data);
        String[] stringArray = data.getContext().getResources().getStringArray(C1566R.array.report_non_offender_question_options);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "data.context.resources.g…ffender_question_options)");
        radioChoices = stringArray;
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_non_offender_question, data.getContext());
        ReportFormItemCreators reportFormItemCreators = ReportFormItemCreators.INSTANCE;
        Context context = data.getContext();
        ViewGroup reportContainer = data.getReportContainer();
        String[] strArr = radioChoices;
        if (strArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("radioChoices");
        }
        RadioGroup addRadioGroup = reportFormItemCreators.addRadioGroup(context, reportContainer, strArr, data.getColorStateList());
        radioGroup = new WeakReference<>(addRadioGroup);
        addRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.report.ReportNonOffenderBuilder$setupView$1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                Function1.this.invoke(true);
            }
        });
        if (data.getLoadSaved()) {
            ReportFormItemCreators.INSTANCE.checkRadioButtonAtIndex(addRadioGroup, PreferenceService.getInt(SHARED_PREF, -1));
        }
        if (actionButtonOption != GenericReportContract.ButtonDisplayOption.BUTTON_ON_TOOLBAR) {
            ReportFormItemCreators.INSTANCE.addNextButton(data.getReportContainer(), data.getContext(), ReportNonOffenderBuilder$setupView$2.INSTANCE);
        }
    }
}

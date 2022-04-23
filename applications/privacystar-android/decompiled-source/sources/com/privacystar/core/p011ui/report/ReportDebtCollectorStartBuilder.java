package com.privacystar.core.p011ui.report;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.CardView;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.report.GenericReportContract;
import com.privacystar.core.service.PreferenceService;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J;\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u00140\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.¢\u0006\u0002\n��R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\tX\u0082.¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0006X\u0082.¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006X\u0082.¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006X\u0082.¢\u0006\u0002\n��¨\u0006 "}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportDebtCollectorStartBuilder;", "Lcom/privacystar/core/ui/report/IReportBuilder;", "()V", "SHARED_PREF", "", "bundle", "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "radioChoices", "", "[Ljava/lang/String;", "radioGroup", "Landroid/widget/RadioGroup;", "submitButton", "Landroid/support/v7/widget/CardView;", "submitNextButton", "Landroid/widget/Button;", "hasNextPage", "", "onActionButton", "", "setButtonEnabled", "enabled", "setupView", "data", "actionButtonOption", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "onOptionSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isReady", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportDebtCollectorStartBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportDebtCollectorStartBuilder.class */
public final class ReportDebtCollectorStartBuilder implements IReportBuilder {
    public static final ReportDebtCollectorStartBuilder INSTANCE = new ReportDebtCollectorStartBuilder();
    private static final String SHARED_PREF = "report_text_shared_pref";
    private static WeakReference<ReportBuilderBundle> bundle;
    private static String[] radioChoices;
    private static WeakReference<RadioGroup> radioGroup;
    private static WeakReference<CardView> submitButton;
    private static WeakReference<Button> submitNextButton;

    private ReportDebtCollectorStartBuilder() {
    }

    @NotNull
    public static final /* synthetic */ WeakReference access$getSubmitButton$p(ReportDebtCollectorStartBuilder reportDebtCollectorStartBuilder) {
        WeakReference<CardView> weakReference = submitButton;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
        }
        return weakReference;
    }

    @NotNull
    public static final /* synthetic */ WeakReference access$getSubmitNextButton$p(ReportDebtCollectorStartBuilder reportDebtCollectorStartBuilder) {
        WeakReference<Button> weakReference = submitNextButton;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
        }
        return weakReference;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public boolean hasNextPage() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void onActionButton() {
        WeakReference<ReportBuilderBundle> weakReference = bundle;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bundle");
        }
        ReportBuilderBundle reportBuilderBundle = weakReference.get();
        if (reportBuilderBundle != null) {
            WeakReference<RadioGroup> weakReference2 = radioGroup;
            if (weakReference2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("radioGroup");
            }
            RadioGroup rg = weakReference2.get();
            if (rg != null) {
                Intrinsics.checkExpressionValueIsNotNull(rg, "rg");
                if (rg.getCheckedRadioButtonId() != -1) {
                    int indexOfChild = rg.indexOfChild(reportBuilderBundle.getReportContainer().findViewById(rg.getCheckedRadioButtonId()));
                    String[] strArr = radioChoices;
                    if (strArr == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("radioChoices");
                    }
                    String str = strArr[indexOfChild];
                    PreferenceService.putInt(SHARED_PREF, indexOfChild);
                    Timber.m28v("User selected: [%s]", str);
                    ReportFormItemCreators.INSTANCE.determineReportItems(rg, reportBuilderBundle.getReportItems(), reportBuilderBundle.getQuestionMap());
                    reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.DEBT_MIDDLE);
                    return;
                }
                new AlertDialog.Builder(reportBuilderBundle.getContext(), C1566R.C1574style.AlertDialogStyle).setMessage(C1566R.string.report_dialog_needs_more_info).setNeutralButton(C1566R.string.general_text_okay, (DialogInterface.OnClickListener) null).show();
            }
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setButtonEnabled(boolean z) {
        if (submitButton != null) {
            Context context = null;
            Context context2 = null;
            if (z) {
                WeakReference<CardView> weakReference = submitButton;
                if (weakReference == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                }
                CardView cardView = weakReference.get();
                if (cardView != null) {
                    WeakReference<ReportBuilderBundle> weakReference2 = bundle;
                    if (weakReference2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("bundle");
                    }
                    ReportBuilderBundle reportBuilderBundle = weakReference2.get();
                    if (reportBuilderBundle != null) {
                        context2 = reportBuilderBundle.getContext();
                    }
                    if (context2 == null) {
                        Intrinsics.throwNpe();
                    }
                    cardView.setCardBackgroundColor(ContextCompat.getColor(context2, C1566R.color.general_button_background_color));
                }
            } else {
                WeakReference<CardView> weakReference3 = submitButton;
                if (weakReference3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                }
                CardView cardView2 = weakReference3.get();
                if (cardView2 != null) {
                    WeakReference<ReportBuilderBundle> weakReference4 = bundle;
                    if (weakReference4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("bundle");
                    }
                    ReportBuilderBundle reportBuilderBundle2 = weakReference4.get();
                    if (reportBuilderBundle2 != null) {
                        context = reportBuilderBundle2.getContext();
                    }
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    cardView2.setCardBackgroundColor(ContextCompat.getColor(context, C1566R.color.general_button_background_color_disabled));
                }
            }
            WeakReference<CardView> weakReference5 = submitButton;
            if (weakReference5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            }
            CardView cardView3 = weakReference5.get();
            if (cardView3 != null) {
                cardView3.setClickable(z);
            }
        } else if (submitNextButton != null) {
            if (z) {
                WeakReference<Button> weakReference6 = submitNextButton;
                if (weakReference6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
                }
                Button button = weakReference6.get();
                if (button != null) {
                    button.setBackgroundResource(C1566R.color.general_button_background_color);
                }
            } else {
                WeakReference<Button> weakReference7 = submitNextButton;
                if (weakReference7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
                }
                Button button2 = weakReference7.get();
                if (button2 != null) {
                    button2.setBackgroundResource(C1566R.color.general_button_background_color_disabled);
                }
            }
            WeakReference<Button> weakReference8 = submitNextButton;
            if (weakReference8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
            }
            Button button3 = weakReference8.get();
            if (button3 != null) {
                button3.setClickable(z);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setupView(@NotNull ReportBuilderBundle data, @NotNull GenericReportContract.ButtonDisplayOption actionButtonOption, @NotNull final Function1<? super Boolean, Unit> onOptionSelectedListener) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(actionButtonOption, "actionButtonOption");
        Intrinsics.checkParameterIsNotNull(onOptionSelectedListener, "onOptionSelectedListener");
        bundle = new WeakReference<>(data);
        ReportFormItemCreators.INSTANCE.addSubtitle(C1566R.string.report_debt_wrong_title, data.getContext(), data.getReportContainer());
        ReportFormItemCreators.INSTANCE.addTextButton(data.getReportContainer(), data.getContext(), C1566R.string.report_debt_wrong_link, new ReportDebtCollectorStartBuilder$setupView$1(data));
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_debt_collector1_question, data.getContext());
        String[] stringArray = data.getContext().getResources().getStringArray(C1566R.array.report_debt_collector_question_options);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "data.context.resources.g…llector_question_options)");
        radioChoices = stringArray;
        ReportFormItemCreators reportFormItemCreators = ReportFormItemCreators.INSTANCE;
        Context context = data.getContext();
        ViewGroup reportContainer = data.getReportContainer();
        String[] strArr = radioChoices;
        if (strArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("radioChoices");
        }
        RadioGroup addRadioGroup = reportFormItemCreators.addRadioGroup(context, reportContainer, strArr, data.getColorStateList());
        radioGroup = new WeakReference<>(addRadioGroup);
        addRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.report.ReportDebtCollectorStartBuilder$setupView$2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                Function1.this.invoke(true);
            }
        });
        if (data.getLoadSaved()) {
            ReportFormItemCreators.INSTANCE.checkRadioButtonAtIndex(addRadioGroup, PreferenceService.getInt(SHARED_PREF, -1));
        }
        if (actionButtonOption == GenericReportContract.ButtonDisplayOption.ACTION_AND_BACK_BUTTON) {
            submitNextButton = new WeakReference<>(ReportFormItemCreators.INSTANCE.addNextBackButton(data.getReportContainer(), data.getContext(), false, ReportDebtCollectorStartBuilder$setupView$bt$1.INSTANCE, new ReportDebtCollectorStartBuilder$setupView$bt$2(data)));
        } else if (actionButtonOption == GenericReportContract.ButtonDisplayOption.ACTION_BUTTON_ONLY) {
            submitButton = new WeakReference<>(ReportFormItemCreators.INSTANCE.addNextButton(data.getReportContainer(), data.getContext(), ReportDebtCollectorStartBuilder$setupView$cv$1.INSTANCE));
        }
    }
}

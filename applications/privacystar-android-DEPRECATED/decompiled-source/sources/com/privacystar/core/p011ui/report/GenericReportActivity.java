package com.privacystar.core.p011ui.report;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.p004v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.Constants;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.report.GenericReportContract;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.handler.ComplaintHandler;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.extension.FrameworkExtensionsKt;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n��\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010$\u001a\u00020%H\u0016J!\u0010(\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2\n\b\u0001\u0010)\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\u001fH\u0002J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u000eH\u0016J\b\u0010.\u001a\u00020\u001fH\u0016J\u0013\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001500H\u0016¢\u0006\u0002\u00101J4\u00102\u001a\u0002032\u0006\u0010$\u001a\u0002042\u0006\u00105\u001a\u00020\u000e2\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u00107\u001a\u00020\u0015H\u0016J\b\u00108\u001a\u00020\u001fH\u0016J\b\u00109\u001a\u00020\u0019H\u0002J\b\u0010:\u001a\u00020\u000eH\u0016J\u0010\u0010;\u001a\u00020\u001f2\u0006\u00107\u001a\u00020\u0015H\u0016J\b\u0010<\u001a\u00020\u001fH\u0016J\u0012\u0010=\u001a\u00020\u001f2\b\u0010>\u001a\u0004\u0018\u00010?H\u0014J\u0010\u0010@\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u000eH\u0002J\u0010\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u000eH\u0016J \u0010J\u001a\u00020\u001f2\u0006\u0010K\u001a\u00020\u00152\u0006\u00107\u001a\u00020\u00152\u0006\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0002J\u0010\u0010P\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010Q\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010R\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010S\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010T\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010U\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\u0010\u0010V\u001a\u00020\u001f2\u0006\u0010O\u001a\u000203H\u0016J\b\u0010W\u001a\u00020\u001fH\u0016J<\u0010X\u001a\u00020\u001f2\"\u0010Y\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00150\u0014j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0015`\u00172\u0006\u00107\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020[H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.¢\u0006\u0002\n��¨\u0006\\"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportActivity;", "Lcom/privacystar/core/ui/PSActivity;", "Lcom/privacystar/core/ui/report/GenericReportContract$View;", "()V", "callerIcon", "Lcom/privacystar/core/ui/widgets/caller_icon/CallerIconView;", "colorStateList", "Landroid/content/res/ColorStateList;", "currentReportBuilder", "Lcom/privacystar/core/ui/report/IReportBuilder;", "header1", "Landroid/widget/TextView;", "header2", "isMenuItemVisible", "", "onCloseButtonClickedListener", "Landroid/view/View$OnClickListener;", "presenter", "Lcom/privacystar/core/ui/report/GenericReportPresenter;", "questionMap", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "reportContainer", "Landroid/widget/LinearLayout;", "scrollView", "Landroid/widget/ScrollView;", "toolbar", "Landroid/support/v7/widget/Toolbar;", "addACleanReportContainer", "", "addCloseIconToLeftOfToolbar", "animateNavigation", "translation", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/privacystar/core/ui/report/GenericReportContract$OnAnimationEnded;", "animateReportContentIn", "animateReportContentOut", "colorizeToolbarOverflowButton", "color", "(Landroid/support/v7/widget/Toolbar;Ljava/lang/Integer;)Z", "createQuestionMap", "enableActionButtons", "isEnabled", "finishActivity", "getDefaultQuestionArray", "", "()[Ljava/lang/String;", "getReportBuilderBundle", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;", "backward", "reportList", "number", "goBackFromActivity", "initContainer", "isShowingLastPage", "launchThankYouPage", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "menu", "Landroid/view/Menu;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "readyToMoveToNextPage", "isReady", "refreshMenuItem", "isVisible", "setupCallerInformationText", "name", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "setupCurrentReportBuilder", "bundle", "setupDebtCollectorStartView", "setupDebtConsentView", "setupGenericEndView", "setupNonOffenderView", "setupScammerEndView", "setupScammerStartView", "setupTextMessageView", "setupToolbar", "submitComplaint", "reportItems", "callTime", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportActivity.class */
public final class GenericReportActivity extends PSActivity implements GenericReportContract.View {
    private HashMap _$_findViewCache;
    private CallerIconView callerIcon;
    private ColorStateList colorStateList;
    private IReportBuilder currentReportBuilder;
    private TextView header1;
    private TextView header2;
    private LinearLayout reportContainer;
    private ScrollView scrollView;
    private Toolbar toolbar;
    private boolean isMenuItemVisible = true;
    private final GenericReportPresenter presenter = new GenericReportPresenter(this);
    private final HashMap<String, Integer> questionMap = new HashMap<>();
    private final View.OnClickListener onCloseButtonClickedListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.report.GenericReportActivity$onCloseButtonClickedListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GenericReportPresenter genericReportPresenter;
            genericReportPresenter = GenericReportActivity.this.presenter;
            genericReportPresenter.closePageRequested();
        }
    };

    private final void animateNavigation(float f, final GenericReportContract.OnAnimationEnded onAnimationEnded) {
        LinearLayout linearLayout = this.reportContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reportContainer");
        }
        linearLayout.animate().translationX(f).setDuration(150L).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.privacystar.core.ui.report.GenericReportActivity$animateNavigation$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkParameterIsNotNull(animation, "animation");
                super.onAnimationEnd(animation);
                GenericReportContract.OnAnimationEnded.this.onAnimationEnded();
            }
        });
    }

    private final boolean colorizeToolbarOverflowButton(Toolbar toolbar, @ColorInt Integer num) {
        PorterDuffColorFilter porterDuffColorFilter;
        Drawable overflowIcon = toolbar.getOverflowIcon();
        if (overflowIcon == null) {
            return false;
        }
        Intrinsics.checkExpressionValueIsNotNull(overflowIcon, "toolbar.overflowIcon ?: return false");
        if (num != null) {
            num.intValue();
            porterDuffColorFilter = new PorterDuffColorFilter(num.intValue(), PorterDuff.Mode.MULTIPLY);
        } else {
            porterDuffColorFilter = null;
        }
        overflowIcon.setColorFilter(porterDuffColorFilter);
        return true;
    }

    private final void createQuestionMap() {
        this.questionMap.clear();
        HashMap<String, Integer> hashMap = this.questionMap;
        String string = getString(C1566R.string.report_question_12);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.report_question_12)");
        hashMap.put(string, 12);
        HashMap<String, Integer> hashMap2 = this.questionMap;
        String string2 = getString(C1566R.string.report_question_13);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.report_question_13)");
        hashMap2.put(string2, 13);
        HashMap<String, Integer> hashMap3 = this.questionMap;
        String string3 = getString(C1566R.string.report_question_14);
        Intrinsics.checkExpressionValueIsNotNull(string3, "getString(R.string.report_question_14)");
        hashMap3.put(string3, 14);
        HashMap<String, Integer> hashMap4 = this.questionMap;
        String string4 = getString(C1566R.string.report_question_15);
        Intrinsics.checkExpressionValueIsNotNull(string4, "getString(R.string.report_question_15)");
        hashMap4.put(string4, 15);
        HashMap<String, Integer> hashMap5 = this.questionMap;
        String string5 = getString(C1566R.string.report_question_16);
        Intrinsics.checkExpressionValueIsNotNull(string5, "getString(R.string.report_question_16)");
        hashMap5.put(string5, 16);
        HashMap<String, Integer> hashMap6 = this.questionMap;
        String string6 = getString(C1566R.string.report_question_17);
        Intrinsics.checkExpressionValueIsNotNull(string6, "getString(R.string.report_question_17)");
        hashMap6.put(string6, 17);
        HashMap<String, Integer> hashMap7 = this.questionMap;
        String string7 = getString(C1566R.string.report_question_18);
        Intrinsics.checkExpressionValueIsNotNull(string7, "getString(R.string.report_question_18)");
        hashMap7.put(string7, 18);
        HashMap<String, Integer> hashMap8 = this.questionMap;
        String string8 = getString(C1566R.string.report_question_19);
        Intrinsics.checkExpressionValueIsNotNull(string8, "getString(R.string.report_question_19)");
        hashMap8.put(string8, 19);
        HashMap<String, Integer> hashMap9 = this.questionMap;
        String string9 = getString(C1566R.string.report_question_20);
        Intrinsics.checkExpressionValueIsNotNull(string9, "getString(R.string.report_question_20)");
        hashMap9.put(string9, 20);
        HashMap<String, Integer> hashMap10 = this.questionMap;
        String string10 = getString(C1566R.string.report_question_21);
        Intrinsics.checkExpressionValueIsNotNull(string10, "getString(R.string.report_question_21)");
        hashMap10.put(string10, 21);
        HashMap<String, Integer> hashMap11 = this.questionMap;
        String string11 = getString(C1566R.string.report_question_22);
        Intrinsics.checkExpressionValueIsNotNull(string11, "getString(R.string.report_question_22)");
        hashMap11.put(string11, 22);
        HashMap<String, Integer> hashMap12 = this.questionMap;
        String string12 = getString(C1566R.string.report_question_25);
        Intrinsics.checkExpressionValueIsNotNull(string12, "getString(R.string.report_question_25)");
        hashMap12.put(string12, 25);
        HashMap<String, Integer> hashMap13 = this.questionMap;
        String string13 = getString(C1566R.string.report_question_27);
        Intrinsics.checkExpressionValueIsNotNull(string13, "getString(R.string.report_question_27)");
        hashMap13.put(string13, 27);
        HashMap<String, Integer> hashMap14 = this.questionMap;
        String string14 = getString(C1566R.string.report_question_28);
        Intrinsics.checkExpressionValueIsNotNull(string14, "getString(R.string.report_question_28)");
        hashMap14.put(string14, 28);
        HashMap<String, Integer> hashMap15 = this.questionMap;
        String string15 = getString(C1566R.string.report_question_31);
        Intrinsics.checkExpressionValueIsNotNull(string15, "getString(R.string.report_question_31)");
        hashMap15.put(string15, 31);
        HashMap<String, Integer> hashMap16 = this.questionMap;
        String string16 = getString(C1566R.string.report_question_32);
        Intrinsics.checkExpressionValueIsNotNull(string16, "getString(R.string.report_question_32)");
        hashMap16.put(string16, 32);
        HashMap<String, Integer> hashMap17 = this.questionMap;
        String string17 = getString(C1566R.string.report_question_36);
        Intrinsics.checkExpressionValueIsNotNull(string17, "getString(R.string.report_question_36)");
        hashMap17.put(string17, 36);
        HashMap<String, Integer> hashMap18 = this.questionMap;
        String string18 = getString(C1566R.string.report_question_37);
        Intrinsics.checkExpressionValueIsNotNull(string18, "getString(R.string.report_question_37)");
        hashMap18.put(string18, 37);
        HashMap<String, Integer> hashMap19 = this.questionMap;
        String string19 = getString(C1566R.string.report_question_38);
        Intrinsics.checkExpressionValueIsNotNull(string19, "getString(R.string.report_question_38)");
        hashMap19.put(string19, 38);
        HashMap<String, Integer> hashMap20 = this.questionMap;
        String string20 = getString(C1566R.string.report_question_39);
        Intrinsics.checkExpressionValueIsNotNull(string20, "getString(R.string.report_question_39)");
        hashMap20.put(string20, 39);
        HashMap<String, Integer> hashMap21 = this.questionMap;
        String string21 = getString(C1566R.string.report_question_40);
        Intrinsics.checkExpressionValueIsNotNull(string21, "getString(R.string.report_question_40)");
        hashMap21.put(string21, 40);
        HashMap<String, Integer> hashMap22 = this.questionMap;
        String string22 = getString(C1566R.string.report_question_42);
        Intrinsics.checkExpressionValueIsNotNull(string22, "getString(R.string.report_question_42)");
        hashMap22.put(string22, 42);
        HashMap<String, Integer> hashMap23 = this.questionMap;
        String string23 = getString(C1566R.string.report_question_41);
        Intrinsics.checkExpressionValueIsNotNull(string23, "getString(R.string.report_question_41)");
        hashMap23.put(string23, 41);
        HashMap<String, Integer> hashMap24 = this.questionMap;
        String string24 = getString(C1566R.string.report_question_44);
        Intrinsics.checkExpressionValueIsNotNull(string24, "getString(R.string.report_question_44)");
        hashMap24.put(string24, 44);
        HashMap<String, Integer> hashMap25 = this.questionMap;
        String string25 = getString(C1566R.string.report_question_45);
        Intrinsics.checkExpressionValueIsNotNull(string25, "getString(R.string.report_question_45)");
        hashMap25.put(string25, 45);
        HashMap<String, Integer> hashMap26 = this.questionMap;
        String string26 = getString(C1566R.string.report_question_46);
        Intrinsics.checkExpressionValueIsNotNull(string26, "getString(R.string.report_question_46)");
        hashMap26.put(string26, 46);
        HashMap<String, Integer> hashMap27 = this.questionMap;
        String string27 = getString(C1566R.string.report_question_47);
        Intrinsics.checkExpressionValueIsNotNull(string27, "getString(R.string.report_question_47)");
        hashMap27.put(string27, 47);
        HashMap<String, Integer> hashMap28 = this.questionMap;
        String string28 = getString(C1566R.string.report_question_48);
        Intrinsics.checkExpressionValueIsNotNull(string28, "getString(R.string.report_question_48)");
        hashMap28.put(string28, 48);
        HashMap<String, Integer> hashMap29 = this.questionMap;
        String string29 = getString(C1566R.string.report_question_49);
        Intrinsics.checkExpressionValueIsNotNull(string29, "getString(R.string.report_question_49)");
        hashMap29.put(string29, 49);
        HashMap<String, Integer> hashMap30 = this.questionMap;
        String string30 = getString(C1566R.string.report_question_50);
        Intrinsics.checkExpressionValueIsNotNull(string30, "getString(R.string.report_question_50)");
        hashMap30.put(string30, 50);
        HashMap<String, Integer> hashMap31 = this.questionMap;
        String string31 = getString(C1566R.string.report_question_51);
        Intrinsics.checkExpressionValueIsNotNull(string31, "getString(R.string.report_question_51)");
        hashMap31.put(string31, 51);
        HashMap<String, Integer> hashMap32 = this.questionMap;
        String string32 = getString(C1566R.string.report_question_52);
        Intrinsics.checkExpressionValueIsNotNull(string32, "getString(R.string.report_question_52)");
        hashMap32.put(string32, 52);
    }

    private final LinearLayout initContainer() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void readyToMoveToNextPage(boolean z) {
        Timber.m37d("Can move to the next page?: " + z, new Object[0]);
        this.presenter.onReadyToMoveToNextPage(z);
    }

    private final void setupCurrentReportBuilder(ReportBuilderBundle reportBuilderBundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("The page ");
        IReportBuilder iReportBuilder = this.currentReportBuilder;
        if (iReportBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
        }
        sb.append(iReportBuilder.hasNextPage() ? "HAS" : "DOES NOT HAVE");
        sb.append(" a next page");
        Timber.m37d(sb.toString(), new Object[0]);
        IReportBuilder iReportBuilder2 = this.currentReportBuilder;
        if (iReportBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
        }
        GenericReportContract.ButtonDisplayOption buttonOptionIfNextAvailable = iReportBuilder2.hasNextPage() ? this.presenter.buttonOptionIfNextAvailable() : this.presenter.buttonOptionIfNextNotAvailable();
        Timber.m37d("Action button is " + buttonOptionIfNextAvailable, new Object[0]);
        IReportBuilder iReportBuilder3 = this.currentReportBuilder;
        if (iReportBuilder3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
        }
        iReportBuilder3.setupView(reportBuilderBundle, buttonOptionIfNextAvailable, new GenericReportActivity$setupCurrentReportBuilder$1(this));
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void addACleanReportContainer() {
        ScrollView scrollView = this.scrollView;
        if (scrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scrollView");
        }
        scrollView.removeAllViews();
        this.reportContainer = initContainer();
        ScrollView scrollView2 = this.scrollView;
        if (scrollView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scrollView");
        }
        LinearLayout linearLayout = this.reportContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reportContainer");
        }
        scrollView2.addView(linearLayout);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void addCloseIconToLeftOfToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setNavigationIcon(C1566R.C1568drawable.ic_close_black_24dp);
        Toolbar toolbar2 = this.toolbar;
        if (toolbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar2.setNavigationOnClickListener(this.onCloseButtonClickedListener);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void animateReportContentIn(@NotNull GenericReportContract.OnAnimationEnded listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        LinearLayout linearLayout = this.reportContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reportContainer");
        }
        animateNavigation(linearLayout.getWidth(), listener);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void animateReportContentOut(@NotNull GenericReportContract.OnAnimationEnded listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        LinearLayout linearLayout = this.reportContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reportContainer");
        }
        animateNavigation(linearLayout.getWidth() * (-1.0f), listener);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void enableActionButtons(boolean z) {
        IReportBuilder iReportBuilder = this.currentReportBuilder;
        if (iReportBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
        }
        iReportBuilder.setButtonEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void finishActivity() {
        finish();
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    @NotNull
    public String[] getDefaultQuestionArray() {
        String[] stringArray = getResources().getStringArray(C1566R.array.report_non_offender_question_options);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "resources.getStringArray…ffender_question_options)");
        return stringArray;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    @NotNull
    public ReportBuilderBundle getReportBuilderBundle(@NotNull GenericReportContract.ReportNavigationListener listener, boolean z, @NotNull HashMap<Integer, String> reportList, @NotNull String number) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        Intrinsics.checkParameterIsNotNull(reportList, "reportList");
        Intrinsics.checkParameterIsNotNull(number, "number");
        GenericReportActivity genericReportActivity = this;
        LinearLayout linearLayout = this.reportContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reportContainer");
        }
        LinearLayout linearLayout2 = linearLayout;
        ColorStateList colorStateList = this.colorStateList;
        if (colorStateList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorStateList");
        }
        return new ReportBuilderBundle(genericReportActivity, linearLayout2, colorStateList, listener, z, reportList, this.questionMap, number, "");
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void goBackFromActivity() {
        super.onBackPressed();
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public boolean isShowingLastPage() {
        IReportBuilder iReportBuilder = this.currentReportBuilder;
        if (iReportBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
        }
        return !iReportBuilder.hasNextPage();
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void launchThankYouPage(@NotNull String number) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intent intent = new Intent(this, ReportThankYouActivity.class);
        intent.putExtra("number", number);
        startActivity(intent);
        finish();
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        this.presenter.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1566R.C1571layout.activity_report_start);
        getWindow().setSoftInputMode(3);
        this.isMenuItemVisible = !this.presenter.shouldHideBottomNextButton();
        ScrollView report_scroll_view = (ScrollView) _$_findCachedViewById(C1566R.C1569id.report_scroll_view);
        Intrinsics.checkExpressionValueIsNotNull(report_scroll_view, "report_scroll_view");
        this.scrollView = report_scroll_view;
        TextView report_header_1 = (TextView) _$_findCachedViewById(C1566R.C1569id.report_header_1);
        Intrinsics.checkExpressionValueIsNotNull(report_header_1, "report_header_1");
        this.header1 = report_header_1;
        TextView report_header_2 = (TextView) _$_findCachedViewById(C1566R.C1569id.report_header_2);
        Intrinsics.checkExpressionValueIsNotNull(report_header_2, "report_header_2");
        this.header2 = report_header_2;
        View findViewById = findViewById(2131297363);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.toolbar)");
        this.toolbar = (Toolbar) findViewById;
        CallerIconView report_header_icon = (CallerIconView) _$_findCachedViewById(C1566R.C1569id.report_header_icon);
        Intrinsics.checkExpressionValueIsNotNull(report_header_icon, "report_header_icon");
        this.callerIcon = report_header_icon;
        this.colorStateList = new ColorStateList((int[][]) new int[]{new int[0]}, new int[]{ThemeUtil.resolveAttributeColor(this, 2130968832), FrameworkExtensionsKt.color$default(this, Integer.valueOf((int) C1566R.color.radio_button_unchecked), null, 2, null)});
        this.reportContainer = initContainer();
        createQuestionMap();
        String name = getIntent().hasExtra("number") ? getIntent().getStringExtra("name") : "";
        String number = getIntent().hasExtra("name") ? getIntent().getStringExtra("number") : "";
        long j = 0;
        if (getIntent().hasExtra(Constants.CALL_TIME)) {
            j = getIntent().getLongExtra(Constants.CALL_TIME, 0L);
        }
        String text = getIntent().hasExtra("text") ? getIntent().getStringExtra("text") : "";
        GenericReportPresenter genericReportPresenter = this.presenter;
        Intrinsics.checkExpressionValueIsNotNull(name, "name");
        Intrinsics.checkExpressionValueIsNotNull(number, "number");
        Intrinsics.checkExpressionValueIsNotNull(text, "text");
        genericReportPresenter.viewCreated(name, number, j, text);
        AnalyticsManager.INSTANCE.fire(Event.NumberReportView.INSTANCE);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        getMenuInflater().inflate(C1566R.C1572menu.report_menu, menu);
        MenuItem item = menu.findItem(C1566R.C1569id.close_or_next);
        Intrinsics.checkExpressionValueIsNotNull(item, "item");
        item.setVisible(this.isMenuItemVisible);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == 2131296550) {
            if (this.presenter.shouldHideBottomNextButton()) {
                IReportBuilder iReportBuilder = this.currentReportBuilder;
                if (iReportBuilder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("currentReportBuilder");
                }
                iReportBuilder.onActionButton();
            } else {
                this.presenter.closePageRequested();
            }
            z = true;
        } else {
            z = super.onOptionsItemSelected(item);
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void refreshMenuItem(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("Refreshing the menu with ");
        sb.append(z ? "a visible" : "an invisible");
        sb.append(" menu item");
        Timber.m37d(sb.toString(), new Object[0]);
        this.isMenuItemVisible = z;
        invalidateOptionsMenu();
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupCallerInformationText(@NotNull String name, @NotNull String number, @NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        String str = name;
        if (str.length() > 0) {
            TextView textView = this.header1;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("header1");
            }
            textView.setText(str);
            TextView textView2 = this.header2;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("header2");
            }
            textView2.setText(number);
            TextView textView3 = this.header2;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("header2");
            }
            ViewExtensionsKt.visible(textView3);
        } else {
            TextView textView4 = this.header1;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("header1");
            }
            textView4.setText(number);
            TextView textView5 = this.header2;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("header2");
            }
            ViewExtensionsKt.gone(textView5);
        }
        CallerIconView callerIconView = this.callerIcon;
        if (callerIconView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callerIcon");
        }
        callerIconView.setContent(caller);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupDebtCollectorStartView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportDebtCollectorStartBuilder", new Object[0]);
        this.currentReportBuilder = ReportDebtCollectorStartBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupDebtConsentView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportDebtConsentBuilder", new Object[0]);
        this.currentReportBuilder = ReportDebtConsentBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupGenericEndView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportGenericEndBuilder", new Object[0]);
        this.currentReportBuilder = ReportGenericEndBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupNonOffenderView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportNonOffenderBuilder", new Object[0]);
        this.currentReportBuilder = ReportNonOffenderBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupScammerEndView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportScammerEndBuilder", new Object[0]);
        this.currentReportBuilder = ReportScammerEndBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupScammerStartView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportScammerStartBuilder", new Object[0]);
        this.currentReportBuilder = ReportScammerStartBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupTextMessageView(@NotNull ReportBuilderBundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "bundle");
        Timber.m37d("Setting up ReportTextMessageBuilder", new Object[0]);
        this.currentReportBuilder = ReportTextMessageBuilder.INSTANCE;
        setupCurrentReportBuilder(bundle);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void setupToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        toolbar.setTitle(getString(C1566R.string.report_title));
        Toolbar toolbar2 = this.toolbar;
        if (toolbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        setSupportActionBar(toolbar2);
    }

    @Override // com.privacystar.core.p011ui.report.GenericReportContract.View
    public void submitComplaint(@NotNull HashMap<Integer, String> reportItems, @NotNull String number, long j) {
        Intrinsics.checkParameterIsNotNull(reportItems, "reportItems");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Timber.m37d("Submitting the report", new Object[0]);
        PreferenceUtil.putShowReportSubmittedMessage(false);
        ComplaintHandler.getInstance().generateAndEnqueueRequest(this, reportItems, PayloadUtil.getCallHistory(number, Long.valueOf(j)));
        AnalyticsManager.INSTANCE.fire(Event.ComplaintFiled.INSTANCE);
        AnalyticsManager.INSTANCE.fire(Event.NumberReportSubmit.INSTANCE);
    }
}

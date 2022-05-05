package com.privacystar.core.p011ui.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.support.annotation.ColorRes;
import android.support.annotation.StringRes;
import android.support.p001v4.text.HtmlCompat;
import android.support.p001v4.util.ArraySet;
import android.support.p004v7.widget.AppCompatEditText;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.service.PreferenceService;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.extension.FrameworkExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012J&\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015J*\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u0015J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u0015J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\bH\u0002J$\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ:\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0\fJ$\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ&\u0010%\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0012J1\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\n0*2\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010+J$\u0010,\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ \u0010-\u001a\u00020\r2\b\b\u0001\u0010\u0010\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J.\u0010.\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u0010\u001a\u00020\u00152\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ2\u0010/\u001a\u0002002\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0001\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u00152\b\b\u0001\u00103\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0006J0\u0010/\u001a\u0002002\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u00102\u001a\u00020\u00152\b\b\u0001\u00103\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020'2\u0006\u00106\u001a\u00020\u0015J6\u00107\u001a\u00020\r2\u0006\u00105\u001a\u00020'2\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n092\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00150;J<\u00107\u001a\u00020\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000f0=2\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n092\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00150;J\u001c\u0010>\u001a\u00020\r2\u0006\u0010?\u001a\u00020\n2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u000f0AJ\u001c\u0010B\u001a\u00020\r2\u0006\u0010?\u001a\u00020\n2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u000f0AJ\u001c\u0010C\u001a\u00020\r*\u00020\u00062\b\b\u0001\u0010\u0010\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b¨\u0006D"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportFormItemCreators;", "", "()V", "addButton", "Landroid/support/v7/widget/CardView;", "parent", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "title", "", "clickListener", "Lkotlin/Function0;", "", "addCheckBox", "Landroid/widget/CheckBox;", "text", "colorStateList", "Landroid/content/res/ColorStateList;", "addDivider", "topMarginDp", "", "bottomMarginDp", "addEditText", "Landroid/support/v7/widget/AppCompatEditText;", "hintRes", SettingsJsonConstants.ICON_HEIGHT_KEY, "addFillingContainer", "Landroid/widget/LinearLayout;", "addFinishButton", "addNextBackButton", "Landroid/widget/Button;", "isSubmit", "", "nextListener", "backListener", "addNextButton", "addRadioButton", "group", "Landroid/widget/RadioGroup;", "addRadioGroup", "radioChoices", "", "(Landroid/content/Context;Landroid/view/ViewGroup;[Ljava/lang/String;Landroid/content/res/ColorStateList;)Landroid/widget/RadioGroup;", "addSubmitButton", "addSubtitle", "addTextButton", "addTextView", "Landroid/widget/TextView;", "textRes", "textSize", "colorRes", "checkRadioButtonAtIndex", "radioGroup", FirebaseAnalytics.Param.INDEX, "determineReportItems", "report", "Ljava/util/HashMap;", "questionMap", "", "checkBoxes", "Ljava/util/ArrayList;", "loadCheckedBoxes", "sharedPref", "boxes", "", "saveCheckedBoxes", "addTitle", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportFormItemCreators */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportFormItemCreators.class */
public final class ReportFormItemCreators {
    public static final ReportFormItemCreators INSTANCE = new ReportFormItemCreators();

    private ReportFormItemCreators() {
    }

    @NotNull
    public static /* synthetic */ AppCompatEditText addEditText$default(ReportFormItemCreators reportFormItemCreators, Context context, int i, ViewGroup viewGroup, int i2, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            i2 = 135;
        }
        return reportFormItemCreators.addEditText(context, i, viewGroup, i2);
    }

    @NotNull
    public static /* synthetic */ AppCompatEditText addEditText$default(ReportFormItemCreators reportFormItemCreators, Context context, String str, ViewGroup viewGroup, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 135;
        }
        return reportFormItemCreators.addEditText(context, str, viewGroup, i);
    }

    private final LinearLayout addFillingContainer(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        layoutParams.setMargins(dpToPx, dpToPx, dpToPx, DensityUtil.dpToPx(context, 8));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(80);
        return linearLayout;
    }

    @NotNull
    public final CardView addButton(@NotNull ViewGroup parent, @NotNull Context context, @NotNull String title, @NotNull final Function0<Unit> clickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(title, "title");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        LinearLayout addFillingContainer = addFillingContainer(context);
        View inflate = LayoutInflater.from(context).inflate(C1566R.C1571layout.activity_generic_report_generic_button, (ViewGroup) null);
        if (inflate == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.CardView");
        }
        CardView cardView = (CardView) inflate;
        cardView.setLayoutParams(new LinearLayout.LayoutParams(-1, DensityUtil.dpToPx(context, 56)));
        View findViewById = cardView.findViewById(C1566R.C1569id.activity_report_generic_button_tv);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "cardView.findViewById<Te…report_generic_button_tv)");
        ((TextView) findViewById).setText(title);
        cardView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.report.ReportFormItemCreators$addButton$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
        addFillingContainer.addView(cardView);
        parent.addView(addFillingContainer);
        return cardView;
    }

    @NotNull
    public final CheckBox addCheckBox(@NotNull String text, @NotNull Context context, @NotNull ViewGroup parent, @NotNull ColorStateList colorStateList) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(colorStateList, "colorStateList");
        CheckBox checkBox = new CheckBox(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 6);
        layoutParams.setMargins(dpToPx, dpToPx2, dpToPx, dpToPx2);
        checkBox.setLayoutParams(layoutParams);
        checkBox.setText(text);
        if (Build.VERSION.SDK_INT >= 21) {
            checkBox.setButtonTintList(colorStateList);
        }
        parent.addView(checkBox);
        return checkBox;
    }

    public final void addDivider(@NotNull Context context, @NotNull ViewGroup parent, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, DensityUtil.dpToPx(context, 1));
        layoutParams.setMargins(0, DensityUtil.dpToPx(context, i), 0, DensityUtil.dpToPx(context, i2));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundColor(FrameworkExtensionsKt.color$default(context, Integer.valueOf((int) C1566R.color.ps3_grey_100), null, 2, null));
        parent.addView(linearLayout);
    }

    @NotNull
    public final AppCompatEditText addEditText(@NotNull Context context, @StringRes int i, @NotNull ViewGroup parent, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        String string = context.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(hintRes)");
        return addEditText(context, string, parent, i2);
    }

    @NotNull
    public final AppCompatEditText addEditText(@NotNull Context context, @NotNull String text, @NotNull ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View inflate = LayoutInflater.from(context).inflate(C1566R.C1571layout.activity_generic_report_generic_edittext, (ViewGroup) null);
        if (inflate == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.AppCompatEditText");
        }
        AppCompatEditText appCompatEditText = (AppCompatEditText) inflate;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 8);
        layoutParams.setMargins(dpToPx, dpToPx2, dpToPx, dpToPx2);
        appCompatEditText.setLayoutParams(layoutParams);
        int dpToPx3 = DensityUtil.dpToPx(context, 12);
        int dpToPx4 = DensityUtil.dpToPx(context, 6);
        appCompatEditText.setPadding(dpToPx3, dpToPx4, dpToPx3, dpToPx4);
        appCompatEditText.setHint(text);
        parent.addView(appCompatEditText);
        return appCompatEditText;
    }

    @NotNull
    public final CardView addFinishButton(@NotNull ViewGroup parent, @NotNull Context context, @NotNull Function0<Unit> clickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        String string = context.getString(C1566R.string.report_finish);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.report_finish)");
        return addButton(parent, context, string, clickListener);
    }

    @NotNull
    public final Button addNextBackButton(@NotNull ViewGroup parent, @NotNull Context context, boolean z, @NotNull final Function0<Unit> nextListener, @NotNull final Function0<Unit> backListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(nextListener, "nextListener");
        Intrinsics.checkParameterIsNotNull(backListener, "backListener");
        LinearLayout addFillingContainer = addFillingContainer(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, DensityUtil.dpToPx(context, 56), 1.0f);
        View inflate = LayoutInflater.from(context).inflate(C1566R.C1571layout.report_button, (ViewGroup) null);
        if (inflate == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        Button button = (Button) inflate;
        View inflate2 = LayoutInflater.from(context).inflate(C1566R.C1571layout.report_button, (ViewGroup) null);
        if (inflate2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        Button button2 = (Button) inflate2;
        LinearLayout.LayoutParams layoutParams2 = layoutParams;
        button.setLayoutParams(layoutParams2);
        button2.setLayoutParams(layoutParams2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 8);
        int dpToPx3 = DensityUtil.dpToPx(context, 16);
        button2.setText(C1566R.string.general_text_back);
        button2.setTextSize(14.0f);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.report.ReportFormItemCreators$addNextBackButton$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
        button2.setPadding(dpToPx, dpToPx3, dpToPx2, dpToPx3);
        addFillingContainer.addView(button2);
        if (z) {
            button.setText(C1566R.string.report_submit);
        } else {
            button.setText(C1566R.string.general_text_next);
        }
        button.setTextSize(14.0f);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.report.ReportFormItemCreators$addNextBackButton$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
        button2.setPadding(dpToPx2, dpToPx3, dpToPx, dpToPx3);
        addFillingContainer.addView(button);
        parent.addView(addFillingContainer);
        return button;
    }

    @NotNull
    public final CardView addNextButton(@NotNull ViewGroup parent, @NotNull Context context, @NotNull Function0<Unit> clickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        String string = context.getString(C1566R.string.general_text_next);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.general_text_next)");
        return addButton(parent, context, string, clickListener);
    }

    public final void addRadioButton(@NotNull String text, @NotNull RadioGroup group, @NotNull Context context, @NotNull ColorStateList colorStateList) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(group, "group");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(colorStateList, "colorStateList");
        RadioButton radioButton = new RadioButton(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 6);
        layoutParams.setMargins(dpToPx, dpToPx2, dpToPx, dpToPx2);
        radioButton.setLayoutParams(layoutParams);
        radioButton.setText(text);
        if (Build.VERSION.SDK_INT >= 21) {
            radioButton.setButtonTintList(colorStateList);
        }
        group.addView(radioButton);
    }

    @NotNull
    public final RadioGroup addRadioGroup(@NotNull Context context, @NotNull ViewGroup parent, @NotNull String[] radioChoices, @NotNull ColorStateList colorStateList) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(radioChoices, "radioChoices");
        Intrinsics.checkParameterIsNotNull(colorStateList, "colorStateList");
        RadioGroup radioGroup = new RadioGroup(context);
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-1, -2);
        layoutParams.bottomMargin = DensityUtil.dpToPx(context, 12);
        radioGroup.setLayoutParams(layoutParams);
        radioGroup.setOrientation(1);
        parent.addView(radioGroup);
        for (String str : radioChoices) {
            addRadioButton(str, radioGroup, context, colorStateList);
        }
        return radioGroup;
    }

    @NotNull
    public final CardView addSubmitButton(@NotNull ViewGroup parent, @NotNull Context context, @NotNull Function0<Unit> clickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        String string = context.getString(C1566R.string.report_submit);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.report_submit)");
        return addButton(parent, context, string, clickListener);
    }

    public final void addSubtitle(@StringRes int i, @NotNull Context context, @NotNull ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        TextView textView = new TextView(context);
        textView.setText(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 4);
        layoutParams.setMargins(dpToPx, dpToPx2, dpToPx, dpToPx2);
        textView.setTextSize(12.0f);
        textView.setTextColor(FrameworkExtensionsKt.color$default(context, Integer.valueOf((int) C1566R.color.ps3_grey_400), null, 2, null));
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        textView.setLayoutParams(layoutParams);
        parent.addView(textView);
    }

    public final void addTextButton(@NotNull ViewGroup parent, @NotNull Context context, @StringRes int i, @NotNull final Function0<Unit> clickListener) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        TextView textView = new TextView(context);
        textView.setText(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        int dpToPx2 = DensityUtil.dpToPx(context, 4);
        layoutParams.setMargins(dpToPx, dpToPx2, dpToPx, dpToPx2);
        textView.setTextSize(12.0f);
        textView.setTextColor(ThemeUtil.resolveAttributeColor(context, 2130968832));
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.report.ReportFormItemCreators$addTextButton$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Function0.this.invoke();
            }
        });
        parent.addView(textView);
    }

    @NotNull
    public final TextView addTextView(@NotNull Context context, @StringRes int i, int i2, @ColorRes int i3, @NotNull ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        String string = context.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(textRes)");
        return addTextView(context, string, i2, i3, parent);
    }

    @NotNull
    public final TextView addTextView(@NotNull Context context, @NotNull String text, int i, @ColorRes int i2, @NotNull ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        TextView textView = new TextView(context);
        textView.setTextSize(i);
        textView.setText(HtmlCompat.fromHtml(text, 0));
        textView.setTextColor(FrameworkExtensionsKt.color$default(context, Integer.valueOf(i2), null, 2, null));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        layoutParams.setMargins(dpToPx, dpToPx, dpToPx, dpToPx);
        textView.setLayoutParams(layoutParams);
        parent.addView(textView);
        return textView;
    }

    public final void addTitle(@NotNull ViewGroup receiver$0, @StringRes int i, @NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(context, "context");
        TextView textView = new TextView(context);
        textView.setText(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int dpToPx = DensityUtil.dpToPx(context, 16);
        layoutParams.setMargins(dpToPx, DensityUtil.dpToPx(context, 24), dpToPx, DensityUtil.dpToPx(context, 8));
        textView.setTextSize(14.0f);
        textView.setTextColor(FrameworkExtensionsKt.color$default(context, Integer.valueOf((int) C1566R.color.ps3_black), null, 2, null));
        textView.setTypeface(Typeface.create("sans-serif-medium", 0));
        textView.setLayoutParams(layoutParams);
        receiver$0.addView(textView);
    }

    public final void checkRadioButtonAtIndex(@NotNull RadioGroup radioGroup, int i) {
        Intrinsics.checkParameterIsNotNull(radioGroup, "radioGroup");
        if (i >= 0 && i < radioGroup.getChildCount()) {
            View childAt = radioGroup.getChildAt(i);
            if (childAt == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.RadioButton");
            }
            ((RadioButton) childAt).setChecked(true);
        }
    }

    public final void determineReportItems(@NotNull RadioGroup radioGroup, @NotNull HashMap<Integer, String> report, @NotNull Map<String, Integer> questionMap) {
        Intrinsics.checkParameterIsNotNull(radioGroup, "radioGroup");
        Intrinsics.checkParameterIsNotNull(report, "report");
        Intrinsics.checkParameterIsNotNull(questionMap, "questionMap");
        IntRange intRange = new IntRange(0, radioGroup.getChildCount() - 1);
        ArrayList<RadioButton> arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            View childAt = radioGroup.getChildAt(((IntIterator) it).nextInt());
            if (childAt == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.RadioButton");
            }
            arrayList.add((RadioButton) childAt);
        }
        for (RadioButton radioButton : arrayList) {
            Integer num = questionMap.get(radioButton.getText().toString());
            if (num != null) {
                report.put(Integer.valueOf(num.intValue()), radioButton.isChecked() ? "true" : "false");
            }
        }
    }

    public final void determineReportItems(@NotNull ArrayList<CheckBox> checkBoxes, @NotNull HashMap<Integer, String> report, @NotNull Map<String, Integer> questionMap) {
        Intrinsics.checkParameterIsNotNull(checkBoxes, "checkBoxes");
        Intrinsics.checkParameterIsNotNull(report, "report");
        Intrinsics.checkParameterIsNotNull(questionMap, "questionMap");
        Iterator<CheckBox> it = checkBoxes.iterator();
        while (it.hasNext()) {
            CheckBox box = it.next();
            Intrinsics.checkExpressionValueIsNotNull(box, "box");
            Integer num = questionMap.get(box.getText().toString());
            if (num != null) {
                report.put(num, box.isChecked() ? "true" : "false");
            }
        }
    }

    public final void loadCheckedBoxes(@NotNull String sharedPref, @NotNull List<? extends CheckBox> boxes) {
        Intrinsics.checkParameterIsNotNull(sharedPref, "sharedPref");
        Intrinsics.checkParameterIsNotNull(boxes, "boxes");
        for (String str : PreferenceService.getStringSet(sharedPref)) {
            ArrayList<CheckBox> arrayList = new ArrayList();
            for (Object obj : boxes) {
                if (StringsKt.equals(str, ((CheckBox) obj).getText().toString(), true)) {
                    arrayList.add(obj);
                }
            }
            for (CheckBox checkBox : arrayList) {
                checkBox.setChecked(true);
            }
        }
    }

    public final void saveCheckedBoxes(@NotNull String sharedPref, @NotNull List<? extends CheckBox> boxes) {
        Intrinsics.checkParameterIsNotNull(sharedPref, "sharedPref");
        Intrinsics.checkParameterIsNotNull(boxes, "boxes");
        ArraySet arraySet = new ArraySet();
        ArrayList<CheckBox> arrayList = new ArrayList();
        for (Object obj : boxes) {
            if (((CheckBox) obj).isChecked()) {
                arrayList.add(obj);
            }
        }
        for (CheckBox checkBox : arrayList) {
            arraySet.add(checkBox.getText().toString());
        }
        PreferenceService.putStringSet(sharedPref, arraySet);
    }
}

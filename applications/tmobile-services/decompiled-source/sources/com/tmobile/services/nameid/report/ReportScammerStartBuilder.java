package com.tmobile.services.nameid.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.report.GenericReportActivity;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportScammerStartBuilder.class */
public class ReportScammerStartBuilder {

    /* renamed from: a */
    private static final int[] f13662a = {C1517R.string.report_question_car_warranty, C1517R.string.report_question_irs, C1517R.string.report_question_lottery, C1517R.string.report_question_malware, C1517R.string.report_question_other};

    private ReportScammerStartBuilder() {
        throw new IllegalAccessError("This is a utilty class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m6401a(RadioGroup radioGroup, ViewGroup viewGroup, String[] strArr, HashMap<Integer, String> hashMap, Map<String, Integer> map, Context context, GenericReportActivity.ReportNavigationListener reportNavigationListener, final TextView textView) {
        if (radioGroup.getCheckedRadioButtonId() != -1) {
            int indexOfChild = radioGroup.indexOfChild(viewGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
            String str = strArr[indexOfChild];
            ReportFormItemCreators.m6428r(radioGroup, hashMap, map);
            PreferenceUtils.m5385l("report_scammer_start_pref", indexOfChild);
            LogUtil.m5632o("ReportScammerStart#onNextClick", "user selected " + str);
            reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.SCAMMER_END);
            return;
        }
        textView.setVisibility(0);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.report.n
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                textView.setVisibility(8);
            }
        });
        reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.RESCROLL);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m6395g(final Context context, final ViewGroup viewGroup, ColorStateList colorStateList, final GenericReportActivity.ReportNavigationListener reportNavigationListener, boolean z, final HashMap<Integer, String> hashMap, final Map<String, Integer> map, boolean z2) {
        if (z2) {
            ReportFormItemCreators.m6439g(context, viewGroup, C1517R.string.report_scammer_change, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.NON_OFFENDER);
                }
            });
        }
        ReportFormItemCreators.m6442d(context, viewGroup, 0, 0, 6);
        ReportFormItemCreators.m6430p(C1517R.string.report_non_offender_question, context, viewGroup);
        final TextView j = ReportFormItemCreators.m6436j(context, viewGroup, false);
        final String[] u = ReportFormItemCreators.m6425u(context, f13662a);
        final RadioGroup l = ReportFormItemCreators.m6434l(context, viewGroup, u, ReportFormItemCreators.m6426t(context, f13662a), colorStateList);
        if (z) {
            ReportFormItemCreators.m6429q(l, PreferenceUtils.m5394c("report_scammer_start_pref", -1));
        }
        if (hashMap.isEmpty() || z2) {
            ReportFormItemCreators.m6437i(viewGroup, context, false, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportScammerStartBuilder.m6401a(l, viewGroup, u, hashMap, map, context, reportNavigationListener, j);
                }
            });
        } else {
            ReportFormItemCreators.m6438h(viewGroup, context, false, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportScammerStartBuilder.m6401a(l, viewGroup, u, hashMap, map, context, reportNavigationListener, j);
                }
            }, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.BACK);
                }
            });
        }
    }
}

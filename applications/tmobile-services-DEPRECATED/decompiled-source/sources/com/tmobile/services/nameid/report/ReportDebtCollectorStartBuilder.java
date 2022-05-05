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
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportDebtCollectorStartBuilder.class */
public class ReportDebtCollectorStartBuilder {

    /* renamed from: a */
    private static final int[] f13645a = {C1517R.string.report_question_do_not_owe_caps, C1517R.string.report_question_do_owe_caps, C1517R.string.report_question_someone_else_collection};

    private ReportDebtCollectorStartBuilder() {
        throw new IllegalAccessError("This is a utilty class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m6451a(RadioGroup radioGroup, ViewGroup viewGroup, String[] strArr, HashMap<Integer, String> hashMap, Map<String, Integer> map, Context context, GenericReportActivity.ReportNavigationListener reportNavigationListener, final TextView textView) {
        if (radioGroup.getCheckedRadioButtonId() != -1) {
            int indexOfChild = radioGroup.indexOfChild(viewGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
            String str = strArr[indexOfChild];
            PreferenceUtils.m5385l("report_dc_final_shared_pref", indexOfChild);
            LogUtil.m5632o("reportDebtCollection#onNextClick", "user selected " + str);
            ReportFormItemCreators.m6428r(radioGroup, hashMap, map);
            reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.DEBT_FINAL);
            return;
        }
        textView.setVisibility(0);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.report.e
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                textView.setVisibility(8);
            }
        });
        reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.RESCROLL);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m6446f(final Context context, final ViewGroup viewGroup, ColorStateList colorStateList, final GenericReportActivity.ReportNavigationListener reportNavigationListener, boolean z, final HashMap<Integer, String> hashMap, final Map<String, Integer> map) {
        ReportFormItemCreators.m6442d(context, viewGroup, 0, 0, 6);
        ReportFormItemCreators.m6430p(C1517R.string.report_scam_start_title, context, viewGroup);
        final TextView j = ReportFormItemCreators.m6436j(context, viewGroup, false);
        final String[] u = ReportFormItemCreators.m6425u(context, f13645a);
        final RadioGroup l = ReportFormItemCreators.m6434l(context, viewGroup, u, ReportFormItemCreators.m6426t(context, f13645a), colorStateList);
        if (z) {
            ReportFormItemCreators.m6429q(l, PreferenceUtils.m5394c("report_dc_final_shared_pref", -1));
        }
        if (!hashMap.isEmpty()) {
            ReportFormItemCreators.m6438h(viewGroup, context, false, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportDebtCollectorStartBuilder.m6451a(l, viewGroup, u, hashMap, map, context, reportNavigationListener, j);
                }
            }, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.BACK);
                }
            });
        } else {
            ReportFormItemCreators.m6437i(viewGroup, context, false, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportDebtCollectorStartBuilder.m6451a(l, viewGroup, u, hashMap, map, context, reportNavigationListener, j);
                }
            });
        }
    }
}

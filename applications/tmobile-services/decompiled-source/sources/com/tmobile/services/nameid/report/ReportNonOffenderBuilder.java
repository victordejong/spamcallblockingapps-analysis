package com.tmobile.services.nameid.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.report.GenericReportActivity;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportNonOffenderBuilder.class */
public class ReportNonOffenderBuilder {

    /* renamed from: a */
    private static final int[] f13646a = {C1517R.string.report_non_offender_question_telemarketing, C1517R.string.report_non_offender_question_collections, C1517R.string.report_non_offender_question_scam, C1517R.string.report_non_offender_question_nuisance, C1517R.string.report_non_offender_question_charity, C1517R.string.report_non_offender_question_politcial, C1517R.string.report_non_offender_question_survey, C1517R.string.report_non_offender_question_informational, C1517R.string.report_non_offender_question_prison_jail, C1517R.string.report_non_offender_question_healthcare, C1517R.string.report_non_offender_question_public_services, C1517R.string.report_non_offender_question_other};

    /* renamed from: b */
    private static final int[] f13647b = {54, 53, 55, 64, 56, 57, 58, 65, 66, 67, 68, 60};

    private ReportNonOffenderBuilder() {
        throw new IllegalAccessError("This is a utilty class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m6418b(RadioGroup radioGroup, ViewGroup viewGroup, String[] strArr, HashMap hashMap, GenericReportActivity.ReportNavigationListener reportNavigationListener, final TextView textView, View view) {
        if (radioGroup.getCheckedRadioButtonId() != -1) {
            int indexOfChild = radioGroup.indexOfChild(viewGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
            String str = strArr[indexOfChild];
            LogUtil.m5632o("ReportStartActivity#onNextClick", "user selected " + str);
            hashMap.put(Integer.valueOf(f13647b[indexOfChild]), TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
            PreferenceUtils.m5385l("report_non_offender_pref", indexOfChild);
            LogUtil.m5643d("ReportStartActivity#setupView", "index chosen - " + indexOfChild);
            if (indexOfChild == 1) {
                reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.DEBT_COLLECTOR_START);
            } else if (indexOfChild == 2) {
                reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.SCAMMER_START);
            } else {
                reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.TELEMARKETER_START);
            }
        } else {
            textView.setVisibility(0);
            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.report.j
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                    textView.setVisibility(8);
                }
            });
            reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.RESCROLL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m6417c(Context context, final ViewGroup viewGroup, ColorStateList colorStateList, final GenericReportActivity.ReportNavigationListener reportNavigationListener, boolean z, final HashMap<Integer, String> hashMap, Map<String, Integer> map) {
        final String[] u = ReportFormItemCreators.m6425u(context, f13646a);
        String[] t = ReportFormItemCreators.m6426t(context, f13646a);
        ReportFormItemCreators.m6430p(C1517R.string.report_non_offender_question, context, viewGroup);
        final TextView j = ReportFormItemCreators.m6436j(context, viewGroup, true);
        final RadioGroup l = ReportFormItemCreators.m6434l(context, viewGroup, u, t, colorStateList);
        if (z) {
            ReportFormItemCreators.m6429q(l, PreferenceUtils.m5394c("report_non_offender_pref", -1));
        }
        ReportFormItemCreators.m6437i(viewGroup, context, false, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReportNonOffenderBuilder.m6418b(l, viewGroup, u, hashMap, reportNavigationListener, j, view);
            }
        });
    }
}

package com.allinone.callerid.mvc.controller.report;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.C0586a;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.ReportedContent;
import com.allinone.callerid.bean.SubType;
import com.allinone.callerid.customview.BaseEditText;
import com.allinone.callerid.customview.FlowLayoutManager;
import com.allinone.callerid.dialog.DialogC2594j;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2251y;
import com.allinone.callerid.p157f.C2633g;
import com.allinone.callerid.p162i.p163a.p193w.C2994f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.util.AsyncTaskC3815r0;
import com.allinone.callerid.util.AsyncTaskC3865u0;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity.class */
public class ReportSubtypeActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private String f11317A;

    /* renamed from: B */
    private C2251y f11318B;

    /* renamed from: C */
    private boolean f11319C;

    /* renamed from: D */
    private View f11320D;

    /* renamed from: E */
    private TextView f11321E;

    /* renamed from: F */
    private Intent f11322F;

    /* renamed from: G */
    private FrameLayout f11323G;

    /* renamed from: H */
    private ArrayList<SubType> f11324H;

    /* renamed from: I */
    private TextView f11325I;

    /* renamed from: J */
    private ImageView f11326J;

    /* renamed from: K */
    private DialogC2594j f11327K;

    /* renamed from: L */
    private EZSearchResult f11328L;

    /* renamed from: O */
    private BaseEditText f11331O;

    /* renamed from: P */
    private LinearLayout f11332P;

    /* renamed from: Q */
    private LinearLayout f11333Q;

    /* renamed from: v */
    private RelativeLayout f11335v;

    /* renamed from: w */
    private TextView f11336w;

    /* renamed from: x */
    private String f11337x;

    /* renamed from: y */
    private String f11338y;

    /* renamed from: z */
    private String f11339z;

    /* renamed from: u */
    private final String f11334u = "ReportSubtypeActivity";

    /* renamed from: M */
    private CallLogBean f11329M = null;

    /* renamed from: N */
    private boolean f11330N = false;

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a.class */
    public class C3544a implements C2251y.AbstractC2254b {

        /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a$a.class */
        class RunnableC3545a implements Runnable {
            RunnableC3545a() {
                C3544a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ReportSubtypeActivity.this.m25053w0();
            }
        }

        C3544a() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // com.allinone.callerid.p136b.C2251y.AbstractC2254b
        /* renamed from: a */
        public void mo25049a(SubType subType, boolean z) {
            if (z && ReportSubtypeActivity.this.f11328L != null) {
                C3810q.m24071b().m24070c("subtype_it_mark");
            }
            if (!z && ReportSubtypeActivity.this.f11329M != null) {
                C3810q.m24071b().m24070c("subtype_deletechild");
            }
            ReportSubtypeActivity.this.m25050z0(subType, z, true);
            Intent intent = new Intent();
            intent.setAction("com.allinone.callerid.RELOAD_DATA");
            C1764a.m28939b(ReportSubtypeActivity.this.getApplicationContext()).m28937d(intent);
            if (z) {
                ReportSubtypeActivity.this.runOnUiThread(new RunnableC3545a());
                ReportSubtypeActivity reportSubtypeActivity = ReportSubtypeActivity.this;
                reportSubtypeActivity.m25055u0(reportSubtypeActivity.getApplication(), subType.getTel_number(), ReportSubtypeActivity.this.f11337x, subType.getSubtype_id(), subType.getType(), ReportSubtypeActivity.this.f11339z);
                String m25059q0 = ReportSubtypeActivity.this.m25059q0(subType.getSubtype());
                ReportSubtypeActivity reportSubtypeActivity2 = ReportSubtypeActivity.this;
                reportSubtypeActivity2.m25060p0(reportSubtypeActivity2.f11338y, m25059q0);
                ReportSubtypeActivity.this.m25051y0(subType.getSubtype());
            } else {
                ReportSubtypeActivity.this.m25061o0();
            }
            ReportSubtypeActivity.this.finish();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b.class */
    public class RunnableC3546b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f11342d;

        /* renamed from: e */
        final /* synthetic */ String f11343e;

        RunnableC3546b(String str, String str2) {
            ReportSubtypeActivity.this = r4;
            this.f11342d = str;
            this.f11343e = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C3711a1.m24609N1(C3711a1.m24531i0() + 1);
                ReportedContent reportedContent = new ReportedContent();
                reportedContent.setNumber(this.f11342d);
                reportedContent.setType(this.f11343e);
                reportedContent.setTime(System.currentTimeMillis());
                C2633g.m26997a().m26995c(reportedContent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$c.class */
    public class View$OnClickListenerC3547c implements View.OnClickListener {
        View$OnClickListenerC3547c() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() != 2131297131) {
                return;
            }
            ReportSubtypeActivity.this.f11327K.dismiss();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d.class */
    public class C3548d implements Comparator<SubType> {
        C3548d() {
            ReportSubtypeActivity.this = r4;
        }

        /* renamed from: a */
        public int compare(SubType subType, SubType subType2) {
            return subType2.getCount() - subType.getCount();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$e.class */
    public class C3549e implements Comparator<SubType> {
        C3549e() {
            ReportSubtypeActivity.this = r4;
        }

        /* renamed from: a */
        public int compare(SubType subType, SubType subType2) {
            return subType2.getCount() - subType.getCount();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f.class */
    class RunnableC3550f implements Runnable {
        RunnableC3550f() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) ReportSubtypeActivity.this.f11331O.getContext().getSystemService("input_method");
                if (inputMethodManager == null) {
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(ReportSubtypeActivity.this.f11331O.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$g.class */
    class RunnableC3551g implements Runnable {
        RunnableC3551g() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) ReportSubtypeActivity.this.f11331O.getContext().getSystemService("input_method");
                if (inputMethodManager == null) {
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(ReportSubtypeActivity.this.f11331O.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$h.class */
    class RunnableC3552h implements Runnable {
        RunnableC3552h() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            InputMethodManager inputMethodManager = (InputMethodManager) ReportSubtypeActivity.this.f11331O.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.toggleSoftInput(0, 2);
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$i.class */
    class RunnableC3553i implements Runnable {
        RunnableC3553i() {
            ReportSubtypeActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) ReportSubtypeActivity.this.f11331O.getContext().getSystemService("input_method");
                if (inputMethodManager == null) {
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(ReportSubtypeActivity.this.f11331O.getWindowToken(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: l0 */
    private void m25064l0(JSONObject jSONObject) {
        try {
            SubType subType = new SubType();
            String string = jSONObject.getString("subtype");
            if ("".equals(string) || string == null) {
                return;
            }
            subType.setSubtype(string);
            subType.setSubtype_id(jSONObject.getString("subtype_id"));
            subType.setCount(jSONObject.getInt("count"));
            subType.setType(jSONObject.getString("type"));
            subType.setTel_number(this.f11317A);
            subType.setCc(this.f11339z);
            CallLogBean callLogBean = this.f11329M;
            if (callLogBean != null && string.equals(callLogBean.m24946H())) {
                subType.setCount(subType.getCount() + 1);
                subType.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult = this.f11328L;
            if (eZSearchResult != null && string.equals(eZSearchResult.getSubtype_pdt())) {
                subType.setCount(subType.getCount() + 1);
                subType.setIs_has_bg(true);
                this.f11330N = true;
            }
            this.f11324H.add(subType);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m0 */
    private void m25063m0() {
        ((ImageView) findViewById(R$id.lb_tag_close_two)).setOnClickListener(this);
        this.f11331O = (BaseEditText) findViewById(R$id.editText);
        TextView textView = (TextView) findViewById(R$id.save);
        ((FrameLayout) findViewById(R$id.fl_save)).setOnClickListener(this);
        this.f11332P = (LinearLayout) findViewById(R$id.ll_content);
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.ll_addnew_type);
        this.f11333Q = linearLayout;
        linearLayout.setVisibility(8);
    }

    /* renamed from: n0 */
    private void m25062n0(boolean z) {
        if (z) {
            SubType subType = new SubType();
            subType.setSubtype("Abandoned Call");
            subType.setSubtype_id("abandoned-call");
            subType.setType("Spam");
            subType.setTel_number(this.f11317A);
            subType.setCc(this.f11339z);
            CallLogBean callLogBean = this.f11329M;
            if (callLogBean != null && "Abandoned Call".equals(callLogBean.m24946H())) {
                subType.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult = this.f11328L;
            if (eZSearchResult != null && "Abandoned Call".equals(eZSearchResult.getSubtype_pdt())) {
                subType.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType);
            }
            SubType subType2 = new SubType();
            subType2.setSubtype("Silent Call");
            subType2.setSubtype_id("silent-call");
            subType2.setType("Spam");
            subType2.setTel_number(this.f11317A);
            subType2.setCc(this.f11339z);
            CallLogBean callLogBean2 = this.f11329M;
            if (callLogBean2 != null && "Silent call".equals(callLogBean2.m24946H())) {
                subType2.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult2 = this.f11328L;
            if (eZSearchResult2 != null && "Silent call".equals(eZSearchResult2.getSubtype_pdt())) {
                subType2.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType2);
            }
            SubType subType3 = new SubType();
            subType3.setSubtype("Phishing Scam");
            subType3.setSubtype_id("phishing-scam");
            subType3.setType("Scam");
            subType3.setTel_number(this.f11317A);
            subType3.setCc(this.f11339z);
            CallLogBean callLogBean3 = this.f11329M;
            if (callLogBean3 != null && "Phishing scam".equals(callLogBean3.m24946H())) {
                subType3.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult3 = this.f11328L;
            if (eZSearchResult3 != null && "Phishing scam".equals(eZSearchResult3.getSubtype_pdt())) {
                subType3.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType3);
            }
            SubType subType4 = new SubType();
            subType4.setSubtype("Nuisance Call");
            subType4.setSubtype_id("nuisance-call");
            subType4.setType("Spam");
            subType4.setTel_number(this.f11317A);
            subType4.setCc(this.f11339z);
            CallLogBean callLogBean4 = this.f11329M;
            if (callLogBean4 != null && "Nuisance call".equals(callLogBean4.m24946H())) {
                subType4.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult4 = this.f11328L;
            if (eZSearchResult4 != null && "Nuisance call".equals(eZSearchResult4.getSubtype_pdt())) {
                subType4.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType4);
            }
            SubType subType5 = new SubType();
            subType5.setSubtype("Prizes Scam");
            subType5.setSubtype_id("sweepstakes-lottery-prizes-scam");
            subType5.setType("Scam");
            subType5.setTel_number(this.f11317A);
            subType5.setCc(this.f11339z);
            CallLogBean callLogBean5 = this.f11329M;
            if (callLogBean5 != null && "Prizes scam".equals(callLogBean5.m24946H())) {
                subType5.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult5 = this.f11328L;
            if (eZSearchResult5 != null && "Prizes scam".equals(eZSearchResult5.getSubtype_pdt())) {
                subType5.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType5);
            }
            SubType subType6 = new SubType();
            subType6.setSubtype("Travel Scam");
            subType6.setSubtype_id("travel-scam");
            subType6.setType("Scam");
            subType6.setTel_number(this.f11317A);
            subType6.setCc(this.f11339z);
            CallLogBean callLogBean6 = this.f11329M;
            if (callLogBean6 != null && "Travel scam".equals(callLogBean6.m24946H())) {
                subType6.setIs_has_bg(true);
                this.f11330N = true;
            }
            EZSearchResult eZSearchResult6 = this.f11328L;
            if (eZSearchResult6 != null && "Travel scam".equals(eZSearchResult6.getSubtype_pdt())) {
                subType6.setIs_has_bg(true);
                this.f11330N = true;
            }
            if (this.f11324H.size() < 10) {
                this.f11324H.add(subType6);
            }
            CallLogBean callLogBean7 = this.f11329M;
            if (callLogBean7 != null && !this.f11330N && callLogBean7.m24946H() != null && !"".equals(this.f11329M.m24946H())) {
                SubType subType7 = new SubType();
                subType7.setSubtype(this.f11329M.m24946H());
                subType7.setType("Spam");
                subType7.setTel_number(this.f11317A);
                subType7.setCc(this.f11339z);
                subType7.setIs_has_bg(true);
                subType7.setIs_custom(true);
                this.f11330N = false;
                this.f11324H.add(subType7);
            }
            EZSearchResult eZSearchResult7 = this.f11328L;
            if (eZSearchResult7 == null || this.f11330N || eZSearchResult7.getSubtype_pdt() == null || "".equals(this.f11328L.getSubtype_pdt())) {
                return;
            }
            SubType subType8 = new SubType();
            subType8.setSubtype(this.f11328L.getSubtype_pdt());
            subType8.setType("Spam");
            subType8.setTel_number(this.f11317A);
            subType8.setCc(this.f11339z);
            subType8.setIs_has_bg(true);
            subType8.setIs_custom(true);
            this.f11330N = false;
            this.f11324H.add(subType8);
            return;
        }
        SubType subType9 = new SubType();
        subType9.setSubtype("Abandoned Call");
        subType9.setSubtype_id("abandoned-call");
        subType9.setType("Spam");
        subType9.setTel_number(this.f11317A);
        subType9.setCc(this.f11339z);
        CallLogBean callLogBean8 = this.f11329M;
        if (callLogBean8 != null && "Abandoned Call".equals(callLogBean8.m24946H())) {
            subType9.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult8 = this.f11328L;
        if (eZSearchResult8 != null && "Abandoned Call".equals(eZSearchResult8.getSubtype_pdt())) {
            subType9.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType9);
        SubType subType10 = new SubType();
        subType10.setSubtype("Loan Scam");
        subType10.setSubtype_id("advance-fee-loan-scam");
        subType10.setType("Scam");
        subType10.setTel_number(this.f11317A);
        subType10.setCc(this.f11339z);
        CallLogBean callLogBean9 = this.f11329M;
        if (callLogBean9 != null && "Loan Scam".equals(callLogBean9.m24946H())) {
            subType10.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult9 = this.f11328L;
        if (eZSearchResult9 != null && "Loan Scam".equals(eZSearchResult9.getSubtype_pdt())) {
            subType10.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType10);
        SubType subType11 = new SubType();
        subType11.setSubtype("Caller ID spoofing");
        subType11.setSubtype_id("caller-id-spoofing");
        subType11.setType("Scam");
        subType11.setTel_number(this.f11317A);
        subType11.setCc(this.f11339z);
        CallLogBean callLogBean10 = this.f11329M;
        if (callLogBean10 != null && "Caller ID spoofing".equals(callLogBean10.m24946H())) {
            subType11.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult10 = this.f11328L;
        if (eZSearchResult10 != null && "Caller ID spoofing".equals(eZSearchResult10.getSubtype_pdt())) {
            subType11.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType11);
        SubType subType12 = new SubType();
        subType12.setSubtype("Charity Scam");
        subType12.setSubtype_id("charity-scam");
        subType12.setType("Scam");
        subType12.setTel_number(this.f11317A);
        subType12.setCc(this.f11339z);
        CallLogBean callLogBean11 = this.f11329M;
        if (callLogBean11 != null && "Charity Scam".equals(callLogBean11.m24946H())) {
            subType12.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult11 = this.f11328L;
        if (eZSearchResult11 != null && "Charity Scam".equals(eZSearchResult11.getSubtype_pdt())) {
            subType12.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType12);
        SubType subType13 = new SubType();
        subType13.setSubtype("Computer Scam");
        subType13.setSubtype_id("computer-scam");
        subType13.setType("Scam");
        subType13.setTel_number(this.f11317A);
        subType13.setCc(this.f11339z);
        CallLogBean callLogBean12 = this.f11329M;
        if (callLogBean12 != null && "Computer Scam".equals(callLogBean12.m24946H())) {
            subType13.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult12 = this.f11328L;
        if (eZSearchResult12 != null && "Computer Scam".equals(eZSearchResult12.getSubtype_pdt())) {
            subType13.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType13);
        SubType subType14 = new SubType();
        subType14.setSubtype("Credit Card Scam");
        subType14.setSubtype_id("credit-card-scam");
        subType14.setType("Scam");
        subType14.setTel_number(this.f11317A);
        subType14.setCc(this.f11339z);
        CallLogBean callLogBean13 = this.f11329M;
        if (callLogBean13 != null && "Credit Card Scam".equals(callLogBean13.m24946H())) {
            subType14.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult13 = this.f11328L;
        if (eZSearchResult13 != null && "Credit Card Scam".equals(eZSearchResult13.getSubtype_pdt())) {
            subType14.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType14);
        SubType subType15 = new SubType();
        subType15.setSubtype("Government Grant Scam");
        subType15.setSubtype_id("government-grant-scam");
        subType15.setType("Scam");
        subType15.setTel_number(this.f11317A);
        subType15.setCc(this.f11339z);
        CallLogBean callLogBean14 = this.f11329M;
        if (callLogBean14 != null && "Government Grant Scam".equals(callLogBean14.m24946H())) {
            subType15.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult14 = this.f11328L;
        if (eZSearchResult14 != null && "Government Grant Scam".equals(eZSearchResult14.getSubtype_pdt())) {
            subType15.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType15);
        SubType subType16 = new SubType();
        subType16.setSubtype("Debt Collection Scam");
        subType16.setSubtype_id("debt-collection-scam");
        subType16.setType("Scam");
        subType16.setTel_number(this.f11317A);
        subType16.setCc(this.f11339z);
        CallLogBean callLogBean15 = this.f11329M;
        if (callLogBean15 != null && "Debt Collection Scam".equals(callLogBean15.m24946H())) {
            subType16.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult15 = this.f11328L;
        if (eZSearchResult15 != null && "Debt Collection Scam".equals(eZSearchResult15.getSubtype_pdt())) {
            subType16.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType16);
        SubType subType17 = new SubType();
        subType17.setSubtype("IRS Imposter");
        subType17.setSubtype_id("irs-imposter");
        subType17.setType("Scam");
        subType17.setTel_number(this.f11317A);
        subType17.setCc(this.f11339z);
        CallLogBean callLogBean16 = this.f11329M;
        if (callLogBean16 != null && "IRS Imposter".equals(callLogBean16.m24946H())) {
            subType17.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult16 = this.f11328L;
        if (eZSearchResult16 != null && "IRS Imposter".equals(eZSearchResult16.getSubtype_pdt())) {
            subType17.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType17);
        SubType subType18 = new SubType();
        subType18.setSubtype("Silent Call");
        subType18.setSubtype_id("silent-call");
        subType18.setType("Spam");
        subType18.setTel_number(this.f11317A);
        subType18.setCc(this.f11339z);
        CallLogBean callLogBean17 = this.f11329M;
        if (callLogBean17 != null && "Silent Call".equals(callLogBean17.m24946H())) {
            subType18.setIs_has_bg(true);
            this.f11330N = true;
        }
        EZSearchResult eZSearchResult17 = this.f11328L;
        if (eZSearchResult17 != null && "Silent Call".equals(eZSearchResult17.getSubtype_pdt())) {
            subType18.setIs_has_bg(true);
            this.f11330N = true;
        }
        this.f11324H.add(subType18);
        CallLogBean callLogBean18 = this.f11329M;
        if (callLogBean18 != null && !this.f11330N && callLogBean18.m24946H() != null && !"".equals(this.f11329M.m24946H())) {
            SubType subType19 = new SubType();
            subType19.setSubtype(this.f11329M.m24946H());
            subType19.setType("Spam");
            subType19.setTel_number(this.f11317A);
            subType19.setCc(this.f11339z);
            subType19.setIs_has_bg(true);
            subType19.setIs_custom(true);
            this.f11330N = false;
            this.f11324H.add(subType19);
        }
        EZSearchResult eZSearchResult18 = this.f11328L;
        if (eZSearchResult18 == null || this.f11330N || eZSearchResult18.getSubtype_pdt() == null || "".equals(this.f11328L.getSubtype_pdt())) {
            return;
        }
        SubType subType20 = new SubType();
        subType20.setSubtype(this.f11328L.getSubtype_pdt());
        subType20.setType("Spam");
        subType20.setTel_number(this.f11317A);
        subType20.setCc(this.f11339z);
        subType20.setIs_has_bg(true);
        subType20.setIs_custom(true);
        this.f11330N = false;
        this.f11324H.add(subType20);
    }

    /* renamed from: o0 */
    public void m25061o0() {
        Intent intent = new Intent();
        intent.putExtra("isrefush", true);
        setResult(119, intent);
    }

    /* renamed from: p0 */
    public void m25060p0(String str, String str2) {
        if (str == null || "".equals(str)) {
            return;
        }
        C3772i0.m24190a().f12015b.execute(new RunnableC3546b(str, str2));
    }

    /* renamed from: q0 */
    public String m25059q0(String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -2140531615:
                if (str.equals("Computer Scam")) {
                    z = false;
                    break;
                }
                break;
            case -2083787991:
                if (str.equals("Silent call")) {
                    z = true;
                    break;
                }
                break;
            case -1980433753:
                if (str.equals("IRS Imposter")) {
                    z = true;
                    break;
                }
                break;
            case -1434186415:
                if (str.equals("Debt Collection Scam")) {
                    z = true;
                    break;
                }
                break;
            case -1169951569:
                if (str.equals("Government Grant Scam")) {
                    z = true;
                    break;
                }
                break;
            case -1145426592:
                if (str.equals("Phishing scam")) {
                    z = true;
                    break;
                }
                break;
            case -778967895:
                if (str.equals("Caller ID spoofing")) {
                    z = true;
                    break;
                }
                break;
            case -674292820:
                if (str.equals("Loan Scam")) {
                    z = true;
                    break;
                }
                break;
            case -494032571:
                if (str.equals("Credit Card Scam")) {
                    z = true;
                    break;
                }
                break;
            case -219491234:
                if (str.equals("Nuisance call")) {
                    z = true;
                    break;
                }
                break;
            case 1184402555:
                if (str.equals("Prizes scam")) {
                    z = true;
                    break;
                }
                break;
            case 1284587426:
                if (str.equals("Travel scam")) {
                    z = true;
                    break;
                }
                break;
            case 1887935850:
                if (str.equals("Abandoned Call")) {
                    z = true;
                    break;
                }
                break;
            case 2060815396:
                if (str.equals("Charity scam")) {
                    z = true;
                    break;
                }
                break;
        }
        String str2 = "is_spam";
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
            case true:
                str2 = "is_scam";
                break;
            case true:
            case true:
            case true:
                break;
            default:
                str2 = "is_spam";
                break;
        }
        return str2;
    }

    /* renamed from: r0 */
    private void m25058r0() {
        this.f11324H = new ArrayList<>();
        this.f11322F = getIntent();
        Typeface m24359b = C3739f1.m24359b();
        this.f11321E = (TextView) findViewById(R$id.app_name);
        this.f11325I = (TextView) findViewById(R$id.tv_subtype_right);
        this.f11326J = (ImageView) findViewById(R$id.iv_subtype_right);
        ((TextView) findViewById(R$id.tv_addnewtype)).setTypeface(m24359b);
        this.f11325I.setTypeface(m24359b);
        this.f11335v = (RelativeLayout) findViewById(R$id.rl_close);
        this.f11320D = findViewById(R$id.touying);
        ImageView imageView = (ImageView) findViewById(R$id.lb_tag_close);
        this.f11335v.setOnClickListener(this);
        imageView.setOnClickListener(this);
        this.f11336w = (TextView) findViewById(R$id.tv_tag_number);
        TextView textView = (TextView) findViewById(R$id.tv_tag_title);
        this.f11336w.setTypeface(m24359b);
        textView.setTypeface(m24359b);
        this.f11323G = (FrameLayout) findViewById(R$id.ll_save_or_nosmap);
        ((FrameLayout) findViewById(R$id.ll_newtype)).setOnClickListener(this);
        this.f11323G.setOnClickListener(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recycler_view);
        this.f11318B = new C2251y(this, new ArrayList());
        recyclerView.setLayoutManager(new FlowLayoutManager(this));
        recyclerView.setAdapter(this.f11318B);
        this.f11318B.m27794K(new C3544a());
    }

    /* renamed from: s0 */
    private boolean m25057s0(String str) {
        boolean z = true;
        if (Pattern.compile("[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]").matcher(str).find()) {
            Toast.makeText(EZCallApplication.m26146c(), getResources().getString(R$string.Pleaseenteratypewithoutspecialcharacters), 1).show();
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: t0 */
    private void m25056t0(Context context, String str, String str2, String str3) {
        try {
            if (!C3767h1.m24261a(context)) {
                return;
            }
            String m24265W = C3767h1.m24265W(context);
            if (str2 == null || "".equals(str2)) {
                String str4 = this.f11337x;
                str2 = (str4 == null || "".equals(str4) || !this.f11337x.contains("_")) ? C3806p.m24083d(context).getCountry_code() : this.f11337x.split("_")[0];
            }
            String m24271Q = C3767h1.m24271Q(context, str);
            String m24286G = C3767h1.m24286G();
            if (str == null || "".equals(str) || m24265W == null || "".equals(m24265W) || str2 == null || "".equals(str2) || m24271Q == null || "".equals(m24271Q)) {
                return;
            }
            new AsyncTaskC3815r0(str, "android", m24265W, str2, m24271Q, m24286G, str3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: u0 */
    public void m25055u0(Context context, String str, String str2, String str3, String str4, String str5) {
        if (C3767h1.m24261a(context)) {
            String m24265W = C3767h1.m24265W(context);
            if (str5 == null || "".equals(str5)) {
                str5 = (str2 == null || "".equals(str2)) ? C3806p.m24083d(context).getCountry_code() : str2.split("_")[0];
            }
            String m24271Q = C3767h1.m24271Q(context, str);
            String m24286G = C3767h1.m24286G();
            if (str == null || "".equals(str) || m24265W == null || "".equals(m24265W) || str5 == null || "".equals(str5) || m24271Q == null || "".equals(m24271Q)) {
                return;
            }
            new AsyncTaskC3865u0(str, "android", m24265W, str5, m24271Q, m24286G, str2, str3, str4).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        }
    }

    /* renamed from: v0 */
    private void m25054v0() {
        try {
            Intent intent = this.f11322F;
            if (intent == null) {
                return;
            }
            this.f11328L = (EZSearchResult) intent.getParcelableExtra("contact_subtype");
            this.f11319C = this.f11322F.getBooleanExtra("is_answer_end", false);
            C3810q.m24071b().m24070c("subtype_shownun");
            if (this.f11328L == null) {
                this.f11329M = (CallLogBean) this.f11322F.getParcelableExtra("contact_subtype_activity");
                C3810q.m24071b().m24070c("subtype_pdt_show");
            } else {
                this.f11335v.setBackgroundColor(getResources().getColor(R$color.black));
                this.f11320D.setVisibility(8);
                C3810q.m24071b().m24070c("subtype_it_show");
            }
            EZSearchResult eZSearchResult = this.f11328L;
            if (eZSearchResult == null && this.f11329M == null) {
                return;
            }
            if (eZSearchResult != null) {
                this.f11337x = eZSearchResult.getT_p();
                this.f11338y = this.f11328L.getOld_tel_number();
                this.f11317A = this.f11328L.getTel_number();
                this.f11339z = this.f11328L.getSubtype_cc();
                String subtype = this.f11328L.getSubtype();
                this.f11325I.setText(getResources().getString(R$string.save_small));
                this.f11326J.setImageResource(R$drawable.iv_subtype_add);
                if (subtype == null || "".equals(subtype)) {
                    m25062n0(false);
                } else {
                    C3810q.m24071b().m24070c("subtype_haschildshow");
                    JSONArray jSONArray = new JSONArray(subtype);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        m25064l0((JSONObject) jSONArray.get(i));
                    }
                    ArrayList<SubType> arrayList = this.f11324H;
                    if (arrayList != null && arrayList.size() > 0) {
                        Collections.sort(this.f11324H, new C3548d());
                    }
                    m25062n0(true);
                }
            } else {
                this.f11337x = this.f11329M.m24943J();
                this.f11338y = this.f11329M.m24874s();
                this.f11317A = this.f11329M.m24941K();
                this.f11339z = this.f11329M.m24948G();
                String m24950F = this.f11329M.m24950F();
                this.f11321E.setVisibility(8);
                this.f11325I.setText(getResources().getString(R$string.more_actions));
                this.f11326J.setImageResource(R$drawable.iv_subtype_x);
                if ("".equals(this.f11329M.m24946H())) {
                    this.f11339z = "1";
                    this.f11323G.setVisibility(8);
                }
                if (m24950F == null || "".equals(m24950F)) {
                    m25062n0(false);
                } else {
                    JSONArray jSONArray2 = new JSONArray(m24950F);
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        m25064l0((JSONObject) jSONArray2.get(i2));
                    }
                    ArrayList<SubType> arrayList2 = this.f11324H;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        Collections.sort(this.f11324H, new C3549e());
                    }
                    m25062n0(true);
                }
            }
            ArrayList<SubType> arrayList3 = this.f11324H;
            if (arrayList3 != null && arrayList3.size() > 0) {
                for (int i3 = 0; i3 < this.f11324H.size(); i3++) {
                    for (int size = this.f11324H.size() - 1; size > i3; size--) {
                        if (this.f11324H.get(i3).getSubtype_id().equals(this.f11324H.get(size).getSubtype_id())) {
                            this.f11324H.remove(size);
                        }
                    }
                }
            }
            this.f11336w.setText(this.f11338y);
            this.f11318B.m27781A(this.f11324H, true);
            this.f11318B.m31967i();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: w0 */
    public void m25053w0() {
        try {
            if (Build.VERSION.SDK_INT < 23) {
                m25052x0();
            } else if (Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                m25052x0();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: x0 */
    private void m25052x0() {
        DialogC2594j dialogC2594j = new DialogC2594j(EZCallApplication.m26146c(), R$style.CustomDialog4, new View$OnClickListenerC3547c());
        this.f11327K = dialogC2594j;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                dialogC2594j.getWindow().setType(2038);
            } else {
                dialogC2594j.getWindow().setType(2010);
            }
            this.f11327K.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: y0 */
    public void m25051y0(String str) {
        Intent intent = new Intent();
        intent.putExtra("edittype", str);
        setResult(120, intent);
    }

    /* renamed from: z0 */
    public void m25050z0(SubType subType, boolean z, boolean z2) {
        C2994f.m26293a(subType, z, z2, this.f11338y, this.f11329M);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R$id.fl_save /* 2131296779 */:
                String obj = this.f11331O.getText().toString();
                if (TextUtils.isEmpty(obj)) {
                    Toast.makeText(EZCallApplication.m26146c(), getResources().getString(R$string.Pleaseenteratype), 0).show();
                    return;
                } else if (obj.length() > 100) {
                    Toast.makeText(EZCallApplication.m26146c(), getResources().getString(R$string.Pleaseenteratypelessthan100characters), 0).show();
                    return;
                } else if (m25057s0(obj)) {
                    return;
                } else {
                    SubType subType = new SubType();
                    subType.setSubtype(obj);
                    subType.setType("Spam");
                    subType.setTel_number(this.f11317A);
                    subType.setCc(this.f11339z);
                    m25050z0(subType, true, false);
                    Intent intent = new Intent();
                    intent.setAction("com.allinone.callerid.RELOAD_DATA");
                    C1764a.m28939b(getApplicationContext()).m28937d(intent);
                    if (this.f11328L != null) {
                        C3810q.m24071b().m24070c("subtype_it_commitnewtype");
                    } else {
                        m25051y0(obj);
                        CallLogBean callLogBean = this.f11329M;
                        if (callLogBean != null && !"".equals(callLogBean.m24946H())) {
                            C3810q.m24071b().m24070c("subtype_editchild");
                        }
                    }
                    m25053w0();
                    m25056t0(getApplicationContext(), this.f11317A, this.f11339z, obj);
                    finish();
                    return;
                }
            case R$id.lb_tag_close /* 2131297129 */:
                if (this.f11328L != null) {
                    C3810q.m24071b().m24070c("subtype_it_close");
                }
                if (this.f11319C) {
                    moveTaskToBack(true);
                }
                finish();
                overridePendingTransition(0, R$anim.out_to_up);
                break;
            case R$id.lb_tag_close_two /* 2131297130 */:
                break;
            case R$id.ll_newtype /* 2131297188 */:
                this.f11332P.setVisibility(8);
                this.f11333Q.setVisibility(0);
                this.f11331O.setFocusable(true);
                this.f11331O.setFocusableInTouchMode(true);
                this.f11331O.requestFocus();
                this.f11331O.findFocus();
                new Handler().postDelayed(new RunnableC3552h(), 121L);
                return;
            case R$id.ll_save_or_nosmap /* 2131297200 */:
                if (this.f11328L == null) {
                    C3810q.m24071b().m24070c("subtype_deletechild");
                    m25050z0(null, false, false);
                    Intent intent2 = new Intent();
                    intent2.setAction("com.allinone.callerid.RELOAD_DATA");
                    C1764a.m28939b(getApplicationContext()).m28937d(intent2);
                    m25061o0();
                    finish();
                    return;
                }
                if (!C3767h1.m24216w0(this.f11338y)) {
                    try {
                        Intent intent3 = new Intent("android.intent.action.INSERT_OR_EDIT");
                        intent3.setType("vnd.android.cursor.item/contact");
                        intent3.putExtra("phone", this.f11338y);
                        startActivity(intent3);
                    } catch (Exception e) {
                        e.printStackTrace();
                        try {
                            Intent intent4 = new Intent("android.intent.action.INSERT");
                            intent4.setType("vnd.android.cursor.dir/person");
                            intent4.setType("vnd.android.cursor.dir/contact");
                            intent4.setType("vnd.android.cursor.dir/raw_contact");
                            intent4.putExtra("phone_type", 2);
                            intent4.putExtra("phone", this.f11338y);
                            startActivity(intent4);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                } else {
                    Toast.makeText(EZCallApplication.m26146c(), getResources().getString(R$string.unknow_call), 0).show();
                }
                finish();
                return;
            case R$id.rl_close /* 2131297489 */:
                if (this.f11333Q.getVisibility() == 0) {
                    this.f11333Q.setVisibility(8);
                    this.f11332P.setVisibility(0);
                    new Handler().postDelayed(new RunnableC3550f(), 121L);
                    return;
                }
                if (this.f11328L != null) {
                    C3810q.m24071b().m24070c("subtype_it_back");
                }
                if (this.f11319C) {
                    moveTaskToBack(true);
                }
                finish();
                overridePendingTransition(0, R$anim.out_to_up);
                return;
            default:
                return;
        }
        this.f11333Q.setVisibility(8);
        this.f11332P.setVisibility(0);
        new Handler().postDelayed(new RunnableC3551g(), 121L);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24293C0(this, C0586a.m33350d(this, R$color.transparent));
        setContentView(R$layout.activity_report_subtype);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        m25058r0();
        m25054v0();
        try {
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = (int) (defaultDisplay.getWidth() * 1.0d);
            attributes.alpha = 1.0f;
            attributes.dimAmount = 0.0f;
            getWindow().setAttributes(attributes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        m25063m0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.f11331O.setOnEditorActionListener(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.f11333Q.getVisibility() == 0) {
                this.f11333Q.setVisibility(8);
                this.f11332P.setVisibility(0);
                new Handler().postDelayed(new RunnableC3553i(), 121L);
                return true;
            }
            if (this.f11328L != null) {
                C3810q.m24071b().m24070c("subtype_it_back");
            }
            if (this.f11319C) {
                moveTaskToBack(true);
            }
            finish();
            overridePendingTransition(0, R$anim.out_to_up);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        C3810q.m24071b().m24070c("subtype_activity");
        super.onResume();
    }
}

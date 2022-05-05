package com.tmobile.services.nameid.report;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.ReportItem;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javax.annotation.Nullable;
import retrofit2.HttpException;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/GenericReportActivity.class */
public class GenericReportActivity extends AppCompatActivity {

    /* renamed from: f */
    ScrollView f13629f;

    /* renamed from: g */
    TextView f13630g;

    /* renamed from: h */
    TextView f13631h;

    /* renamed from: i */
    TextView f13632i;

    /* renamed from: o */
    protected ColorStateList f13638o;

    /* renamed from: p */
    protected LinearLayout f13639p;

    /* renamed from: r */
    private ReportPresenter f13641r;

    /* renamed from: j */
    protected String f13633j = "";

    /* renamed from: k */
    protected String f13634k = "";

    /* renamed from: l */
    protected String f13635l = "";

    /* renamed from: m */
    protected int f13636m = -1;

    /* renamed from: n */
    protected String f13637n = "";

    /* renamed from: q */
    private boolean f13640q = false;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/GenericReportActivity$ReportNavigation.class */
    public enum ReportNavigation {
        NON_OFFENDER,
        DEBT_COLLECTOR_START,
        DEBT_FINAL,
        TELEMARKETER_START,
        TELEMARKETER_FINAL,
        THANK_YOU,
        SCAMMER_START,
        SCAMMER_END,
        BACK,
        RESCROLL,
        NONE
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/GenericReportActivity$ReportNavigationListener.class */
    public interface ReportNavigationListener {
        /* renamed from: a */
        void mo6384a(ReportNavigation reportNavigation);
    }

    /* renamed from: l */
    private int m6461l(List<ReportItem> list) {
        HashSet hashSet = new HashSet(Arrays.asList(54, 53, 55, 64, 56, 57, 58, 65, 66, 67, 68, 60));
        for (ReportItem reportItem : list) {
            int n = m6459n(reportItem.getQuestion());
            if (hashSet.contains(Integer.valueOf(n))) {
                return n;
            }
        }
        return 60;
    }

    /* renamed from: n */
    private int m6459n(@NonNull String str) {
        try {
            return Integer.parseInt(str);
        } catch (Throwable th) {
            return 60;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f13640q) {
            MainApplication.m7553C("complaint_filed", new String[]{"result"}, new String[]{FirebaseAnalytics.Param.SUCCESS});
            AnalyticsWrapper.m5883E("ReportActivity", "complaint_filed");
        } else {
            MainApplication.m7553C("complaint_filed", new String[]{"result"}, new String[]{"cancelled"});
            AnalyticsWrapper.m5883E("ReportActivity", "complaint_cancelled");
        }
        super.finish();
    }

    /* renamed from: j */
    public void m6463j(final boolean z, final ReportNavigation reportNavigation) {
        float width = this.f13639p.getWidth();
        float f = width;
        if (z) {
            f = width * (-1.0f);
        }
        this.f13639p.animate().translationX(f).setDuration(150L).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.tmobile.services.nameid.report.GenericReportActivity.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GenericReportActivity.this.f13641r.m6411f(reportNavigation, !z);
            }
        });
    }

    /* renamed from: k */
    public void m6462k(List<ReportItem> list, final boolean z) {
        final String s = PhoneNumberHelper.m5400s(this.f13637n);
        final int l = m6461l(list);
        Observable<Response<Void>> f0 = ApiWrapper.m6778f0(list);
        if (f0 != null) {
            f0.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.report.b
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    GenericReportActivity.this.m6456q(s, l, z, (Response) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.report.a
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    GenericReportActivity.this.m6455r(s, l, (Throwable) obj);
                }
            });
        }
    }

    /* renamed from: m */
    public ColorStateList m6460m() {
        return this.f13638o;
    }

    /* renamed from: o */
    public LinearLayout m6458o() {
        return this.f13639p;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r3v1, types: [int[], int[][]] */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_report_start);
        getWindow().setSoftInputMode(3);
        this.f13629f = (ScrollView) findViewById(C1517R.C1520id.report_scroll_view);
        this.f13630g = (TextView) findViewById(C1517R.C1520id.report_header_1);
        this.f13631h = (TextView) findViewById(C1517R.C1520id.report_header_2);
        this.f13632i = (TextView) findViewById(C1517R.C1520id.report_header_3);
        setSupportActionBar((Toolbar) findViewById(2131231756));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo22115A(getString(C1517R.string.report_title));
        }
        if (getIntent().hasExtra("number") && getIntent().hasExtra("name") && getIntent().hasExtra("category") && getIntent().hasExtra("bucketId") && getIntent().hasExtra("numberAsInput")) {
            this.f13633j = getIntent().getStringExtra("name");
            this.f13634k = getIntent().getStringExtra("number");
            this.f13635l = getIntent().getStringExtra("category");
            this.f13636m = getIntent().getIntExtra("bucketId", -1);
            this.f13637n = getIntent().getStringExtra("numberAsInput");
        }
        this.f13638o = new ColorStateList(new int[]{new int[0]}, new int[]{getResources().getColor(C1517R.C1518color.pale_teal)});
        ReportPresenter reportPresenter = new ReportPresenter(this);
        this.f13641r = reportPresenter;
        reportPresenter.m6406k(this.f13633j);
        this.f13641r.m6405l(this.f13634k);
        this.f13641r.m6407j(this.f13635l);
        this.f13641r.m6408i(this.f13636m);
        this.f13641r.m6404m(this.f13637n);
        String[] e = this.f13641r.m6412e();
        this.f13630g.setText(e[0]);
        this.f13631h.setText(e[1]);
        this.f13632i.setText(e[2]);
        if (e[0].isEmpty()) {
            this.f13630g.setVisibility(8);
        }
        if (e[2].isEmpty()) {
            this.f13631h.setVisibility(8);
        }
        this.f13641r.m6403n();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1517R.C1522menu.report_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131231029) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* renamed from: p */
    public void m6457p() {
        super.onBackPressed();
    }

    /* renamed from: q */
    public /* synthetic */ void m6456q(String str, int i, boolean z, Response response) throws Exception {
        this.f13640q = true;
        LogUtil.m5632o("GenericReportActivity#", "Successfully sent report");
        EventManager.m5725a(this, "Complaint_Filed");
        AnalyticsWrapper.m5868l(str, this.f13633j, this.f13636m, i, true, 201);
        finish();
        Intent intent = new Intent(this, ReportThankYouActivity.class);
        intent.putExtra("is_scammer", z);
        startActivity(intent);
    }

    /* renamed from: r */
    public /* synthetic */ void m6455r(String str, int i, Throwable th) throws Exception {
        MainApplication.m7553C("complaint_filed", new String[]{"result"}, new String[]{Constants.IPC_BUNDLE_KEY_SEND_ERROR});
        if (th instanceof HttpException) {
            AnalyticsWrapper.m5868l(str, this.f13633j, this.f13636m, i, false, ((HttpException) th).code());
        } else {
            AnalyticsWrapper.m5867m(str, this.f13633j, this.f13636m, i, false, "");
        }
        LogUtil.m5641f("GenericReportActivity#", "Error sending report", th);
        WidgetUtils.m5237e0(this);
    }

    /* renamed from: s */
    public void m6454s() {
        this.f13629f.scrollTo(0, 0);
    }

    /* renamed from: t */
    public void m6453t() {
        this.f13629f.removeAllViews();
        LinearLayout linearLayout = new LinearLayout(this);
        this.f13639p = linearLayout;
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f13639p.setOrientation(1);
        this.f13629f.addView(this.f13639p);
        this.f13629f.scrollTo(0, 0);
    }
}

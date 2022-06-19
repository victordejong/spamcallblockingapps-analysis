package com.allinone.callerid.mvc.controller.report;

import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.AbstractC0752q;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.mvc.view.recorder.LTabIndicator;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3720d;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity.class */
public class ReportListActivity extends BaseActivity {

    /* renamed from: u */
    private Tab[] f11307u = {Tab.REPORTLIST, Tab.MYREPORTLIST};

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity$Tab.class */
    public enum Tab {
        REPORTLIST(C3720d.m24424f()),
        MYREPORTLIST(C3720d.m24425e());
        
        private final String name;

        Tab(String str) {
            this.name = str;
        }

        public boolean equalsName(String str) {
            return str != null && this.name.equals(str);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportListActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity$a.class */
    public class RunnableC3540a implements Runnable {

        /* renamed from: com.allinone.callerid.mvc.controller.report.ReportListActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity$a$a.class */
        class View$OnClickListenerC3541a implements View.OnClickListener {
            View$OnClickListenerC3541a() {
                RunnableC3540a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ReportListActivity.this.finish();
                ReportListActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            }
        }

        RunnableC3540a() {
            ReportListActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView = (TextView) ReportListActivity.this.findViewById(R$id.tv_title_contribution);
            ImageView imageView = (ImageView) ReportListActivity.this.findViewById(R$id.header_left_about);
            if (C3767h1.m24250f0(ReportListActivity.this.getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3541a());
            textView.setTypeface(C3739f1.m24359b());
            CustomViewPager customViewPager = (CustomViewPager) ReportListActivity.this.findViewById(R$id.main_vp);
            LTabIndicator lTabIndicator = (LTabIndicator) ReportListActivity.this.findViewById(R$id.main_tpi);
            lTabIndicator.f11411r = C3719c1.m24432a(ReportListActivity.this, R$attr.color_blue_tab_text_unselected, R$color.color_99ffffff);
            lTabIndicator.f11410q = C3719c1.m24432a(ReportListActivity.this, R$attr.color_title, R$color.color_ffffff);
            lTabIndicator.setIndicatorColor(C3719c1.m24432a(ReportListActivity.this, R$attr.color_title, R$color.color_ffffff));
            lTabIndicator.f11390B = 16;
            lTabIndicator.f11412s = 0;
            customViewPager.setAdapter(new C3543c(ReportListActivity.this.m32877A(), ReportListActivity.this.f11307u));
            lTabIndicator.setViewPager(customViewPager);
            customViewPager.setOffscreenPageLimit(2);
            customViewPager.setCurrentItem(0);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportListActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity$b.class */
    static /* synthetic */ class C3542b {

        /* renamed from: a */
        static final /* synthetic */ int[] f11313a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Tab.values().length];
            f11313a = iArr;
            try {
                iArr[Tab.REPORTLIST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11313a[Tab.MYREPORTLIST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.report.ReportListActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/report/ReportListActivity$c.class */
    private static class C3543c extends AbstractC0752q {

        /* renamed from: j */
        private static final Field f11314j;

        /* renamed from: k */
        Fragment[] f11315k;

        /* renamed from: l */
        Tab[] f11316l;

        static {
            Field field = null;
            try {
                Field declaredField = Class.forName("android.support.v4.app.FragmentManagerImpl").getDeclaredField("mActive");
                field = declaredField;
                declaredField.setAccessible(true);
                field = declaredField;
            } catch (Exception e) {
                e.printStackTrace();
            }
            f11314j = field;
        }

        public C3543c(FragmentManager fragmentManager, Tab[] tabArr) {
            super(fragmentManager);
            this.f11316l = tabArr;
            this.f11315k = new Fragment[tabArr.length];
            try {
                ArrayList arrayList = (ArrayList) f11314j.get(fragmentManager);
                if (arrayList == null) {
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Fragment fragment = (Fragment) it.next();
                    if (fragment instanceof C3558b) {
                        m25079w(Tab.REPORTLIST, fragment);
                    } else if (fragment instanceof C3554a) {
                        m25079w(Tab.MYREPORTLIST, fragment);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: w */
        private void m25079w(Tab tab, Fragment fragment) {
            int i = 0;
            while (true) {
                Tab[] tabArr = this.f11316l;
                if (i < tabArr.length) {
                    if (tabArr[i] == tab) {
                        this.f11315k[i] = fragment;
                        return;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: e */
        public int mo25082e() {
            return this.f11315k.length;
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: g */
        public CharSequence mo25081g(int i) {
            return i == 0 ? C3720d.m24424f() : i == 1 ? C3720d.m24425e() : this.f11316l[i].toString();
        }

        @Override // androidx.fragment.app.AbstractC0752q
        /* renamed from: v */
        public Fragment mo25080v(int i) {
            if (this.f11315k[i] == null) {
                int i2 = C3542b.f11313a[this.f11316l[i].ordinal()];
                if (i2 == 1) {
                    this.f11315k[i] = C3558b.m25014f2();
                } else if (i2 == 2) {
                    this.f11315k[i] = C3554a.m25023x2();
                }
            }
            return this.f11315k[i];
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_report_list);
        if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        getWindow().getDecorView().post(new RunnableC3540a());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
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
        super.onResume();
    }
}

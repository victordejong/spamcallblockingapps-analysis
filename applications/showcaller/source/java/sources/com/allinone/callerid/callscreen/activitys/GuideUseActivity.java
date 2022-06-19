package com.allinone.callerid.callscreen.activitys;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.AbstractC1197a;
import androidx.viewpager.widget.ViewPager;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.customview.CirclePageIndicator;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.CustomViewPager;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3810q;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/GuideUseActivity.class */
public class GuideUseActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private TextView f8349A;

    /* renamed from: B */
    private FrameLayout f8350B;

    /* renamed from: C */
    private TextView f8351C;

    /* renamed from: D */
    private ArrayList<View> f8352D;

    /* renamed from: u */
    private final String f8353u = "GuideUseActivity";

    /* renamed from: v */
    private Typeface f8354v;

    /* renamed from: w */
    private CustomViewPager f8355w;

    /* renamed from: x */
    private ImageView f8356x;

    /* renamed from: y */
    private CirclePageIndicator f8357y;

    /* renamed from: z */
    private TextView f8358z;

    /* renamed from: com.allinone.callerid.callscreen.activitys.GuideUseActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/GuideUseActivity$a.class */
    public class C2395a implements ViewPager.AbstractC1193i {
        C2395a() {
            GuideUseActivity.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: a */
        public void mo4098a(int i, float f, int i2) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("scollpage", "当前页：" + i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: c */
        public void mo4096c(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1193i
        /* renamed from: d */
        public void mo4095d(int i) {
            if (i == 0) {
                GuideUseActivity.this.f8358z.setText(GuideUseActivity.this.getResources().getString(R$string.guide_title_one));
                GuideUseActivity.this.f8349A.setText(GuideUseActivity.this.getResources().getString(R$string.guide_context_one));
                GuideUseActivity.this.f8351C.setText(GuideUseActivity.this.getResources().getString(R$string.tv_next));
            } else if (i == 1) {
                GuideUseActivity.this.f8358z.setText(GuideUseActivity.this.getResources().getString(R$string.guide_title_two));
                GuideUseActivity.this.f8349A.setText(GuideUseActivity.this.getResources().getString(R$string.guide_context_two));
                GuideUseActivity.this.f8351C.setText(GuideUseActivity.this.getResources().getString(R$string.tv_next));
            } else if (i != 2) {
            } else {
                GuideUseActivity.this.f8358z.setText(GuideUseActivity.this.getResources().getString(R$string.guide_title_three));
                GuideUseActivity.this.f8349A.setText(GuideUseActivity.this.getResources().getString(R$string.guide_context_three));
                GuideUseActivity.this.f8351C.setText(GuideUseActivity.this.getResources().getString(R$string.tip_show2));
            }
        }
    }

    /* renamed from: com.allinone.callerid.callscreen.activitys.GuideUseActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/GuideUseActivity$b.class */
    public static class C2396b extends AbstractC1197a {

        /* renamed from: c */
        List<View> f8360c;

        /* renamed from: com.allinone.callerid.callscreen.activitys.GuideUseActivity$b$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/GuideUseActivity$b$a.class */
        class View$OnClickListenerC2397a implements View.OnClickListener {
            View$OnClickListenerC2397a() {
                C2396b.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }

        C2396b(List<View> list) {
            this.f8360c = list;
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: b */
        public void mo27516b(ViewGroup viewGroup, int i, Object obj) {
            List<View> list = this.f8360c;
            if (list == null || list.size() <= i || this.f8360c.get(i) == null) {
                return;
            }
            viewGroup.removeView(this.f8360c.get(i));
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: e */
        public int mo25082e() {
            return this.f8360c.size();
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: j */
        public Object mo27515j(ViewGroup viewGroup, int i) {
            try {
                viewGroup.addView(this.f8360c.get(i), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f8360c.get(i).setOnClickListener(new View$OnClickListenerC2397a());
            return this.f8360c.get(i);
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: k */
        public boolean mo27514k(View view, Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: n */
        public void mo27513n(Parcelable parcelable, ClassLoader classLoader) {
            super.mo27513n(parcelable, classLoader);
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: o */
        public Parcelable mo27512o() {
            return super.mo27512o();
        }

        @Override // androidx.viewpager.widget.AbstractC1197a
        /* renamed from: t */
        public void mo27511t(ViewGroup viewGroup) {
            super.mo27511t(viewGroup);
        }
    }

    /* renamed from: C */
    private void m27521C() {
        this.f8355w = (CustomViewPager) findViewById(R$id.vp_guide);
        this.f8356x = (ImageView) findViewById(R$id.iv_close);
        this.f8357y = (CirclePageIndicator) findViewById(R$id.vp_indicator);
        this.f8358z = (TextView) findViewById(R$id.tv_title);
        this.f8349A = (TextView) findViewById(R$id.tv_context);
        this.f8350B = (FrameLayout) findViewById(R$id.flayout_btn);
        this.f8351C = (TextView) findViewById(R$id.tv_btn);
        this.f8356x.setOnClickListener(this);
        this.f8350B.setOnClickListener(this);
        this.f8358z.setTypeface(this.f8354v);
        this.f8349A.setTypeface(this.f8354v);
        this.f8351C.setTypeface(this.f8354v);
    }

    /* renamed from: a0 */
    private void m27517a0() {
        ArrayList<View> arrayList = this.f8352D;
        if (arrayList == null) {
            this.f8352D = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        for (int i = 0; i < 3; i++) {
            this.f8352D.add(getLayoutInflater().inflate(new int[]{R$layout.view_guide_one, R$layout.view_guide_two, R$layout.view_guide_three}[i], (ViewGroup) null, false));
        }
        this.f8355w.setAdapter(new C2396b(this.f8352D));
        this.f8355w.m30744c(new C2395a());
        float f = getResources().getDisplayMetrics().density;
        this.f8357y.setRadius(4.0f * f);
        this.f8357y.setPageColor(getResources().getColor(R$color.vp_unselect));
        this.f8357y.setFillColor(getResources().getColor(R$color.vp_select));
        this.f8357y.setStrokeColor(getResources().getColor(R$color.vp_unselect));
        this.f8357y.setPaddind(f * 6.0f);
        this.f8357y.setViewPager(this.f8355w);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131296815) {
            if (id != 2131296970) {
                return;
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return;
        }
        int currentItem = this.f8355w.getCurrentItem();
        if (currentItem == 0) {
            this.f8355w.setCurrentItem(1);
        } else if (currentItem == 1) {
            this.f8355w.setCurrentItem(2);
        } else if (currentItem != 2) {
        } else {
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            C3810q.m24071b().m24070c("callscreen_user_guide_gotit");
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_callscreen_guide_use);
        this.f8354v = C3739f1.m24359b();
        m27521C();
        m27517a0();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
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

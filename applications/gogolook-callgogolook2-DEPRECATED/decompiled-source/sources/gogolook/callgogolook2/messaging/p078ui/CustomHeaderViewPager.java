package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p474c0.p491g.AbstractC12093j;
import p459j.p460a.p474c0.p491g.C12094k;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: gogolook.callgogolook2.messaging.ui.CustomHeaderViewPager */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/CustomHeaderViewPager.class */
public class CustomHeaderViewPager extends LinearLayout {

    /* renamed from: a */
    public final int f11474a;

    /* renamed from: c */
    public ViewPagerTabs f11476c = (ViewPagerTabs) findViewById(R$id.tab_strip);

    /* renamed from: b */
    public ViewPager f11475b = (ViewPager) findViewById(R$id.pager);

    /* renamed from: gogolook.callgogolook2.messaging.ui.CustomHeaderViewPager$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/CustomHeaderViewPager$a.class */
    public class C4690a implements ViewPager.OnPageChangeListener {
        public C4690a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            CustomHeaderViewPager.this.f11476c.onPageScrollStateChanged(i);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            CustomHeaderViewPager.this.f11476c.onPageScrolled(i, f, i2);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            CustomHeaderViewPager.this.f11476c.onPageSelected(i);
        }
    }

    public CustomHeaderViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R$layout.custom_header_view_pager, (ViewGroup) this, true);
        setOrientation(1);
        this.f11474a = context.getResources().getDimensionPixelSize(R$dimen.app_contact_picker_strip_height);
    }

    /* renamed from: a */
    public void m27370a(int i) {
        this.f11475b.setCurrentItem(i);
    }

    /* renamed from: a */
    public void m27368a(AbstractC12093j[] jVarArr) {
        C12151d.m7000b(this.f11475b);
        this.f11475b.setAdapter(new C12094k(jVarArr));
        this.f11476c.m27298a(this.f11475b);
        this.f11475b.setOnPageChangeListener(new C4690a());
    }

    /* renamed from: b */
    public void m27367b(int i) {
        ViewGroup.LayoutParams layoutParams = this.f11476c.getLayoutParams();
        int i2 = i;
        if (i == -1) {
            i2 = this.f11474a;
        }
        layoutParams.height = i2;
    }
}

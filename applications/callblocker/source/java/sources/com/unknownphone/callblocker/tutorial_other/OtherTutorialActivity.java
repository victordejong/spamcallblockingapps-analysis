package com.unknownphone.callblocker.tutorial_other;

import android.os.Bundle;
import androidx.appcompat.app.ActivityC0116c;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.AbstractC0692m;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/OtherTutorialActivity.class */
public class OtherTutorialActivity extends ActivityC0116c {

    /* renamed from: com.unknownphone.callblocker.tutorial_other.OtherTutorialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/OtherTutorialActivity$a.class */
    private class C5387a extends AbstractC0692m {

        /* renamed from: b */
        private ViewPager f22424b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5387a(AbstractC0670i abstractC0670i, ViewPager viewPager) {
            super(abstractC0670i, 1);
            OtherTutorialActivity.this = r5;
            this.f22424b = viewPager;
        }

        @Override // androidx.fragment.app.AbstractC0692m
        /* renamed from: a */
        public Fragment mo869a(int i) {
            Fragment m851a;
            switch (i) {
                case 1:
                    m851a = View$OnClickListenerC5390b.m863a(this.f22424b);
                    break;
                case 2:
                    m851a = View$OnClickListenerC5392c.m859a(this.f22424b);
                    break;
                case 3:
                    m851a = View$OnClickListenerC5394d.m855a(this.f22424b);
                    break;
                case 4:
                    m851a = View$OnClickListenerC5396e.m851a();
                    break;
                default:
                    m851a = View$OnClickListenerC5388a.m867a(this.f22424b);
                    break;
            }
            return m851a;
        }

        @Override // androidx.viewpager.widget.AbstractC1099a
        /* renamed from: b */
        public int mo868b() {
            return 5;
        }
    }

    @Override // androidx.appcompat.app.ActivityC0116c, androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492905);
        ViewPager viewPager = (ViewPager) findViewById(2131296746);
        ((TabLayout) findViewById(2131296689)).m2459a(viewPager, true);
        viewPager.setAdapter(new C5387a(m19874m(), viewPager));
    }
}

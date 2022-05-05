package com.privacystar.core.p011ui.walkthrough;

import android.os.Bundle;
import android.support.p001v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.walkthrough.WalkthroughActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/walkthrough/WalkthroughActivity.class */
public class WalkthroughActivity extends PSActivity {
    private static final int[] images = {C1566R.C1568drawable.walkthrough_screen_1, C1566R.C1568drawable.walkthrough_screen_2, C1566R.C1568drawable.walkthrough_screen_3};
    @BindView(C1566R.C1569id.walkthrough_close_container)
    LinearLayout closeContainer;
    @BindView(C1566R.C1569id.walkthrough_dot_holder)
    LinearLayout dotHolder;
    @BindView(C1566R.C1569id.walkthrough_subtitle)
    TextView subtitle;
    @BindView(C1566R.C1569id.walkthrough_title)
    TextView title;
    @BindView(C1566R.C1569id.viewpager_walkthrough)
    ViewPager viewPager;
    private ImageView[] dots = new ImageView[images.length];
    ViewPager.OnPageChangeListener viewPagerPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.privacystar.core.ui.walkthrough.WalkthroughActivity.1
        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            WalkthroughActivity.this.selectDot(i);
            WalkthroughActivity.this.updateText(i);
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    };
    View.OnClickListener onDotClickListener = new View.OnClickListener(this) { // from class: com.privacystar.core.ui.walkthrough.WalkthroughActivity$$Lambda$0
        private final WalkthroughActivity arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.arg$1.lambda$new$0$WalkthroughActivity(view);
        }
    };

    private void close() {
        Timber.m37d("Closing Walkthrough.", new Object[0]);
        finish();
    }

    private void createDots() {
        int i = 0;
        while (i < images.length) {
            this.dots[i] = new ImageView(this);
            if (i == 0) {
                this.dots[i].setImageResource(C1566R.C1568drawable.walkthrough_page_selected_dot);
            } else {
                this.dots[i].setImageResource(C1566R.C1568drawable.walkthrough_page_unselected_dot);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            int dpToPx = DensityUtil.dpToPx(this, 9);
            this.dots[i].setPadding(dpToPx, dpToPx, dpToPx, dpToPx);
            this.dots[i].setLayoutParams(layoutParams);
            ImageView imageView = this.dots[i];
            imageView.setTag("dot" + i);
            this.dots[i].setOnClickListener(this.onDotClickListener);
            ImageView imageView2 = this.dots[i];
            StringBuilder sb = new StringBuilder();
            sb.append(getString(C1566R.string.con_desc_walkthrough_page));
            int i2 = i + 1;
            sb.append(i2);
            imageView2.setContentDescription(sb.toString());
            this.dotHolder.addView(this.dots[i]);
            i = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectDot(int i) {
        for (int i2 = 0; i2 < images.length; i2++) {
            if (i2 == i) {
                this.dots[i2].setImageResource(C1566R.C1568drawable.walkthrough_page_selected_dot);
            } else {
                this.dots[i2].setImageResource(C1566R.C1568drawable.walkthrough_page_unselected_dot);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateText(int i) {
        String[] stringArray = getResources().getStringArray(C1566R.array.walkthrough_titles);
        String[] stringArray2 = getResources().getStringArray(C1566R.array.walkthrough_subtitles);
        int min = Math.min(stringArray.length, stringArray2.length);
        if (i < 0 || i >= min) {
            Timber.m25w("Tried to get text from array at index [%d] which is out of bounds. (Length: [%d])", Integer.valueOf(i), Integer.valueOf(min));
            return;
        }
        this.title.setText(stringArray[i]);
        this.subtitle.setText(stringArray2[i]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$WalkthroughActivity(View view) {
        for (int i = 0; i < this.dots.length; i++) {
            if (this.dots[i].getTag().equals(view.getTag())) {
                this.viewPager.setCurrentItem(i);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onCreate$1$WalkthroughActivity(View view) {
        close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (restartAppIfPermissionsMissing()) {
            finishAffinity();
            return;
        }
        setContentView(C1566R.C1571layout.activity_walkthrough);
        AnalyticsUtil.INSTANCE.trackDetailView(getClass().getName());
        ButterKnife.bind(this);
        this.viewPager.setAdapter(new WalkthroughImageAdapter(this, images));
        this.viewPager.addOnPageChangeListener(this.viewPagerPageChangeListener);
        this.closeContainer.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.walkthrough.WalkthroughActivity$$Lambda$1
            private final WalkthroughActivity arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$onCreate$1$WalkthroughActivity(view);
            }
        });
        createDots();
        updateText(0);
    }
}

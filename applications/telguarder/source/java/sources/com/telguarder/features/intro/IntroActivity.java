package com.telguarder.features.intro;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.telguarder.C2083R;
import com.telguarder.features.main.MainActivity;
import com.telguarder.features.userConsentHandling.NumberLookupConsentActivity;
import com.telguarder.features.userConsentHandling.TcfConsentManager;
import com.telguarder.helpers.p022ui.UiHelper;
import com.telguarder.helpers.p022ui.ViewPagerIndicator;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Vector;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroActivity.class */
public class IntroActivity extends AppCompatActivity {
    private int lFlags;
    public int mBottomPaddingOffset = 0;
    private Button mNextButton;
    private ViewPager mViewPager;

    public static void openIntroActivity(AppCompatActivity appCompatActivity) {
        Intent intent = new Intent(appCompatActivity, IntroActivity.class);
        intent.setFlags(131072);
        appCompatActivity.startActivity(intent);
    }

    public void setupNavBarColors() {
        if (Build.VERSION.SDK_INT >= 26) {
            Window window = getWindow();
            if (this.mViewPager.getCurrentItem() > 0) {
                window.getDecorView().setSystemUiVisibility(this.lFlags | 8192 | 16);
            } else {
                window.getDecorView().setSystemUiVisibility(this.lFlags | 8192);
            }
        }
    }

    private void setupPager() {
        Vector vector = new Vector();
        vector.add(Fragment.instantiate(this, IntroPage1.class.getName()));
        vector.add(Fragment.instantiate(this, IntroPage2.class.getName()));
        vector.add(Fragment.instantiate(this, IntroPage3.class.getName()));
        vector.add(Fragment.instantiate(this, IntroPage4.class.getName()));
        this.mNextButton = (Button) findViewById(C2083R.C2086id.welcome_next_button);
        ViewPagerIndicator viewPagerIndicator = (ViewPagerIndicator) findViewById(C2083R.C2086id.view_pager_indicator);
        ViewPager viewPager = (ViewPager) findViewById(C2083R.C2086id.view_pager);
        this.mViewPager = viewPager;
        viewPager.setAdapter(new IntroPageFragmentAdapter(super.getSupportFragmentManager(), vector));
        viewPagerIndicator.setupWithViewPager(this.mViewPager);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.telguarder.features.intro.IntroActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                IntroActivity.this.mNextButton.setText(IntroActivity.this.mViewPager.getCurrentItem() < 3 ? 2131755281 : 2131755428);
                IntroActivity.this.setupNavBarColors();
            }
        });
        if (this.mBottomPaddingOffset > 0) {
            LinearLayout linearLayout = (LinearLayout) findViewById(C2083R.C2086id.view_pager_layout);
            linearLayout.setPadding(linearLayout.getPaddingStart(), linearLayout.getPaddingTop(), linearLayout.getPaddingEnd(), this.mBottomPaddingOffset);
        }
        this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.telguarder.features.intro.IntroActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (IntroActivity.this.mViewPager.getCurrentItem() < 3) {
                    IntroActivity.this.mViewPager.setCurrentItem(IntroActivity.this.mViewPager.getCurrentItem() + 1, true);
                } else {
                    IntroActivity.this.startNextActivity();
                }
            }
        });
    }

    public void startNextActivity() {
        if (isFinishing()) {
            return;
        }
        TcfConsentManager.getInstance().requestConsent(this, new Runnable() { // from class: com.telguarder.features.intro._$$Lambda$IntroActivity$y3LWh2JhRZPmRJPK15NYdhMlS6s
            @Override // java.lang.Runnable
            public final void run() {
                IntroActivity.this.lambda$startNextActivity$0$IntroActivity();
            }
        });
    }

    public /* synthetic */ void lambda$startNextActivity$0$IntroActivity() {
        if (!PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            NumberLookupConsentActivity.openNumberLookupConsentActivity(this, false, false);
        } else {
            MainActivity.openMainActivity(this, false);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ViewPager viewPager = this.mViewPager;
        if (viewPager == null || viewPager.getCurrentItem() <= 0) {
            super.onBackPressed();
            return;
        }
        ViewPager viewPager2 = this.mViewPager;
        viewPager2.setCurrentItem(viewPager2.getCurrentItem() - 1, true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_intro);
        this.lFlags = getWindow().getDecorView().getSystemUiVisibility();
        this.mBottomPaddingOffset = UiHelper.dpToPixel(this, 48.0f);
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, null, null, true, false);
        setupPager();
    }
}

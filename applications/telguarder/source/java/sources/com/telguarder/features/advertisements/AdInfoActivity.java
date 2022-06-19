package com.telguarder.features.advertisements;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.telguarder.C2083R;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.p022ui.UiHelper;
import org.bluecabin.textoo.LinksHandler;
import org.bluecabin.textoo.Textoo;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdInfoActivity.class */
public class AdInfoActivity extends AppCompatActivity {
    public static boolean adDebugInfoEnabled = false;
    private TextView mDescriptionText;
    private Toolbar mToolbar;

    private void applyThemeValues() {
        UiHelper.setupBarScreenWithBottomNavbarPadding(this, findViewById(C2083R.C2086id.tv_ad_description), findViewById(C2083R.C2086id.bottom_view_to_blur), false);
        UiHelper.initToolbar(this, this.mToolbar, C2083R.string.ad_information_title);
    }

    private String getAdInformationDescriptionText() {
        return "<font face=\"arial\"><big> " + getString(C2083R.string.ad_information_description_line1) + "<br><br>" + getString(C2083R.string.ad_information_description_line2) + "<br><br>" + getString(C2083R.string.ad_information_description_line3) + "<br><br>" + getString(C2083R.string.ad_information_description_line4) + "<br><br>" + getString(C2083R.string.ad_information_description_line5) + "<br>" + getString(C2083R.string.ad_information_description_line6) + "<br></big></font>";
    }

    private String getAdInformationDescriptionTitleText() {
        return "<br><font color=\"#148820\" face=\"arial\"><big>" + getString(C2083R.string.ad_information_description_title) + "</big></font><br><br><br>";
    }

    private void initViews() {
        this.mToolbar = (Toolbar) findViewById(C2083R.C2086id.adinfo_toolbar);
        this.mDescriptionText = (TextView) findViewById(C2083R.C2086id.tv_ad_description);
    }

    public /* synthetic */ boolean lambda$onCreate$0$AdInfoActivity(View view, String str) {
        str.hashCode();
        if (!str.equals("coarselocation:")) {
            return false;
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(String.format("http://www.google.com/maps/place/%s,%s", Double.valueOf(AdvertManager.mLocation.getLatitude()), Double.valueOf(AdvertManager.mLocation.getLongitude())))));
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        AdvertManager.mAdNetwqorkDebugFlow = "";
        finish();
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_ad_info);
        initViews();
        applyThemeValues();
        if (!adDebugInfoEnabled || TextUtils.isEmpty(AdvertManager.mAdNetwqorkDebugFlow)) {
            TextView textView = this.mDescriptionText;
            textView.setText(AppUtil.fromHtml(getAdInformationDescriptionTitleText() + getAdInformationDescriptionText()));
        } else {
            if (AdvertManager.mLocation != null) {
                this.mDescriptionText.setText(AppUtil.fromHtml(AdvertManager.mAdNetwqorkDebugFlow.replaceAll(" ", "&#160;").replaceAll("\n", "<br />") + "<br />COARSE LOCATION:<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - &#160;<a href=\"coarselocation:\"><b>" + AdvertManager.mLocation.getLatitude() + ", " + AdvertManager.mLocation.getLongitude() + "</a></b>"));
                Textoo.config(this.mDescriptionText).addLinksHandler(new LinksHandler() { // from class: com.telguarder.features.advertisements._$$Lambda$AdInfoActivity$aIeKTUzPd5GA1srYRDneQ3G_b50
                    @Override // org.bluecabin.textoo.LinksHandler
                    public final boolean onClick(View view, String str) {
                        return AdInfoActivity.this.lambda$onCreate$0$AdInfoActivity(view, str);
                    }
                }).apply();
            } else {
                this.mDescriptionText.setText(AdvertManager.mAdNetwqorkDebugFlow);
            }
            this.mDescriptionText.setTextSize(12.0f);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            findViewById(C2083R.C2086id.info_scroll_view).setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.telguarder.features.advertisements.AdInfoActivity.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    AdInfoActivity.this.mToolbar.setElevation(view.canScrollVertically(-1) ? 15.0f : 0.0f);
                }
            });
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        AdvertManager.mAdNetwqorkDebugFlow = "";
        super.onStop();
    }
}

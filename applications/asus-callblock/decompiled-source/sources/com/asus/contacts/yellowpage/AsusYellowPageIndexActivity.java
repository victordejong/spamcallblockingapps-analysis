package com.asus.contacts.yellowpage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SearchView;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.contacts.yellowpage.promotion.c;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusYellowPageIndexActivity.class */
public class AsusYellowPageIndexActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private AsusYellowPageIndexFragment f2777a;

    /* renamed from: b  reason: collision with root package name */
    private SharedPreferences f2778b;
    private SearchView c;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a.h(this)) {
            finishAndRemoveTask();
            return;
        }
        setContentView(2131427742);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        AsusActionBarUtils.initActionbarDisplayOptions(getActionBar());
        setTitle(2131755123);
        this.f2777a = (AsusYellowPageIndexFragment) getFragmentManager().findFragmentById(2131297553);
        b.a(this);
        b.a(this, "User Event", "Browse Yellow Page", (String) null);
        b.a((Context) this, "Browse Yellow Page");
        s.a().a(this, 0);
        c.b(this);
        this.f2778b = PreferenceManager.getDefaultSharedPreferences(this);
        this.c = (SearchView) findViewById(2131297252);
        try {
            ImageView imageView = (ImageView) this.c.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
            LinearLayout linearLayout = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
            LinearLayout linearLayout2 = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
            LinearLayout linearLayout3 = (LinearLayout) this.c.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
            if (imageView != null) {
                ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).setMargins(0, 0, 0, 0);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexActivity.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (AsusYellowPageIndexActivity.this.c != null) {
                            EditText editText = (EditText) AsusYellowPageIndexActivity.this.c.findViewById(AsusYellowPageIndexActivity.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                            if (editText != null) {
                                editText.setFocusable(true);
                                editText.requestFocus();
                                ((InputMethodManager) AsusYellowPageIndexActivity.this.getSystemService("input_method")).showSoftInput(editText, 1);
                            }
                        }
                    }
                });
                imageView.requestLayout();
            }
            if (linearLayout2 != null) {
                linearLayout2.setBackground(new ColorDrawable(0));
            }
            if (linearLayout != null) {
                linearLayout.setBackground(new ColorDrawable(0));
            }
            if (linearLayout3 != null) {
                linearLayout3.setBackground(getResources().getDrawable(2131165914));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 16;
                layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                linearLayout3.setLayoutParams(layoutParams);
            }
        } catch (Exception e) {
            Log.d("AsusYellowPageIndexActivity", "searchview resource exception: " + e.toString());
        }
        com.asus.a.c.a((Activity) this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        String stringExtra;
        if ("android.intent.action.SEARCH".equals(intent.getAction()) && (stringExtra = intent.getStringExtra("query")) != null && !stringExtra.isEmpty()) {
            AsusYellowPageIndexFragment asusYellowPageIndexFragment = this.f2777a;
            if (asusYellowPageIndexFragment.h != null) {
                asusYellowPageIndexFragment.h.setQuery(stringExtra, true);
                asusYellowPageIndexFragment.h.setQuery(BuildConfig.FLAVOR, false);
                asusYellowPageIndexFragment.h.clearFocus();
            }
        }
        super.onNewIntent(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        b.a((Activity) this, "Index Page");
        b.b((Activity) this, "Index Page");
    }
}

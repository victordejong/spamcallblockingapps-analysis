package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.SpannableString;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AboutContactsAppActivity.class */
public class AboutContactsAppActivity extends Activity implements AdapterView.OnItemClickListener {
    private static final String TAG = "AboutContactsAppActivity";
    private ListView aboutListView;
    private AboutListViewAdapter mAdapter;
    private SharedPreferences mPrefs;
    private ArrayList<Integer> mTitleRes = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AboutContactsAppActivity$AboutListViewAdapter.class */
    class AboutListViewAdapter extends BaseAdapter {
        private LayoutInflater mInflater;
        private ArrayList<Integer> mRes;

        public AboutListViewAdapter(Context context, ArrayList<Integer> arrayList) {
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.mRes = arrayList;
        }

        private void bindView(int i, View view) {
            int intValue = this.mRes.get(i).intValue();
            TextView textView = (TextView) view.findViewById(2131297015);
            TextView textView2 = (TextView) view.findViewById(2131297358);
            CheckBox checkBox = (CheckBox) view.findViewById(2131296529);
            textView.setText(AboutContactsAppActivity.this.getString(intValue));
            if (intValue == 2131755136) {
                boolean z = AboutContactsAppActivity.this.mPrefs.getBoolean("NON_ASUS_GA_ENABLE", true);
                textView2.setVisibility(0);
                checkBox.setVisibility(0);
                checkBox.setChecked(z);
                textView2.setText(AboutContactsAppActivity.this.getString(2131755137));
            } else if (intValue == 2131755019) {
                try {
                    String str = AboutContactsAppActivity.this.getPackageManager().getPackageInfo(AboutContactsAppActivity.this.getPackageName(), 0).versionName;
                    if (str != null) {
                        textView2.setVisibility(0);
                        textView2.setText(str);
                    }
                } catch (Exception e) {
                    Log.d(AboutContactsAppActivity.TAG, "Get version name error: " + e.toString());
                    if (textView2 != null) {
                        textView2.setText(BuildConfig.FLAVOR);
                    }
                }
                textView.setText(AboutContactsAppActivity.this.getString(intValue, new Object[]{BuildConfig.FLAVOR}));
                checkBox.setVisibility(8);
            } else {
                textView2.setVisibility(8);
                checkBox.setVisibility(8);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mRes.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mRes.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.mInflater.inflate(2131427330, viewGroup, false);
            }
            bindView(i, view2);
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AboutContactsAppActivity$DefensiveURLSpan.class */
    public static class DefensiveURLSpan extends URLSpan {
        public DefensiveURLSpan(String str) {
            super(str);
        }

        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                super.onClick(view);
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AboutContactsAppActivity$OpenSourceLicensesActivity.class */
    public static class OpenSourceLicensesActivity extends Activity {
        private TextView mTextViewContent;
        private TextView mTextViewTitle;

        @Override // android.app.Activity
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            setContentView(2131427329);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayShowCustomEnabled(true);
                actionBar.setTitle(getResources().getString(2131755930));
            }
            this.mTextViewTitle = (TextView) findViewById(2131297004);
            if (this.mTextViewTitle != null) {
                this.mTextViewTitle.setText(getResources().getString(2131755178));
            }
            this.mTextViewContent = (TextView) findViewById(2131297005);
            if (this.mTextViewContent != null) {
                this.mTextViewContent.setText(getResources().getString(2131755179));
                AboutContactsAppActivity.fixTextView(this.mTextViewContent);
            }
        }

        @Override // android.app.Activity
        public boolean onOptionsItemSelected(MenuItem menuItem) {
            switch (menuItem.getItemId()) {
                case 16908332:
                    finish();
                    break;
            }
            return super.onOptionsItemSelected(menuItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fixTextView(TextView textView) {
        URLSpan[] uRLSpanArr;
        SpannableString spannableString = (SpannableString) textView.getText();
        for (URLSpan uRLSpan : (URLSpan[]) spannableString.getSpans(0, spannableString.length(), URLSpan.class)) {
            int spanStart = spannableString.getSpanStart(uRLSpan);
            int spanEnd = spannableString.getSpanEnd(uRLSpan);
            spannableString.removeSpan(uRLSpan);
            spannableString.setSpan(new DefensiveURLSpan(uRLSpan.getURL()), spanStart, spanEnd, 0);
        }
    }

    public static boolean gotoGooglePlay(Context context) {
        Log.d(TAG, "User try to go to google play");
        boolean z = false;
        if (PhoneCapabilityTester.checkApkInstalled(context, "com.android.vending")) {
            String packageName = context.getPackageName();
            try {
                ImplicitIntentsUtil.startActivityOutsideApp(context, new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
                z = true;
            } catch (ActivityNotFoundException e) {
                ImplicitIntentsUtil.startActivityOutsideApp(context, new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + packageName)));
                z = false;
            } catch (Exception e2) {
                Log.d(TAG, "Go to google play error: " + e2.toString());
                Toast.makeText(context, "Sorry, failed to open. Please try again later.", 0).show();
                z = false;
            }
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "User come to ABOUT");
        boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
        if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
            setRequestedOrientation(-1);
        } else {
            setRequestedOrientation(1);
        }
        setContentView(2131427328);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowTitleEnabled(true);
            actionBar.setDisplayShowCustomEnabled(true);
            actionBar.setTitle(getResources().getString(2131755799));
        }
        this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        this.aboutListView = (ListView) findViewById(2131296262);
        this.mTitleRes.add(2131755019);
        this.mTitleRes.add(2131755930);
        if (!PhoneCapabilityTester.IsSystemApp()) {
            this.mTitleRes.add(2131755136);
        }
        this.mAdapter = new AboutListViewAdapter(this, this.mTitleRes);
        this.aboutListView.setAdapter((ListAdapter) this.mAdapter);
        this.aboutListView.setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int intValue = this.mTitleRes.get(i).intValue();
        if (intValue == 2131755930) {
            ImplicitIntentsUtil.startActivityInApp(this, new Intent(this, OpenSourceLicensesActivity.class));
        } else if (intValue == 2131755136) {
            this.mPrefs.edit().putBoolean("NON_ASUS_GA_ENABLE", !this.mPrefs.getBoolean("NON_ASUS_GA_ENABLE", true)).commit();
            this.mAdapter.notifyDataSetChanged();
        } else if (intValue == 2131755019 && gotoGooglePlay(this)) {
            b.a();
            b.a(6, this, "About", "About: version", "About: version", null);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}

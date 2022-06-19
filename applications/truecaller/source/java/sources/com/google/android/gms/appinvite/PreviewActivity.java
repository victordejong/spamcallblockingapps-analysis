package com.google.android.gms.appinvite;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.amazon.device.ads.MraidCloseCommand;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1577m.p1578a.p1642f.p1643a.View$OnClickListenerC24878b;
@KeepForSdkWithMembers
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/appinvite/PreviewActivity.class */
public class PreviewActivity extends Activity {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final View m39136a(Context context, ViewGroup viewGroup, Bundle bundle) {
        boolean z;
        View inflate = LayoutInflater.from(context).inflate(bundle.getInt("com.google.android.gms.appinvite.LAYOUT_RES_ID"), viewGroup, false);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("com.google.android.gms.appinvite.VIEWS");
        if (parcelableArrayList != null) {
            int size = parcelableArrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = parcelableArrayList.get(i);
                int i2 = i + 1;
                Bundle bundle2 = (Bundle) obj;
                View findViewById = inflate.findViewById(bundle2.getInt("View_id"));
                Iterator<String> it = bundle2.keySet().iterator();
                while (true) {
                    i = i2;
                    if (it.hasNext()) {
                        String next = it.next();
                        next.hashCode();
                        switch (next.hashCode()) {
                            case -1829808865:
                                if (next.equals("View_minHeight")) {
                                    z = false;
                                    break;
                                }
                                z = true;
                                break;
                            case -499175494:
                                if (next.equals("TextView_text")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -111184848:
                                if (next.equals("WebView_data")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 573559753:
                                if (next.equals("TextView_textColor")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 966644059:
                                if (next.equals("View_backgroundColor")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 1729346977:
                                if (next.equals("TextView_isTitle")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 1920443715:
                                if (next.equals("View_onClickListener")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            default:
                                z = true;
                                break;
                        }
                        switch (z) {
                            case false:
                                findViewById.setMinimumHeight(bundle2.getInt(next));
                                break;
                            case true:
                                if (!(findViewById instanceof TextView)) {
                                    break;
                                } else {
                                    ((TextView) findViewById).setText(bundle2.getCharSequence(next));
                                    break;
                                }
                            case true:
                                if (!(findViewById instanceof ViewGroup)) {
                                    break;
                                } else {
                                    WebView webView = new WebView(this);
                                    webView.loadData(bundle2.getString(next), "text/html; charset=utf-8", StringConstant.UTF8);
                                    ((ViewGroup) findViewById).addView(webView, new ViewGroup.LayoutParams(-1, -1));
                                    break;
                                }
                            case true:
                                if (!(findViewById instanceof TextView)) {
                                    break;
                                } else {
                                    ((TextView) findViewById).setTextColor(bundle2.getInt(next));
                                    break;
                                }
                            case true:
                                findViewById.setBackgroundColor(bundle2.getInt(next));
                                break;
                            case true:
                                if ((findViewById instanceof TextView) && bundle2.getBoolean(next)) {
                                    setTitle(((TextView) findViewById).getText());
                                    break;
                                }
                                break;
                            case true:
                                String string = bundle2.getString(next);
                                string.hashCode();
                                if (string.equals(MraidCloseCommand.NAME)) {
                                    findViewById.setOnClickListener(new View$OnClickListenerC24878b(this));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    }
                }
            }
        }
        return inflate;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getCallingActivity() == null || !"com.google.android.gms".equals(getCallingActivity().getPackageName())) {
            finish();
            return;
        }
        int i = 0;
        try {
            Context createPackageContext = createPackageContext("com.google.android.gms", 0);
            Bundle extras = getIntent().getExtras();
            View m39136a = m39136a(createPackageContext, null, extras);
            if (m39136a == null) {
                finish();
                return;
            }
            TabHost tabHost = (TabHost) m39136a.findViewById(16908306);
            TabWidget tabWidget = (TabWidget) m39136a.findViewById(16908307);
            ArrayList parcelableArrayList = extras.getParcelableArrayList("com.google.android.gms.appinvite.TABS");
            if (tabHost != null && tabWidget != null && parcelableArrayList != null) {
                tabHost.setup();
                int size = parcelableArrayList.size();
                while (i < size) {
                    i++;
                    Bundle bundle2 = (Bundle) parcelableArrayList.get(i);
                    TabHost.TabSpec newTabSpec = tabHost.newTabSpec(bundle2.getString("tabTag"));
                    newTabSpec.setContent(bundle2.getInt("tabContentId"));
                    newTabSpec.setIndicator(m39136a(createPackageContext, tabWidget, bundle2));
                    tabHost.addTab(newTabSpec);
                }
            }
            setContentView(m39136a);
        } catch (PackageManager.NameNotFoundException e) {
            finish();
        }
    }
}

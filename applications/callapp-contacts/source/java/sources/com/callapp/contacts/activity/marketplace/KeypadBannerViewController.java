package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.date.DateUtils;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadBannerViewController.class */
public class KeypadBannerViewController implements ViewController {

    /* renamed from: a */
    final TextView f23392a;

    /* renamed from: b */
    public View f23393b;

    /* renamed from: c */
    Listener f23394c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener.class */
    public interface Listener {
        /* renamed from: e */
        void mo30101e();

        /* renamed from: f */
        void mo30100f();
    }

    public KeypadBannerViewController(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2131558824, viewGroup, false);
        this.f23393b = inflate;
        viewGroup.addView(inflate);
        TextView textView = (TextView) mo26540a(2131363154);
        ((TextView) mo26540a(2131363153)).setText(Activities.getString(2131887091));
        textView.setText(Activities.getString(2131887092));
        TextView textView2 = (TextView) mo26540a(2131363147);
        this.f23392a = textView2;
        TextView textView3 = (TextView) mo26540a(2131363149);
        textView2.setText(Activities.getString(2131886563));
        textView3.setText(Activities.getString(2131886932));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                KeypadBannerViewController keypadBannerViewController = KeypadBannerViewController.this;
                if (keypadBannerViewController.f23394c != null) {
                    keypadBannerViewController.getRootView().setVisibility(8);
                    keypadBannerViewController.f23394c.mo30100f();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Listener listener = KeypadBannerViewController.this.getListener();
                if (listener != null) {
                    Prefs.f26383dA.set(Boolean.FALSE);
                    listener.mo30101e();
                }
            }
        });
        this.f23393b.setClickable(true);
        this.f23393b.setFocusableInTouchMode(true);
    }

    /* renamed from: a */
    public static boolean m30102a() {
        if (Prefs.f26339cJ.get().booleanValue()) {
            return false;
        }
        Long[] lArr = Prefs.f26576gi.get() != null ? Prefs.f26576gi.get() : new Long[3];
        if (!Prefs.f26383dA.get().booleanValue() || Build.VERSION.SDK_INT < 23) {
            return false;
        }
        Date date = (Date) (Prefs.f26258ai.isNotNull() ? Prefs.f26258ai : Prefs.f26257ah).get();
        Date date2 = new Date();
        if (DateUtils.m27118b(date2, date) == 5 && lArr[0] == null) {
            lArr[0] = 1L;
            Prefs.f26576gi.set(lArr);
            return true;
        } else if (DateUtils.m27118b(date2, date) == 10 && lArr[1] == null) {
            lArr[1] = 1L;
            Prefs.f26576gi.set(lArr);
            return true;
        } else if (DateUtils.m27118b(date2, date) == 14 && lArr[2] == null) {
            lArr[2] = 1L;
            Prefs.f26576gi.set(lArr);
            return true;
        } else if (DateUtils.m27118b(date2, date) <= 14) {
            return false;
        } else {
            Prefs.f26383dA.set(Boolean.FALSE);
            return false;
        }
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public /* synthetic */ void mo26534b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public Listener getListener() {
        return this.f23394c;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f23393b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    public void setListener(Listener listener) {
        this.f23394c = listener;
    }
}

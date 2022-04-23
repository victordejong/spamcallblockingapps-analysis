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

    /* renamed from: a  reason: collision with root package name */
    final TextView f13123a;

    /* renamed from: b  reason: collision with root package name */
    public View f13124b;

    /* renamed from: c  reason: collision with root package name */
    Listener f13125c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/KeypadBannerViewController$Listener.class */
    public interface Listener {
        void e();

        void f();
    }

    public KeypadBannerViewController(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2131558824, viewGroup, false);
        this.f13124b = inflate;
        viewGroup.addView(inflate);
        TextView textView = (TextView) a(2131363154);
        ((TextView) a(2131363153)).setText(Activities.getString(2131887091));
        textView.setText(Activities.getString(2131887092));
        TextView textView2 = (TextView) a(2131363147);
        this.f13123a = textView2;
        TextView textView3 = (TextView) a(2131363149);
        textView2.setText(Activities.getString(2131886563));
        textView3.setText(Activities.getString(2131886932));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                KeypadBannerViewController keypadBannerViewController = KeypadBannerViewController.this;
                if (keypadBannerViewController.f13125c != null) {
                    keypadBannerViewController.getRootView().setVisibility(8);
                    keypadBannerViewController.f13125c.f();
                }
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.KeypadBannerViewController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Listener listener = KeypadBannerViewController.this.getListener();
                if (listener != null) {
                    Prefs.dA.set(Boolean.FALSE);
                    listener.e();
                }
            }
        });
        this.f13124b.setClickable(true);
        this.f13124b.setFocusableInTouchMode(true);
    }

    public static boolean a() {
        if (Prefs.cJ.get().booleanValue()) {
            return false;
        }
        Long[] lArr = Prefs.gi.get() != null ? Prefs.gi.get() : new Long[3];
        if (!Prefs.dA.get().booleanValue() || Build.VERSION.SDK_INT < 23) {
            return false;
        }
        Date date = (Date) (Prefs.ai.isNotNull() ? Prefs.ai : Prefs.ah).get();
        Date date2 = new Date();
        if (DateUtils.b(date2, date) == 5 && lArr[0] == null) {
            lArr[0] = 1L;
            Prefs.gi.set(lArr);
            return true;
        } else if (DateUtils.b(date2, date) == 10 && lArr[1] == null) {
            lArr[1] = 1L;
            Prefs.gi.set(lArr);
            return true;
        } else if (DateUtils.b(date2, date) == 14 && lArr[2] == null) {
            lArr[2] = 1L;
            Prefs.gi.set(lArr);
            return true;
        } else if (DateUtils.b(date2, date) <= 14) {
            return false;
        } else {
            Prefs.dA.set(Boolean.FALSE);
            return false;
        }
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ void b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public Listener getListener() {
        return this.f13125c;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f13124b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    public void setListener(Listener listener) {
        this.f13125c = listener;
    }
}

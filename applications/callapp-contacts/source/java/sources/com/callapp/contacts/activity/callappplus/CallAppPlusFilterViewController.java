package com.callapp.contacts.activity.callappplus;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController.class */
public class CallAppPlusFilterViewController implements ViewController {

    /* renamed from: a */
    private View f20536a;

    /* renamed from: b */
    private CallappPlusFilterAdapter f20537b;

    /* renamed from: c */
    private View f20538c = mo26540a(2131362767);

    /* renamed from: d */
    private View f20539d = mo26540a(2131362161);

    public CallAppPlusFilterViewController(View view, CallappPlusFilterAdapter callappPlusFilterAdapter) {
        this.f20536a = view;
        TextView textView = (TextView) mo26540a(2131363862);
        textView.setText(Activities.getString(2131886993));
        FrameLayout frameLayout = (FrameLayout) mo26540a(2131362054);
        View mo26540a = mo26540a(2131362829);
        View mo26540a2 = mo26540a(2131363790);
        RecyclerView recyclerView = (RecyclerView) mo26540a(2131362802);
        if (ThemeUtils.isThemeLight()) {
            recyclerView.setBackgroundColor(ThemeUtils.getColor(2131099921));
            mo26540a.setBackgroundColor(ThemeUtils.getColor(2131099920));
            mo26540a2.setBackgroundColor(ThemeUtils.getColor(2131099920));
            frameLayout.setBackgroundColor(ThemeUtils.getColor(2131100228));
            textView.setTextColor(ThemeUtils.getColor(2131099819));
        } else {
            mo26540a.setBackgroundColor(ThemeUtils.getColor(2131099922));
            mo26540a2.setBackgroundColor(ThemeUtils.getColor(2131099922));
            recyclerView.setBackgroundColor(ThemeUtils.getColor(2131099819));
            frameLayout.setBackgroundColor(ThemeUtils.getColor(2131099819));
            textView.setTextColor(ThemeUtils.getColor(2131100228));
        }
        recyclerView.setLayoutManager(new GridLayoutManager(view.getContext(), 3));
        this.f20537b = callappPlusFilterAdapter;
        recyclerView.setAdapter(callappPlusFilterAdapter);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public final void m31418a() {
        this.f20538c.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public final void mo26534b() {
        this.f20538c.setVisibility(0);
    }

    public List<Integer> getActiveFilters() {
        return this.f20537b.getActiveFilters();
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f20536a;
    }

    public boolean isAllSelected() {
        return this.f20537b.isAllSelected();
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public boolean isViewShown() {
        return this.f20538c.getVisibility() == 0;
    }

    public void setOnCloseFiltersClickedListener(View.OnClickListener onClickListener) {
        this.f20539d.setOnClickListener(onClickListener);
    }
}

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

    /* renamed from: a  reason: collision with root package name */
    private View f11271a;

    /* renamed from: b  reason: collision with root package name */
    private CallappPlusFilterAdapter f11272b;

    /* renamed from: c  reason: collision with root package name */
    private View f11273c = a(2131362767);

    /* renamed from: d  reason: collision with root package name */
    private View f11274d = a(2131362161);

    public CallAppPlusFilterViewController(View view, CallappPlusFilterAdapter callappPlusFilterAdapter) {
        this.f11271a = view;
        TextView textView = (TextView) a(2131363862);
        textView.setText(Activities.getString(2131886993));
        FrameLayout frameLayout = (FrameLayout) a(2131362054);
        View a2 = a(2131362829);
        View a3 = a(2131363790);
        RecyclerView recyclerView = (RecyclerView) a(2131362802);
        if (ThemeUtils.isThemeLight()) {
            recyclerView.setBackgroundColor(ThemeUtils.getColor(2131099921));
            a2.setBackgroundColor(ThemeUtils.getColor(2131099920));
            a3.setBackgroundColor(ThemeUtils.getColor(2131099920));
            frameLayout.setBackgroundColor(ThemeUtils.getColor(2131100228));
            textView.setTextColor(ThemeUtils.getColor(2131099819));
        } else {
            a2.setBackgroundColor(ThemeUtils.getColor(2131099922));
            a3.setBackgroundColor(ThemeUtils.getColor(2131099922));
            recyclerView.setBackgroundColor(ThemeUtils.getColor(2131099819));
            frameLayout.setBackgroundColor(ThemeUtils.getColor(2131099819));
            textView.setTextColor(ThemeUtils.getColor(2131100228));
        }
        recyclerView.setLayoutManager(new GridLayoutManager(view.getContext(), 3));
        this.f11272b = callappPlusFilterAdapter;
        recyclerView.setAdapter(callappPlusFilterAdapter);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public final void a() {
        this.f11273c.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public final void b() {
        this.f11273c.setVisibility(0);
    }

    public List<Integer> getActiveFilters() {
        return this.f11272b.getActiveFilters();
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
        return this.f11271a;
    }

    public boolean isAllSelected() {
        return this.f11272b.isAllSelected();
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public boolean isViewShown() {
        return this.f11273c.getVisibility() == 0;
    }

    public void setOnCloseFiltersClickedListener(View.OnClickListener onClickListener) {
        this.f11274d.setOnClickListener(onClickListener);
    }
}

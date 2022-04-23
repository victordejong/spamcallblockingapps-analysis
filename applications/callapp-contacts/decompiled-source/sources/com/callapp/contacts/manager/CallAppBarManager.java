package com.callapp.contacts.manager;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Filter;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.b;
import androidx.drawerlayout.widget.DrawerLayout;
import com.callapp.contacts.activity.interfaces.SearchContactsEvents;
import com.callapp.contacts.activity.interfaces.SearchContactsFilter;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.CallAppToolbar;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppBarManager.class */
public class CallAppBarManager implements SearchContactsFilter, CallAppToolbar.SearchEventsListener {

    /* renamed from: a  reason: collision with root package name */
    public View f14801a;

    /* renamed from: b  reason: collision with root package name */
    public AppCompatActivity f14802b;

    /* renamed from: c  reason: collision with root package name */
    public CallAppToolbar f14803c;

    /* renamed from: d  reason: collision with root package name */
    public SearchContactsEvents f14804d;
    private CallAppBarEvents e;
    private DrawerLayout f;
    private b g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents.class */
    public interface CallAppBarEvents {
        void a();

        void a(String str);

        void b();

        void b(String str);

        void c();

        void d();

        void e();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener.class */
    public interface OnActionModeClickListener {
        void a(int i);
    }

    public CallAppBarManager(AppCompatActivity appCompatActivity, DrawerLayout drawerLayout, CallAppToolbar callAppToolbar, CallAppBarEvents callAppBarEvents) {
        this.f14802b = appCompatActivity;
        this.f14803c = callAppToolbar;
        this.e = callAppBarEvents;
        this.f = drawerLayout;
        this.f14801a = drawerLayout.findViewById(2131362017);
        this.f14802b.setSupportActionBar(this.f14803c.getMainToolbar());
        try {
            SearchContactsEvents searchContactsEvents = (SearchContactsEvents) appCompatActivity;
            this.f14804d = searchContactsEvents;
            searchContactsEvents.registerFilteredEvents(this);
            this.f14803c.f16436c.add(this);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Activity must implement SearchContactsEvents");
        }
    }

    public final void a() {
        CLog.a("CallAppBarManager");
        this.f14803c.b();
    }

    public final void a(final int i, final String str, final OnActionModeClickListener onActionModeClickListener) {
        if (this.f14802b != null) {
            final int color = ThemeUtils.getColor(2131100228);
            this.g = this.f14802b.startSupportActionMode(new b.a() { // from class: com.callapp.contacts.manager.CallAppBarManager.1
                @Override // androidx.appcompat.view.b.a
                public final void a(b bVar) {
                    CallAppBarManager.this.g = null;
                    CallAppBarManager.this.e.a();
                }

                @Override // androidx.appcompat.view.b.a
                public final boolean a(b bVar, Menu menu) {
                    bVar.a().inflate(i, menu);
                    for (int i2 = 0; i2 < menu.size(); i2++) {
                        ViewUtils.a(menu.getItem(i2).getIcon(), color);
                    }
                    bVar.b(str);
                    return true;
                }

                @Override // androidx.appcompat.view.b.a
                public final boolean a(b bVar, MenuItem menuItem) {
                    onActionModeClickListener.a(menuItem.getItemId());
                    return true;
                }

                @Override // androidx.appcompat.view.b.a
                public final boolean b(b bVar, Menu menu) {
                    AndroidUtils.setActionModeBackgroundColor(bVar);
                    return true;
                }
            });
        }
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void a(String str) {
        "onSubmitClick: ".concat(String.valueOf(str));
        CLog.a("CallAppBarManager");
        this.e.a(str);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsFilter
    public final void a(String str, boolean z, boolean z2, boolean z3) {
        "performFilter: ".concat(String.valueOf(str));
        CLog.a("CallAppBarManager");
        if (!isInSearchMode()) {
            this.f14803c.b(false);
            j();
        }
        this.f14803c.setQuery(str);
    }

    public final void a(boolean z) {
        "collapse, withAnimation = ".concat(String.valueOf(z));
        CLog.a("CallAppBarManager");
        this.f14803c.a(z);
    }

    public final void b() {
        CLog.a("CallAppBarManager");
        this.f14803c.c(false);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void b(String str) {
        "onTextChanged: ".concat(String.valueOf(str));
        CLog.a("CallAppBarManager");
        this.e.b(str);
    }

    public final void c() {
        this.f14801a.setVisibility(0);
        this.f14803c.setVisibility(0);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void d() {
        CLog.a("CallAppBarManager");
        j();
        this.e.b();
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void e() {
        CLog.a("CallAppBarManager");
        this.e.a();
        ((AppBarLayout.LayoutParams) this.f.findViewById(2131362017).getLayoutParams()).f30214a = 23;
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void f() {
        this.e.d();
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void g() {
        this.e.c();
    }

    public int getBarHeight() {
        return this.f14803c.getHeight();
    }

    public String getCurrentSearchText() {
        CLog.a("CallAppBarManager");
        return this.f14803c.getCurrentSearchText();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return null;
    }

    public ImageView getToolbarBackground() {
        return (ImageView) this.f.findViewById(2131362202);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void h() {
        this.f.c(8388611);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    public final void i() {
        this.e.e();
    }

    public boolean isInSearchMode() {
        CLog.a("CallAppBarManager");
        return this.f14803c.isInSearchMode();
    }

    public void j() {
        ((AppBarLayout.LayoutParams) this.f.findViewById(2131362017).getLayoutParams()).f30214a = 0;
    }

    public final void k() {
        b bVar = this.g;
        if (bVar != null) {
            bVar.c();
        }
    }

    public void setActionModeText(String str) {
        b bVar = this.g;
        if (bVar != null) {
            bVar.b(str);
        }
    }

    public void setHasImageDrawable(boolean z) {
        ViewUtils.a(getToolbarBackground(), z);
        this.f14803c.getMainToolbar().setBackgroundColor(ThemeUtils.getColor(2131100145));
    }
}

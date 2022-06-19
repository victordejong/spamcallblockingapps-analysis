package com.callapp.contacts.manager;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Filter;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.AbstractC0241b;
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

    /* renamed from: a */
    public View f25596a;

    /* renamed from: b */
    public AppCompatActivity f25597b;

    /* renamed from: c */
    public CallAppToolbar f25598c;

    /* renamed from: d */
    public SearchContactsEvents f25599d;

    /* renamed from: e */
    private CallAppBarEvents f25600e;

    /* renamed from: f */
    private DrawerLayout f25601f;

    /* renamed from: g */
    private AbstractC0241b f25602g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents.class */
    public interface CallAppBarEvents {
        /* renamed from: a */
        void mo28722a();

        /* renamed from: a */
        void mo28721a(String str);

        /* renamed from: b */
        void mo28720b();

        /* renamed from: b */
        void mo28719b(String str);

        /* renamed from: c */
        void mo28718c();

        /* renamed from: d */
        void mo28717d();

        /* renamed from: e */
        void mo28716e();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener.class */
    public interface OnActionModeClickListener {
        /* renamed from: a */
        void mo28715a(int i);
    }

    public CallAppBarManager(AppCompatActivity appCompatActivity, DrawerLayout drawerLayout, CallAppToolbar callAppToolbar, CallAppBarEvents callAppBarEvents) {
        this.f25597b = appCompatActivity;
        this.f25598c = callAppToolbar;
        this.f25600e = callAppBarEvents;
        this.f25601f = drawerLayout;
        this.f25596a = drawerLayout.findViewById(2131362017);
        this.f25597b.setSupportActionBar(this.f25598c.getMainToolbar());
        try {
            SearchContactsEvents searchContactsEvents = (SearchContactsEvents) appCompatActivity;
            this.f25599d = searchContactsEvents;
            searchContactsEvents.registerFilteredEvents(this);
            this.f25598c.f28616c.add(this);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Activity must implement SearchContactsEvents");
        }
    }

    /* renamed from: a */
    public final void m28736a() {
        CLog.m27606a("CallAppBarManager");
        this.f25598c.m26812b();
    }

    /* renamed from: a */
    public final void m28735a(final int i, final String str, final OnActionModeClickListener onActionModeClickListener) {
        if (this.f25597b == null) {
            return;
        }
        final int color = ThemeUtils.getColor(2131100228);
        this.f25602g = this.f25597b.startSupportActionMode(new AbstractC0241b.AbstractC0242a() { // from class: com.callapp.contacts.manager.CallAppBarManager.1
            @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
            /* renamed from: a */
            public final void mo28726a(AbstractC0241b abstractC0241b) {
                CallAppBarManager.this.f25602g = null;
                CallAppBarManager.this.f25600e.mo28722a();
            }

            @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
            /* renamed from: a */
            public final boolean mo28725a(AbstractC0241b abstractC0241b, Menu menu) {
                abstractC0241b.mo46166a().inflate(i, menu);
                for (int i2 = 0; i2 < menu.size(); i2++) {
                    ViewUtils.m27330a(menu.getItem(i2).getIcon(), color);
                }
                abstractC0241b.mo46159b(str);
                return true;
            }

            @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
            /* renamed from: a */
            public final boolean mo28724a(AbstractC0241b abstractC0241b, MenuItem menuItem) {
                onActionModeClickListener.mo28715a(menuItem.getItemId());
                return true;
            }

            @Override // androidx.appcompat.view.AbstractC0241b.AbstractC0242a
            /* renamed from: b */
            public final boolean mo28723b(AbstractC0241b abstractC0241b, Menu menu) {
                AndroidUtils.setActionModeBackgroundColor(abstractC0241b);
                return true;
            }
        });
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: a */
    public final void mo26801a(String str) {
        "onSubmitClick: ".concat(String.valueOf(str));
        CLog.m27606a("CallAppBarManager");
        this.f25600e.mo28721a(str);
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchContactsFilter
    /* renamed from: a */
    public final void mo28733a(String str, boolean z, boolean z2, boolean z3) {
        "performFilter: ".concat(String.valueOf(str));
        CLog.m27606a("CallAppBarManager");
        if (!isInSearchMode()) {
            this.f25598c.m26810b(false);
            m28728j();
        }
        this.f25598c.setQuery(str);
    }

    /* renamed from: a */
    public final void m28732a(boolean z) {
        "collapse, withAnimation = ".concat(String.valueOf(z));
        CLog.m27606a("CallAppBarManager");
        this.f25598c.m26813a(z);
    }

    /* renamed from: b */
    public final void m28731b() {
        CLog.m27606a("CallAppBarManager");
        this.f25598c.m26807c(false);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: b */
    public final void mo26800b(String str) {
        "onTextChanged: ".concat(String.valueOf(str));
        CLog.m27606a("CallAppBarManager");
        this.f25600e.mo28719b(str);
    }

    /* renamed from: c */
    public final void m28729c() {
        this.f25596a.setVisibility(0);
        this.f25598c.setVisibility(0);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: d */
    public final void mo26799d() {
        CLog.m27606a("CallAppBarManager");
        m28728j();
        this.f25600e.mo28720b();
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: e */
    public final void mo26798e() {
        CLog.m27606a("CallAppBarManager");
        this.f25600e.mo28722a();
        ((AppBarLayout.LayoutParams) this.f25601f.findViewById(2131362017).getLayoutParams()).f52431a = 23;
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: f */
    public final void mo26797f() {
        this.f25600e.mo28717d();
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: g */
    public final void mo26796g() {
        this.f25600e.mo28718c();
    }

    public int getBarHeight() {
        return this.f25598c.getHeight();
    }

    public String getCurrentSearchText() {
        CLog.m27606a("CallAppBarManager");
        return this.f25598c.getCurrentSearchText();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return null;
    }

    public ImageView getToolbarBackground() {
        return (ImageView) this.f25601f.findViewById(2131362202);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: h */
    public final void mo26795h() {
        this.f25601f.m43853c(8388611);
    }

    @Override // com.callapp.contacts.widget.CallAppToolbar.SearchEventsListener
    /* renamed from: i */
    public final void mo26794i() {
        this.f25600e.mo28716e();
    }

    public boolean isInSearchMode() {
        CLog.m27606a("CallAppBarManager");
        return this.f25598c.isInSearchMode();
    }

    /* renamed from: j */
    public void m28728j() {
        ((AppBarLayout.LayoutParams) this.f25601f.findViewById(2131362017).getLayoutParams()).f52431a = 0;
    }

    /* renamed from: k */
    public final void m28727k() {
        AbstractC0241b abstractC0241b = this.f25602g;
        if (abstractC0241b != null) {
            abstractC0241b.mo46158c();
        }
    }

    public void setActionModeText(String str) {
        AbstractC0241b abstractC0241b = this.f25602g;
        if (abstractC0241b != null) {
            abstractC0241b.mo46159b(str);
        }
    }

    public void setHasImageDrawable(boolean z) {
        ViewUtils.m27314a(getToolbarBackground(), z);
        this.f25598c.getMainToolbar().setBackgroundColor(ThemeUtils.getColor(2131100145));
    }
}

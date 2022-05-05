package com.tmobile.services.nameid;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.tabs.TabLayout;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.utility.LogUtil;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/TabsAdapter.class */
public class TabsAdapter extends FragmentStatePagerAdapter {

    /* renamed from: g */
    private final MainActivity f13043g;

    /* renamed from: i */
    private int f13045i;

    /* renamed from: k */
    private TabLayout f13047k;

    /* renamed from: h */
    private List<TabInfo> f13044h = new LinkedList();

    /* renamed from: j */
    private Map<Integer, Stack<TabInfo>> f13046j = new HashMap();

    /* renamed from: l */
    boolean f13048l = false;

    /* renamed from: m */
    boolean f13049m = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/TabsAdapter$TabInfo.class */
    public static class TabInfo {

        /* renamed from: a */
        private Class f13050a;

        /* renamed from: b */
        private NameIDPage f13051b;

        TabInfo(Class cls, NameIDPage nameIDPage) {
            this.f13050a = cls;
            this.f13051b = nameIDPage;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public Class m7155c() {
            return this.f13050a;
        }

        /* renamed from: d */
        public NameIDPage m7154d() {
            return this.f13051b;
        }

        public boolean equals(Object obj) {
            return obj != null && m7155c().equals(obj.getClass());
        }

        public int hashCode() {
            return this.f13050a.getName() != null ? this.f13050a.getName().hashCode() : 0;
        }

        public String toString() {
            return "TabInfo{fragmentClass=" + this.f13050a + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TabsAdapter(MainActivity mainActivity, TabLayout tabLayout) {
        super(mainActivity.getSupportFragmentManager());
        this.f13043g = mainActivity;
        this.f13047k = tabLayout;
    }

    /* renamed from: f */
    private TabInfo m7164f(int i) {
        TabInfo pop = this.f13046j.get(Integer.valueOf(i)).pop();
        if (!this.f13046j.get(Integer.valueOf(i)).isEmpty()) {
            pop = this.f13046j.get(Integer.valueOf(i)).peek();
        }
        return pop;
    }

    /* renamed from: h */
    private boolean m7162h(int i) {
        Map<Integer, Stack<TabInfo>> map = this.f13046j;
        return map == null || map.isEmpty() || this.f13046j.get(Integer.valueOf(i)).isEmpty();
    }

    /* renamed from: i */
    private boolean m7161i(int i) {
        boolean z = true;
        if (this.f13046j.get(Integer.valueOf(i)).size() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    private void m7158l(TabInfo tabInfo, int i) {
        this.f13044h.remove(i);
        this.f13044h.add(i, tabInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m7169a(@Nullable Bundle bundle) {
        String str;
        for (int i = 0; i < this.f13044h.size(); i++) {
            String str2 = "";
            if (bundle != null) {
                str2 = bundle.getString("SAVED_INSTANCE_EXTRA_TAB" + i);
                str = bundle.getString("SAVED_INSTANCE_EXTRA_TAB_PAGE" + i);
            } else {
                str = "";
            }
            if (str2 != null && !str2.isEmpty()) {
                try {
                    TabInfo tabInfo = new TabInfo(Class.forName(str2), m7165e(str));
                    this.f13046j.get(Integer.valueOf(i)).push(tabInfo);
                    m7158l(tabInfo, i);
                } catch (Exception e) {
                    LogUtil.m5641f("TabsAdapter", "Tried to add tab '" + str2 + "'", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m7168b(Class cls, NameIDPage nameIDPage) {
        this.f13044h.add(new TabInfo(cls, nameIDPage));
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m7167c() {
        int selectedTabPosition = this.f13047k.getSelectedTabPosition();
        if (selectedTabPosition == 0) {
            this.f13048l = true;
        } else if (selectedTabPosition == 1) {
            this.f13049m = true;
        }
        if (!m7162h(selectedTabPosition)) {
            if (m7161i(selectedTabPosition)) {
                return false;
            }
            TabInfo f = m7164f(selectedTabPosition);
            this.f13044h.clear();
            for (int i = 0; i < this.f13045i; i++) {
                if (i == selectedTabPosition) {
                    this.f13044h.add(new TabInfo(f.f13050a, f.f13051b));
                } else {
                    TabInfo peek = this.f13046j.get(Integer.valueOf(i)).peek();
                    this.f13044h.add(new TabInfo(peek.f13050a, peek.f13051b));
                }
            }
        }
        notifyDataSetChanged();
        this.f13043g.m7567t0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m7166d() {
        this.f13045i = this.f13044h.size();
        int i = 0;
        for (TabInfo tabInfo : this.f13044h) {
            if (this.f13046j.get(Integer.valueOf(i)) == null) {
                this.f13046j.put(Integer.valueOf(i), new Stack<>());
            }
            this.f13046j.get(Integer.valueOf(i)).push(new TabInfo(tabInfo.f13050a, tabInfo.f13051b));
            i++;
        }
    }

    /* renamed from: e */
    NameIDPage m7165e(String str) {
        if (str.equals("ActivityFragment")) {
            return NameIDPage.Activity.f12672b;
        }
        if (str.equals("ManageFragment")) {
            return NameIDPage.Manage.f12677b;
        }
        if (!str.equals("ScamBlockFragment") && str.equals("SettingsFragment")) {
            return NameIDPage.C1529Settings.f12686b;
        }
        return NameIDPage.ScamBlock.f12683b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public TabInfo m7163g() {
        if (this.f13046j.size() < this.f13047k.getSelectedTabPosition() + 1 || this.f13046j.get(Integer.valueOf(this.f13047k.getSelectedTabPosition())).isEmpty()) {
            return null;
        }
        return this.f13046j.get(Integer.valueOf(this.f13047k.getSelectedTabPosition())).peek();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f13044h.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i) {
        return Fragment.instantiate(this.f13043g, this.f13044h.get(i).f13050a.getName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c1, code lost:
        return r5;
     */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getItemPosition(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            com.google.android.material.tabs.TabLayout r0 = r0.f13047k
            int r0 = r0.getSelectedTabPosition()
            r5 = r0
            r0 = r3
            java.util.Map<java.lang.Integer, java.util.Stack<com.tmobile.services.nameid.TabsAdapter$TabInfo>> r0 = r0.f13046j
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            java.util.Stack r0 = (java.util.Stack) r0
            boolean r0 = r0.isEmpty()
            r6 = r0
            r0 = -2
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0027
            r0 = -2
            return r0
        L_0x0027:
            r0 = 0
            r8 = r0
        L_0x002a:
            r0 = r7
            r5 = r0
            r0 = r8
            r1 = r3
            java.util.Map<java.lang.Integer, java.util.Stack<com.tmobile.services.nameid.TabsAdapter$TabInfo>> r1 = r1.f13046j
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x00c0
            r0 = r3
            java.util.Map<java.lang.Integer, java.util.Stack<com.tmobile.services.nameid.TabsAdapter$TabInfo>> r0 = r0.f13046j
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            java.util.Stack r0 = (java.util.Stack) r0
            java.lang.Object r0 = r0.peek()
            com.tmobile.services.nameid.TabsAdapter$TabInfo r0 = (com.tmobile.services.nameid.TabsAdapter.TabInfo) r0
            r9 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.services.nameid.activity.ActivityCallDetailsFragment
            if (r0 == 0) goto L_0x006a
            r0 = r3
            boolean r0 = r0.f13048l
            if (r0 == 0) goto L_0x006a
            r0 = r3
            r1 = 0
            r0.f13048l = r1
            r0 = -2
            return r0
        L_0x006a:
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.services.nameid.activity.ManageCallDetailsFragment
            if (r0 == 0) goto L_0x0080
            r0 = r3
            boolean r0 = r0.f13049m
            if (r0 == 0) goto L_0x0080
            r0 = r3
            r1 = 0
            r0.f13049m = r1
            r0 = -2
            return r0
        L_0x0080:
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.services.nameid.activity.ManageSearchCallDetailsFragment
            if (r0 == 0) goto L_0x0096
            r0 = r3
            boolean r0 = r0.f13049m
            if (r0 == 0) goto L_0x0096
            r0 = r3
            r1 = 0
            r0.f13049m = r1
            r0 = -2
            return r0
        L_0x0096:
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.services.nameid.activity.ActivitySearchCallDetailsFragment
            if (r0 == 0) goto L_0x00ac
            r0 = r3
            boolean r0 = r0.f13048l
            if (r0 == 0) goto L_0x00ac
            r0 = r3
            r1 = 0
            r0.f13048l = r1
            r0 = -2
            return r0
        L_0x00ac:
            r0 = r9
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00ba
            r0 = -1
            r5 = r0
            goto L_0x00c0
        L_0x00ba:
            int r8 = r8 + 1
            goto L_0x002a
        L_0x00c0:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.TabsAdapter.getItemPosition(java.lang.Object):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m7160j(int i, Class cls, NameIDPage nameIDPage) {
        FragmentManager supportFragmentManager = this.f13043g.getSupportFragmentManager();
        if (!supportFragmentManager.isDestroyed() && !supportFragmentManager.isStateSaved()) {
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            beginTransaction.m18341g(null);
            beginTransaction.mo18339i();
            m7158l(new TabInfo(cls, nameIDPage), i);
            this.f13046j.get(Integer.valueOf(i)).push(new TabInfo(this.f13044h.get(i).f13050a, this.f13044h.get(i).f13051b));
            notifyDataSetChanged();
            this.f13043g.m7567t0();
        }
    }

    /* renamed from: k */
    public void m7159k(Bundle bundle) {
        for (int i = 0; i < this.f13046j.values().size(); i++) {
            Stack<TabInfo> stack = this.f13046j.get(Integer.valueOf(i));
            if (stack.size() > 1) {
                bundle.putString("SAVED_INSTANCE_EXTRA_TAB" + i, stack.peek().f13050a.getName());
                bundle.putString("SAVED_INSTANCE_EXTRA_TAB_PAGE" + i, stack.peek().f13051b.m7485a());
            }
        }
    }
}

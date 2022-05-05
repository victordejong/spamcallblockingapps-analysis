package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/SupportActionModeWrapper.class */
public class SupportActionModeWrapper extends ActionMode {

    /* renamed from: a */
    final Context f455a;

    /* renamed from: b */
    final ActionMode f456b;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/SupportActionModeWrapper$CallbackWrapper.class */
    public static class CallbackWrapper implements ActionMode.Callback {

        /* renamed from: a */
        final ActionMode.Callback f457a;

        /* renamed from: b */
        final Context f458b;

        /* renamed from: c */
        final ArrayList<SupportActionModeWrapper> f459c = new ArrayList<>();

        /* renamed from: d */
        final SimpleArrayMap<Menu, Menu> f460d = new SimpleArrayMap<>();

        public CallbackWrapper(Context context, ActionMode.Callback callback) {
            this.f458b = context;
            this.f457a = callback;
        }

        /* renamed from: f */
        private Menu m21957f(Menu menu) {
            Menu menu2 = this.f460d.get(menu);
            Menu menu3 = menu2;
            if (menu2 == null) {
                menu3 = new MenuWrapperICS(this.f458b, (SupportMenu) menu);
                this.f460d.put(menu, menu3);
            }
            return menu3;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: a */
        public void mo21962a(ActionMode actionMode) {
            this.f457a.onDestroyActionMode(m21958e(actionMode));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: b */
        public boolean mo21961b(ActionMode actionMode, Menu menu) {
            return this.f457a.onCreateActionMode(m21958e(actionMode), m21957f(menu));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: c */
        public boolean mo21960c(ActionMode actionMode, Menu menu) {
            return this.f457a.onPrepareActionMode(m21958e(actionMode), m21957f(menu));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        /* renamed from: d */
        public boolean mo21959d(ActionMode actionMode, MenuItem menuItem) {
            return this.f457a.onActionItemClicked(m21958e(actionMode), new MenuItemWrapperICS(this.f458b, (SupportMenuItem) menuItem));
        }

        /* renamed from: e */
        public android.view.ActionMode m21958e(ActionMode actionMode) {
            int size = this.f459c.size();
            for (int i = 0; i < size; i++) {
                SupportActionModeWrapper supportActionModeWrapper = this.f459c.get(i);
                if (supportActionModeWrapper != null && supportActionModeWrapper.f456b == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.f458b, actionMode);
            this.f459c.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }
    }

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.f455a = context;
        this.f456b = actionMode;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f456b.mo21976c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f456b.mo21975d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuWrapperICS(this.f455a, (SupportMenu) this.f456b.mo21974e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f456b.mo21973f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f456b.mo21972g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f456b.m21984h();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f456b.mo21971i();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f456b.m21983j();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f456b.mo21970k();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f456b.mo21969l();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f456b.mo21968m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f456b.mo21967n(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f456b.mo21966o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f456b.m21982p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f456b.mo21965q(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f456b.mo21964r(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f456b.mo21963s(z);
    }
}

package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/ActionMode.class */
public abstract class ActionMode {

    /* renamed from: f */
    private Object f442f;

    /* renamed from: g */
    private boolean f443g;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/ActionMode$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo21962a(ActionMode actionMode);

        /* renamed from: b */
        boolean mo21961b(ActionMode actionMode, Menu menu);

        /* renamed from: c */
        boolean mo21960c(ActionMode actionMode, Menu menu);

        /* renamed from: d */
        boolean mo21959d(ActionMode actionMode, MenuItem menuItem);
    }

    /* renamed from: c */
    public abstract void mo21976c();

    /* renamed from: d */
    public abstract View mo21975d();

    /* renamed from: e */
    public abstract Menu mo21974e();

    /* renamed from: f */
    public abstract MenuInflater mo21973f();

    /* renamed from: g */
    public abstract CharSequence mo21972g();

    /* renamed from: h */
    public Object m21984h() {
        return this.f442f;
    }

    /* renamed from: i */
    public abstract CharSequence mo21971i();

    /* renamed from: j */
    public boolean m21983j() {
        return this.f443g;
    }

    /* renamed from: k */
    public abstract void mo21970k();

    /* renamed from: l */
    public boolean mo21969l() {
        return false;
    }

    /* renamed from: m */
    public abstract void mo21968m(View view);

    /* renamed from: n */
    public abstract void mo21967n(int i);

    /* renamed from: o */
    public abstract void mo21966o(CharSequence charSequence);

    /* renamed from: p */
    public void m21982p(Object obj) {
        this.f442f = obj;
    }

    /* renamed from: q */
    public abstract void mo21965q(int i);

    /* renamed from: r */
    public abstract void mo21964r(CharSequence charSequence);

    /* renamed from: s */
    public void mo21963s(boolean z) {
        this.f443g = z;
    }
}

package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.appbar.AppBarLayout;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.b */
/* loaded from: classes2-dex2jar.jar:j/a/p/b.class */
public class C13299b extends AbstractC13298a {
    @Nullable

    /* renamed from: c */
    public static final ViewDataBinding.IncludedLayouts f29909c = null;
    @Nullable

    /* renamed from: d */
    public static final SparseIntArray f29910d = new SparseIntArray();

    /* renamed from: b */
    public long f29911b;

    static {
        f29910d.put(R$id.app_bar, 1);
        f29910d.put(2131363304, 2);
        f29910d.put(R$id.fragment_container, 3);
    }

    public C13299b(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f29909c, f29910d));
    }

    public C13299b(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppBarLayout) objArr[1], (CoordinatorLayout) objArr[0], (FrameLayout) objArr[3], (Toolbar) objArr[2]);
        this.f29911b = -1L;
        this.f29908a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13298a
    /* renamed from: a */
    public void mo4307a(@Nullable C14508b bVar) {
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f29911b = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29911b != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29911b = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        boolean z;
        if (2 == i) {
            mo4307a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}

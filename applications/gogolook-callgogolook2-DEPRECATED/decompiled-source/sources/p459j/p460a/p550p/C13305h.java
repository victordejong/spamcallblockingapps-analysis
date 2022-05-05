package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.h */
/* loaded from: classes2-dex2jar.jar:j/a/p/h.class */
public class C13305h extends AbstractC13304g {
    @Nullable

    /* renamed from: d */
    public static final ViewDataBinding.IncludedLayouts f29924d = null;
    @Nullable

    /* renamed from: e */
    public static final SparseIntArray f29925e = null;

    /* renamed from: c */
    public long f29926c;

    public C13305h(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f29924d, f29925e));
    }

    public C13305h(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[0]);
        this.f29926c = -1L;
        this.f29922a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13304g
    /* renamed from: a */
    public void mo4295a(@Nullable C14508b bVar) {
        this.f29923b = bVar;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f29926c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29926c != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29926c = 2L;
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
            mo4295a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}

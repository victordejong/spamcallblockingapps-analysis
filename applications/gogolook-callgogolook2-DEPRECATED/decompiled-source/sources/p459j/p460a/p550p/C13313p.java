package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p570v.p571a.View$OnClickListenerC13685a;
import p459j.p460a.p604y0.p608d.p609h.AbstractC14538b;
import p459j.p460a.p604y0.p608d.p609h.C14551h;
/* renamed from: j.a.p.p */
/* loaded from: classes2-dex2jar.jar:j/a/p/p.class */
public class C13313p extends AbstractC13312o implements View$OnClickListenerC13685a.AbstractC13686a {
    @Nullable

    /* renamed from: h */
    public static final ViewDataBinding.IncludedLayouts f29954h = null;
    @Nullable

    /* renamed from: i */
    public static final SparseIntArray f29955i = new SparseIntArray();
    @NonNull

    /* renamed from: e */
    public final ConstraintLayout f29956e;
    @Nullable

    /* renamed from: f */
    public final View.OnClickListener f29957f;

    /* renamed from: g */
    public long f29958g;

    static {
        f29955i.put(R$id.tv_small_header_description, 3);
    }

    public C13313p(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f29954h, f29955i));
    }

    public C13313p(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (TextView) objArr[1], (TextView) objArr[2]);
        this.f29958g = -1L;
        this.f29956e = (ConstraintLayout) objArr[0];
        this.f29956e.setTag(null);
        this.f29950a.setTag(null);
        this.f29951b.setTag(null);
        setRootTag(view);
        this.f29957f = new View$OnClickListenerC13685a(this, 1);
        invalidateAll();
    }

    @Override // p459j.p460a.p570v.p571a.View$OnClickListenerC13685a.AbstractC13686a
    /* renamed from: a */
    public final void mo3637a(int i, View view) {
        AbstractC14538b bVar = this.f29953d;
        if (bVar != null) {
            bVar.mo1125a();
        }
    }

    @Override // p459j.p460a.p550p.AbstractC13312o
    /* renamed from: a */
    public void mo4277a(@Nullable AbstractC14538b bVar) {
        this.f29953d = bVar;
        synchronized (this) {
            this.f29958g |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // p459j.p460a.p550p.AbstractC13312o
    /* renamed from: a */
    public void mo4276a(@Nullable C14551h hVar) {
        this.f29952c = hVar;
        synchronized (this) {
            this.f29958g |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f29958g;
            this.f29958g = 0L;
        }
        C14551h hVar = this.f29952c;
        int i = ((5 & j) > 0L ? 1 : ((5 & j) == 0L ? 0 : -1));
        String str = null;
        if (i != 0) {
            str = null;
            if (hVar != null) {
                str = hVar.m1133a();
            }
        }
        if ((j & 4) != 0) {
            this.f29950a.setOnClickListener(this.f29957f);
        }
        if (i != 0) {
            TextViewBindingAdapter.setText(this.f29951b, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29958g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29958g = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        boolean z = true;
        if (3 == i) {
            mo4276a((C14551h) obj);
        } else if (1 == i) {
            mo4277a((AbstractC14538b) obj);
        } else {
            z = false;
        }
        return z;
    }
}

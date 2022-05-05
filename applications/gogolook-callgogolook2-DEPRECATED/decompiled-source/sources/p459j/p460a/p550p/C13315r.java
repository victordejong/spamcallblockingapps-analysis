package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
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
import p459j.p460a.p604y0.p608d.p609h.C14560k;
/* renamed from: j.a.p.r */
/* loaded from: classes2-dex2jar.jar:j/a/p/r.class */
public class C13315r extends AbstractC13314q implements View$OnClickListenerC13685a.AbstractC13686a {
    @Nullable

    /* renamed from: h */
    public static final ViewDataBinding.IncludedLayouts f29963h = null;
    @Nullable

    /* renamed from: i */
    public static final SparseIntArray f29964i = new SparseIntArray();
    @NonNull

    /* renamed from: e */
    public final ConstraintLayout f29965e;
    @Nullable

    /* renamed from: f */
    public final View.OnClickListener f29966f;

    /* renamed from: g */
    public long f29967g;

    static {
        f29964i.put(R$id.iv_promotion_check, 3);
        f29964i.put(R$id.tv_promotion_title, 4);
        f29964i.put(R$id.tv_promotion_description, 5);
    }

    public C13315r(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f29963h, f29964i));
    }

    public C13315r(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[3], (TextView) objArr[5], (TextView) objArr[2], (TextView) objArr[1], (TextView) objArr[4]);
        this.f29967g = -1L;
        this.f29965e = (ConstraintLayout) objArr[0];
        this.f29965e.setTag(null);
        this.f29959a.setTag(null);
        this.f29960b.setTag(null);
        setRootTag(view);
        this.f29966f = new View$OnClickListenerC13685a(this, 1);
        invalidateAll();
    }

    @Override // p459j.p460a.p570v.p571a.View$OnClickListenerC13685a.AbstractC13686a
    /* renamed from: a */
    public final void mo3637a(int i, View view) {
        AbstractC14538b bVar = this.f29962d;
        if (bVar != null) {
            bVar.mo1125a();
        }
    }

    @Override // p459j.p460a.p550p.AbstractC13314q
    /* renamed from: a */
    public void mo4273a(@Nullable AbstractC14538b bVar) {
        this.f29962d = bVar;
        synchronized (this) {
            this.f29967g |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // p459j.p460a.p550p.AbstractC13314q
    /* renamed from: a */
    public void mo4272a(@Nullable C14560k kVar) {
        this.f29961c = kVar;
        synchronized (this) {
            this.f29967g |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f29967g;
            this.f29967g = 0L;
        }
        C14560k kVar = this.f29961c;
        int i = ((5 & j) > 0L ? 1 : ((5 & j) == 0L ? 0 : -1));
        String str = null;
        if (i != 0) {
            str = null;
            if (kVar != null) {
                str = kVar.m1124a();
            }
        }
        if (i != 0) {
            TextViewBindingAdapter.setText(this.f29959a, str);
        }
        if ((j & 4) != 0) {
            this.f29960b.setOnClickListener(this.f29966f);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29967g != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29967g = 4L;
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
            mo4272a((C14560k) obj);
        } else if (1 == i) {
            mo4273a((AbstractC14538b) obj);
        } else {
            z = false;
        }
        return z;
    }
}

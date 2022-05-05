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
import gogolook.callgogolook2.R$id;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.f */
/* loaded from: classes2-dex2jar.jar:j/a/p/f.class */
public class C13303f extends AbstractC13302e {
    @Nullable

    /* renamed from: d */
    public static final ViewDataBinding.IncludedLayouts f29918d = null;
    @Nullable

    /* renamed from: e */
    public static final SparseIntArray f29919e = new SparseIntArray();
    @NonNull

    /* renamed from: b */
    public final ConstraintLayout f29920b;

    /* renamed from: c */
    public long f29921c;

    static {
        f29919e.put(R$id.iv_vas_intro, 1);
        f29919e.put(R$id.tv_vas_intro_title, 2);
        f29919e.put(R$id.tv_vas_intro_description, 3);
        f29919e.put(R$id.tv_vas_intro_scan, 4);
        f29919e.put(R$id.tv_vas_intro_term, 5);
        f29919e.put(R$id.iv_vas_intro_close, 6);
        f29919e.put(R$id.tv_vas_intro_default_sms, 7);
    }

    public C13303f(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f29918d, f29919e));
    }

    public C13303f(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (ImageView) objArr[6], (TextView) objArr[7], (TextView) objArr[3], (TextView) objArr[4], (TextView) objArr[5], (TextView) objArr[2]);
        this.f29921c = -1L;
        this.f29920b = (ConstraintLayout) objArr[0];
        this.f29920b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13302e
    /* renamed from: a */
    public void mo4299a(@Nullable C14508b bVar) {
        this.f29917a = bVar;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f29921c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29921c != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29921c = 2L;
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
            mo4299a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}

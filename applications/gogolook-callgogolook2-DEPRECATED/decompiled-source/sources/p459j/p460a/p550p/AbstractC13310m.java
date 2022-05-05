package p459j.p460a.p550p;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p604y0.p608d.p609h.AbstractC14538b;
import p459j.p460a.p604y0.p608d.p609h.C14547f;
/* renamed from: j.a.p.m */
/* loaded from: classes2-dex2jar.jar:j/a/p/m.class */
public abstract class AbstractC13310m extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final ConstraintLayout f29940a;
    @NonNull

    /* renamed from: b */
    public final TextView f29941b;
    @NonNull

    /* renamed from: c */
    public final TextView f29942c;
    @NonNull

    /* renamed from: d */
    public final TextView f29943d;
    @Bindable

    /* renamed from: e */
    public C14547f f29944e;
    @Bindable

    /* renamed from: f */
    public AbstractC14538b f29945f;

    public AbstractC13310m(Object obj, View view, int i, ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        super(obj, view, i);
        this.f29940a = constraintLayout;
        this.f29941b = textView3;
        this.f29942c = textView4;
        this.f29943d = textView5;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13310m m4283a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4282a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13310m m4282a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13310m) ViewDataBinding.inflateInternal(layoutInflater, R$layout.vas_main_header, viewGroup, z, obj);
    }

    /* renamed from: a */
    public abstract void mo4281a(@Nullable AbstractC14538b bVar);

    /* renamed from: a */
    public abstract void mo4280a(@Nullable C14547f fVar);
}

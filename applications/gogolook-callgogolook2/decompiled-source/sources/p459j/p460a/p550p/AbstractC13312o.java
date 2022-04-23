package p459j.p460a.p550p;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p604y0.p608d.p609h.AbstractC14538b;
import p459j.p460a.p604y0.p608d.p609h.C14551h;
/* renamed from: j.a.p.o */
/* loaded from: classes2-dex2jar.jar:j/a/p/o.class */
public abstract class AbstractC13312o extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final TextView f29950a;
    @NonNull

    /* renamed from: b */
    public final TextView f29951b;
    @Bindable

    /* renamed from: c */
    public C14551h f29952c;
    @Bindable

    /* renamed from: d */
    public AbstractC14538b f29953d;

    public AbstractC13312o(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.f29950a = textView2;
        this.f29951b = textView3;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13312o m4279a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4278a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13312o m4278a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13312o) ViewDataBinding.inflateInternal(layoutInflater, R$layout.vas_main_small_header, viewGroup, z, obj);
    }

    /* renamed from: a */
    public abstract void mo4277a(@Nullable AbstractC14538b bVar);

    /* renamed from: a */
    public abstract void mo4276a(@Nullable C14551h hVar);
}

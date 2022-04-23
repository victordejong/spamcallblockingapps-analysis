package p459j.p460a.p550p;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.c */
/* loaded from: classes2-dex2jar.jar:j/a/p/c.class */
public abstract class AbstractC13300c extends ViewDataBinding {
    @Bindable

    /* renamed from: a */
    public C14508b f29912a;

    public AbstractC13300c(Object obj, View view, int i, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        super(obj, view, i);
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13300c m4305a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4304a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13300c m4304a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13300c) ViewDataBinding.inflateInternal(layoutInflater, R$layout.fragment_vas_empty, viewGroup, z, obj);
    }

    @Nullable
    /* renamed from: a */
    public C14508b m4306a() {
        return this.f29912a;
    }

    /* renamed from: a */
    public abstract void mo4303a(@Nullable C14508b bVar);
}

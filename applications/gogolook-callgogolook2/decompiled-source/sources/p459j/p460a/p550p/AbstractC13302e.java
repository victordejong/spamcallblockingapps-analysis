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
/* renamed from: j.a.p.e */
/* loaded from: classes2-dex2jar.jar:j/a/p/e.class */
public abstract class AbstractC13302e extends ViewDataBinding {
    @Bindable

    /* renamed from: a */
    public C14508b f29917a;

    public AbstractC13302e(Object obj, View view, int i, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        super(obj, view, i);
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13302e m4301a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4300a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13302e m4300a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13302e) ViewDataBinding.inflateInternal(layoutInflater, R$layout.fragment_vas_intro, viewGroup, z, obj);
    }

    @Nullable
    /* renamed from: a */
    public C14508b m4302a() {
        return this.f29917a;
    }

    /* renamed from: a */
    public abstract void mo4299a(@Nullable C14508b bVar);
}

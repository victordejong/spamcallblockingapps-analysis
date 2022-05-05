package p459j.p460a.p550p;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.k */
/* loaded from: classes2-dex2jar.jar:j/a/p/k.class */
public abstract class AbstractC13308k extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final TextView f29932a;
    @NonNull

    /* renamed from: b */
    public final TextView f29933b;
    @NonNull

    /* renamed from: c */
    public final TextView f29934c;
    @Bindable

    /* renamed from: d */
    public C14508b f29935d;

    public AbstractC13308k(Object obj, View view, int i, FrameLayout frameLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.f29932a = textView;
        this.f29933b = textView2;
        this.f29934c = textView3;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13308k m4289a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4288a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13308k m4288a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13308k) ViewDataBinding.inflateInternal(layoutInflater, R$layout.fragment_vas_scan, viewGroup, z, obj);
    }

    @Nullable
    /* renamed from: a */
    public C14508b m4290a() {
        return this.f29935d;
    }

    /* renamed from: a */
    public abstract void mo4286a(@Nullable C14508b bVar);
}

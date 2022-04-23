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
import p459j.p460a.p604y0.p608d.p609h.AbstractC14538b;
import p459j.p460a.p604y0.p608d.p609h.C14560k;
/* renamed from: j.a.p.q */
/* loaded from: classes2-dex2jar.jar:j/a/p/q.class */
public abstract class AbstractC13314q extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final TextView f29959a;
    @NonNull

    /* renamed from: b */
    public final TextView f29960b;
    @Bindable

    /* renamed from: c */
    public C14560k f29961c;
    @Bindable

    /* renamed from: d */
    public AbstractC14538b f29962d;

    public AbstractC13314q(Object obj, View view, int i, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        super(obj, view, i);
        this.f29959a = textView2;
        this.f29960b = textView3;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13314q m4275a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4274a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13314q m4274a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13314q) ViewDataBinding.inflateInternal(layoutInflater, R$layout.vas_promotion_header, viewGroup, z, obj);
    }

    /* renamed from: a */
    public abstract void mo4273a(@Nullable AbstractC14538b bVar);

    /* renamed from: a */
    public abstract void mo4272a(@Nullable C14560k kVar);
}

package p459j.p460a.p550p;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.i */
/* loaded from: classes2-dex2jar.jar:j/a/p/i.class */
public abstract class AbstractC13306i extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final RecyclerView f29927a;
    @Bindable

    /* renamed from: b */
    public C14508b f29928b;

    public AbstractC13306i(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.f29927a = recyclerView;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13306i m4293a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4292a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13306i m4292a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13306i) ViewDataBinding.inflateInternal(layoutInflater, R$layout.fragment_vas_promotion, viewGroup, z, obj);
    }

    @Nullable
    /* renamed from: a */
    public C14508b m4294a() {
        return this.f29928b;
    }

    /* renamed from: a */
    public abstract void mo4291a(@Nullable C14508b bVar);
}

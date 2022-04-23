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
/* renamed from: j.a.p.g */
/* loaded from: classes2-dex2jar.jar:j/a/p/g.class */
public abstract class AbstractC13304g extends ViewDataBinding {
    @NonNull

    /* renamed from: a */
    public final RecyclerView f29922a;
    @Bindable

    /* renamed from: b */
    public C14508b f29923b;

    public AbstractC13304g(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.f29922a = recyclerView;
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC13304g m4297a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return m4296a(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    /* renamed from: a */
    public static AbstractC13304g m4296a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (AbstractC13304g) ViewDataBinding.inflateInternal(layoutInflater, R$layout.fragment_vas_main, viewGroup, z, obj);
    }

    @Nullable
    /* renamed from: a */
    public C14508b m4298a() {
        return this.f29923b;
    }

    /* renamed from: a */
    public abstract void mo4295a(@Nullable C14508b bVar);
}

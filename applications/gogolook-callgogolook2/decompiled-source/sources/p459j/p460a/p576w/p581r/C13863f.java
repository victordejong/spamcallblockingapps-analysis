package p459j.p460a.p576w.p581r;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$layout;
import java.util.List;
import p459j.p460a.p576w.p578o.C13796c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.r.f */
/* loaded from: classes2-dex2jar.jar:j/a/w/r/f.class */
public final class C13863f extends RecyclerView.Adapter<C13873i> {

    /* renamed from: a */
    public final List<C13796c> f31112a;

    public C13863f(List<C13796c> list) {
        C15149k.m377b(list, "iapIntros");
        this.f31112a = list;
    }

    /* renamed from: a */
    public void onBindViewHolder(C13873i iVar, int i) {
        C15149k.m377b(iVar, "holder");
        iVar.m3268a(this.f31112a.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f31112a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C13873i onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.simple_image_with_text_fragment_constrant, viewGroup, false);
        C15149k.m383a((Object) inflate, "LayoutInflater.from(pare…constrant, parent, false)");
        return new C13873i(inflate);
    }
}

package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.AbstractC0313c0;
import java.util.List;
import p1727n3.p1744b0.p1745a.C25574c;
import p1727n3.p1744b0.p1745a.C25576d;
import p1727n3.p1744b0.p1745a.C25586h;
/* renamed from: n3.b0.a.p */
/* loaded from: classes-dex2jar.jar:n3/b0/a/p.class */
public abstract class AbstractC25615p<T, VH extends RecyclerView.AbstractC0313c0> extends RecyclerView.AbstractC0317g<VH> {
    public final C25576d<T> mDiffer;
    private final C25576d.AbstractC25580b<T> mListener;

    /* renamed from: n3.b0.a.p$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/p$a.class */
    public class C25616a implements C25576d.AbstractC25580b<T> {
        public C25616a() {
            AbstractC25615p.this = r4;
        }

        @Override // p1727n3.p1744b0.p1745a.C25576d.AbstractC25580b
        /* renamed from: a */
        public void mo3136a(List<T> list, List<T> list2) {
            AbstractC25615p.this.onCurrentListChanged(list, list2);
        }
    }

    public AbstractC25615p(C25574c<T> c25574c) {
        C25616a c25616a = new C25616a();
        this.mListener = c25616a;
        C25576d<T> c25576d = new C25576d<>(new C25570b(this), c25574c);
        this.mDiffer = c25576d;
        c25576d.f71588d.add(c25616a);
    }

    public AbstractC25615p(C25586h.AbstractC25591e<T> abstractC25591e) {
        C25616a c25616a = new C25616a();
        this.mListener = c25616a;
        C25576d<T> c25576d = new C25576d<>(new C25570b(this), new C25574c.C25575a(abstractC25591e).m3206a());
        this.mDiffer = c25576d;
        c25576d.f71588d.add(c25616a);
    }

    public List<T> getCurrentList() {
        return this.mDiffer.f71590f;
    }

    public T getItem(int i) {
        return this.mDiffer.f71590f.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.mDiffer.f71590f.size();
    }

    public void onCurrentListChanged(List<T> list, List<T> list2) {
    }

    public void submitList(List<T> list) {
        this.mDiffer.m3204b(list, null);
    }

    public void submitList(List<T> list, Runnable runnable) {
        this.mDiffer.m3204b(list, runnable);
    }
}

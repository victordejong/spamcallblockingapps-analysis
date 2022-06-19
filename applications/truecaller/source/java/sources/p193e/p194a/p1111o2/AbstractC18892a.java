package p193e.p194a.p1111o2;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.o2.a */
/* loaded from: classes4-dex2jar.jar:e/a/o2/a.class */
public interface AbstractC18892a extends AbstractC18911s, AbstractC18905m {
    /* renamed from: f */
    C18913u mo14330f(AbstractC18892a abstractC18892a, AbstractC18912t abstractC18912t);

    int getItemCount();

    long getItemId(int i);

    int getItemViewType(int i);

    void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i);

    RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i);

    void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0);

    void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0);

    void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0);

    /* renamed from: s */
    int mo14328s(int i);

    /* renamed from: u */
    void mo14326u(boolean z);

    /* renamed from: v */
    boolean mo14325v(int i);
}

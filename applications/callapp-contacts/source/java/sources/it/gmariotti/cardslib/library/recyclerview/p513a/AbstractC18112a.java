package it.gmariotti.cardslib.library.recyclerview.p513a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.recyclerview.C18108a;
import it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* renamed from: it.gmariotti.cardslib.library.recyclerview.a.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/a.class */
public abstract class AbstractC18112a extends RecyclerView.AbstractC2626a<C18113a> {

    /* renamed from: a */
    protected Context f63046a;

    /* renamed from: b */
    protected int f63047b = C18108a.C18110b.list_card_layout;

    /* renamed from: c */
    protected int f63048c = 1;

    /* renamed from: d */
    protected int[] f63049d;

    /* renamed from: e */
    protected CardRecyclerView f63050e;

    /* renamed from: it.gmariotti.cardslib.library.recyclerview.a.a$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/a$a.class */
    public static final class C18113a extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        public final AbstractC18152a f63051r;

        /* renamed from: s */
        public boolean f63052s = false;

        public C18113a(View view) {
            super(view);
            this.f63051r = (AbstractC18152a) view.findViewById(C18108a.C18109a.list_cardId);
        }
    }

    public AbstractC18112a(Context context) {
        this.f63046a = context;
    }

    /* renamed from: a */
    public C18113a onCreateViewHolder(ViewGroup viewGroup, int i) {
        int[] iArr = this.f63049d;
        return (iArr == null || iArr.length == 0) ? new C18113a(LayoutInflater.from(this.f63046a).inflate(this.f63047b, viewGroup, false)) : new C18113a(LayoutInflater.from(this.f63046a).inflate(this.f63049d[i], viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(C18113a c18113a, int i) {
        AbstractC18152a abstractC18152a = c18113a.f63051r;
        C18073b item = getItem(i);
        if (abstractC18152a != null) {
            abstractC18152a.setForceReplaceInnerLayout(C18073b.equalsInnerLayout(abstractC18152a.getCard(), item));
            abstractC18152a.setRecycle(c18113a.f63052s);
            boolean isSwipeable = item.isSwipeable();
            item.setSwipeable(false);
            abstractC18152a.setCard(item);
            item.setSwipeable(isSwipeable);
            if ((item.getCardHeader() == null || !item.getCardHeader().m4462d()) && item.getViewToClickToExpand() == null) {
                return;
            }
            setupExpandCollapseListAnimation(abstractC18152a);
        }
    }

    public CardRecyclerView getCardRecyclerView() {
        return this.f63050e;
    }

    public abstract C18073b getItem(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        return getItem(i).getType();
    }

    public void setCardRecyclerView(CardRecyclerView cardRecyclerView) {
        this.f63050e = cardRecyclerView;
    }

    public void setRowLayoutId(int i) {
        this.f63047b = i;
    }

    public void setRowLayoutIds(int[] iArr) {
        this.f63049d = iArr;
        if (iArr != null) {
            this.f63048c = iArr.length;
        } else {
            this.f63048c = 1;
        }
    }

    public void setupExpandCollapseListAnimation(AbstractC18152a abstractC18152a) {
        if (abstractC18152a == null) {
            return;
        }
        abstractC18152a.setOnExpandListAnimatorListener(this.f63050e);
    }
}

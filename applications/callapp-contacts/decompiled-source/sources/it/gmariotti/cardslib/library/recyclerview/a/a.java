package it.gmariotti.cardslib.library.recyclerview.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import it.gmariotti.cardslib.library.a.b;
import it.gmariotti.cardslib.library.recyclerview.a;
import it.gmariotti.cardslib.library.recyclerview.view.CardRecyclerView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/a.class */
public abstract class a extends RecyclerView.a<C0599a> {

    /* renamed from: a  reason: collision with root package name */
    protected Context f36385a;

    /* renamed from: b  reason: collision with root package name */
    protected int f36386b = a.b.list_card_layout;

    /* renamed from: c  reason: collision with root package name */
    protected int f36387c = 1;

    /* renamed from: d  reason: collision with root package name */
    protected int[] f36388d;
    protected CardRecyclerView e;

    /* renamed from: it.gmariotti.cardslib.library.recyclerview.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/recyclerview/a/a$a.class */
    public static final class C0599a extends RecyclerView.v {
        public final it.gmariotti.cardslib.library.view.a.a r;
        public boolean s = false;

        public C0599a(View view) {
            super(view);
            this.r = (it.gmariotti.cardslib.library.view.a.a) view.findViewById(a.C0598a.list_cardId);
        }
    }

    public a(Context context) {
        this.f36385a = context;
    }

    /* renamed from: a */
    public C0599a onCreateViewHolder(ViewGroup viewGroup, int i) {
        int[] iArr = this.f36388d;
        return (iArr == null || iArr.length == 0) ? new C0599a(LayoutInflater.from(this.f36385a).inflate(this.f36386b, viewGroup, false)) : new C0599a(LayoutInflater.from(this.f36385a).inflate(this.f36388d[i], viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(C0599a aVar, int i) {
        it.gmariotti.cardslib.library.view.a.a aVar2 = aVar.r;
        b item = getItem(i);
        if (aVar2 != null) {
            aVar2.setForceReplaceInnerLayout(b.equalsInnerLayout(aVar2.getCard(), item));
            aVar2.setRecycle(aVar.s);
            boolean isSwipeable = item.isSwipeable();
            item.setSwipeable(false);
            aVar2.setCard(item);
            item.setSwipeable(isSwipeable);
            if ((item.getCardHeader() != null && item.getCardHeader().d()) || item.getViewToClickToExpand() != null) {
                setupExpandCollapseListAnimation(aVar2);
            }
        }
    }

    public CardRecyclerView getCardRecyclerView() {
        return this.e;
    }

    public abstract b getItem(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        return getItem(i).getType();
    }

    public void setCardRecyclerView(CardRecyclerView cardRecyclerView) {
        this.e = cardRecyclerView;
    }

    public void setRowLayoutId(int i) {
        this.f36386b = i;
    }

    public void setRowLayoutIds(int[] iArr) {
        this.f36388d = iArr;
        if (iArr != null) {
            this.f36387c = iArr.length;
        } else {
            this.f36387c = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setupExpandCollapseListAnimation(it.gmariotti.cardslib.library.view.a.a aVar) {
        if (aVar != null) {
            aVar.setOnExpandListAnimatorListener(this.e);
        }
    }
}

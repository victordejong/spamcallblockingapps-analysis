package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18071b;
import it.gmariotti.cardslib.library.view.CardListView;
import it.gmariotti.cardslib.library.view.listener.C18199e;
import it.gmariotti.cardslib.library.view.listener.C18200f;
import it.gmariotti.cardslib.library.view.listener.UndoCard;
import it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18173a;
import it.gmariotti.cardslib.library.view.listener.p516a.AbstractC18182c;
import it.gmariotti.cardslib.library.view.listener.p516a.C18181b;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.a.c */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/c.class */
public final class C18083c extends AbstractC18071b implements C18200f.AbstractC18212d {

    /* renamed from: a */
    protected static String f62992a = "CardArrayAdapter";

    /* renamed from: b */
    protected CardListView f62993b;

    /* renamed from: c */
    protected View$OnTouchListenerC18173a f62994c;

    /* renamed from: e */
    protected C18200f f62996e;

    /* renamed from: f */
    protected HashMap<String, C18073b> f62997f;

    /* renamed from: g */
    protected AbstractC18182c f62998g;

    /* renamed from: d */
    protected boolean f62995d = false;

    /* renamed from: h */
    View$OnTouchListenerC18173a.AbstractC18178a f62999h = new View$OnTouchListenerC18173a.AbstractC18178a() { // from class: it.gmariotti.cardslib.library.a.c.1
        @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18173a.AbstractC18178a
        /* renamed from: a */
        public final void mo4334a(ListView listView, int[] iArr) {
            int[] iArr2 = new int[iArr.length];
            String[] strArr = new String[iArr.length];
            final ArrayList arrayList = new ArrayList();
            int i = 0;
            for (int i2 : iArr) {
                C18073b c18073b = null;
                if (listView.getAdapter() != null) {
                    c18073b = null;
                    if (listView.getAdapter().getItem(i2) instanceof C18073b) {
                        c18073b = (C18073b) listView.getAdapter().getItem(i2);
                    }
                }
                if (c18073b != null) {
                    iArr2[i] = i2;
                    strArr[i] = c18073b.getId();
                    int i3 = i + 1;
                    arrayList.add(c18073b);
                    C18083c.this.remove(c18073b);
                    i = i3;
                    if (c18073b.getOnSwipeListener() != null) {
                        c18073b.getOnSwipeListener();
                        i = i3;
                    }
                } else {
                    Log.e(C18083c.f62992a, "Error on swipe action. Impossible to retrieve the card from position");
                }
            }
            C18083c.this.notifyDataSetChanged();
            if (!C18083c.this.m4482a() || C18083c.this.f62996e == null) {
                return;
            }
            UndoCard undoCard = new UndoCard(iArr2, strArr);
            String mo4309a = C18083c.this.m4479b().f63319i != null ? C18083c.this.m4479b().f63319i.mo4309a(C18083c.this, iArr2) : null;
            boolean z = true;
            String str = mo4309a;
            if (mo4309a == null) {
                str = mo4309a;
                if (C18083c.this.getContext() != null) {
                    Resources resources = C18083c.this.getContext().getResources();
                    str = mo4309a;
                    if (resources != null) {
                        str = resources.getQuantityString(C18061a.C18067f.list_card_undo_items, iArr.length, Integer.valueOf(iArr.length));
                    }
                }
            }
            C18200f c18200f = C18083c.this.f62996e;
            C18200f.AbstractC18208b abstractC18208b = new C18200f.AbstractC18208b() { // from class: it.gmariotti.cardslib.library.a.c.1.1
                @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18208b
                /* renamed from: a */
                public final void mo4311a(boolean z2) {
                    if (!z2) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            C18073b c18073b2 = (C18073b) it2.next();
                            if (c18073b2.getOnUndoHideSwipeListListener() != null) {
                                c18073b2.getOnUndoHideSwipeListListener();
                            }
                            C18083c.this.f62997f.remove(c18073b2.getId());
                        }
                    }
                }
            };
            if (c18200f.f63316f != null) {
                C18200f.AbstractC18208b abstractC18208b2 = c18200f.f63316f;
                if (c18200f.f63317g != null) {
                    z = false;
                }
                abstractC18208b2.mo4311a(z);
            }
            c18200f.f63317g = undoCard;
            c18200f.f63318h = str;
            c18200f.f63316f = abstractC18208b;
            c18200f.f63312b.setText(c18200f.f63318h);
            c18200f.f63314d.removeCallbacks(c18200f.f63320j);
            c18200f.f63314d.postDelayed(c18200f.f63320j, c18200f.f63311a.getResources().getInteger(C18061a.C18065d.list_card_undobar_hide_delay));
            c18200f.f63311a.setVisibility(0);
            if (c18200f.f63319i.mo4306d() == C18200f.AbstractC18209c.EnumC18210a.ALPHA) {
                c18200f.f63313c.cancel();
                c18200f.f63313c.alpha(1.0f).setDuration(c18200f.f63311a.getResources().getInteger(17694720)).setListener(null);
            } else if (c18200f.f63319i.mo4306d() == C18200f.AbstractC18209c.EnumC18210a.TOPBOTTOM) {
                c18200f.f63313c.cancel();
                c18200f.f63313c.alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(c18200f.f63311a.getResources().getInteger(17694721)).setListener(null);
            }
        }

        @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18173a.AbstractC18178a
        /* renamed from: a */
        public final boolean mo4478a(C18073b c18073b) {
            return C18083c.this.f62998g.mo4331a(c18073b);
        }
    };

    public C18083c(Context context, List<C18073b> list) {
        super(context, list);
    }

    /* renamed from: a */
    public void insert(C18073b c18073b, int i) {
        super.insert(c18073b, i);
        if (this.f62995d) {
            this.f62997f.put(c18073b.getId(), c18073b);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18212d
    /* renamed from: a */
    public final void mo4305a(Parcelable parcelable) {
        if (parcelable != null) {
            UndoCard undoCard = (UndoCard) parcelable;
            int[] iArr = undoCard.itemPosition;
            String[] strArr = undoCard.itemId;
            if (iArr == null) {
                return;
            }
            for (int length = iArr.length - 1; length >= 0; length--) {
                int i = iArr[length];
                String str = strArr[length];
                if (str == null) {
                    Log.w(f62992a, "You have to set a id value to use the undo action");
                } else {
                    C18073b c18073b = this.f62997f.get(str);
                    if (c18073b != null) {
                        insert(c18073b, i);
                        notifyDataSetChanged();
                        if (c18073b.getOnUndoSwipeListListener() != null) {
                            c18073b.getOnUndoSwipeListListener();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4480a(CardListView cardListView) {
        this.f62993b = cardListView;
    }

    /* renamed from: a */
    public final boolean m4482a() {
        return this.f62995d;
    }

    @Override // android.widget.ArrayAdapter
    public final /* synthetic */ void add(C18073b c18073b) {
        C18073b c18073b2 = c18073b;
        super.add(c18073b2);
        if (this.f62995d) {
            this.f62997f.put(c18073b2.getId(), c18073b2);
        }
    }

    @Override // android.widget.ArrayAdapter
    public final void addAll(Collection<? extends C18073b> collection) {
        super.addAll(collection);
        if (this.f62995d) {
            for (C18073b c18073b : collection) {
                this.f62997f.put(c18073b.getId(), c18073b);
            }
        }
    }

    @Override // android.widget.ArrayAdapter
    public final /* synthetic */ void addAll(C18073b[] c18073bArr) {
        C18073b[] c18073bArr2 = c18073bArr;
        super.addAll(c18073bArr2);
        if (this.f62995d) {
            for (C18073b c18073b : c18073bArr2) {
                this.f62997f.put(c18073b.getId(), c18073b);
            }
        }
    }

    /* renamed from: b */
    public final C18200f m4479b() {
        return this.f62996e;
    }

    @Override // android.widget.ArrayAdapter
    public final void clear() {
        super.clear();
        if (this.f62995d) {
            this.f62997f.clear();
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        LayoutInflater layoutInflater = (LayoutInflater) this.f62986i.getSystemService("layout_inflater");
        C18073b c18073b = (C18073b) getItem(i);
        View view2 = view;
        if (c18073b != null) {
            int i2 = this.f62987j;
            if (view == null) {
                view = layoutInflater.inflate(i2, viewGroup, false);
                z = false;
            } else {
                z = true;
            }
            AbstractC18152a abstractC18152a = (AbstractC18152a) view.findViewById(C18061a.C18064c.list_cardId);
            view2 = view;
            if (abstractC18152a != null) {
                abstractC18152a.setForceReplaceInnerLayout(C18073b.equalsInnerLayout(abstractC18152a.getCard(), c18073b));
                abstractC18152a.setRecycle(z);
                boolean isSwipeable = c18073b.isSwipeable();
                c18073b.setSwipeable(false);
                abstractC18152a.setCard(c18073b);
                c18073b.setSwipeable(isSwipeable);
                if (((c18073b.getCardHeader() != null && c18073b.getCardHeader().m4462d()) || c18073b.getViewToClickToExpand() != null) && abstractC18152a != null) {
                    abstractC18152a.setOnExpandListAnimatorListener(this.f62993b);
                }
                if (c18073b.isSwipeable()) {
                    if (this.f62994c == null) {
                        this.f62994c = new View$OnTouchListenerC18173a(this.f62993b, this.f62999h);
                        if (this.f62998g == null) {
                            this.f62998g = new C18181b();
                        }
                        this.f62998g.mo4332a(this);
                        this.f62994c.m4342a(this.f62998g);
                        if (this.f62993b.m4420a() == null) {
                            C18199e c18199e = new C18199e();
                            c18199e.f63310a = this.f62994c;
                            this.f62993b.setOnScrollListener(c18199e);
                        } else {
                            AbsListView.OnScrollListener m4420a = this.f62993b.m4420a();
                            if (m4420a instanceof C18199e) {
                                ((C18199e) m4420a).f63310a = this.f62994c;
                            }
                        }
                        this.f62993b.setOnTouchListener(this.f62994c);
                    }
                    abstractC18152a.setOnTouchListener(this.f62994c);
                    view2 = view;
                } else {
                    abstractC18152a.setOnTouchListener(null);
                    view2 = view;
                }
            }
        }
        return view2;
    }
}

package it.gmariotti.cardslib.library.a;

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
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.a.b;
import it.gmariotti.cardslib.library.view.CardListView;
import it.gmariotti.cardslib.library.view.listener.UndoCard;
import it.gmariotti.cardslib.library.view.listener.a;
import it.gmariotti.cardslib.library.view.listener.e;
import it.gmariotti.cardslib.library.view.listener.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/c.class */
public final class c extends b implements f.d {

    /* renamed from: a  reason: collision with root package name */
    protected static String f36348a = "CardArrayAdapter";

    /* renamed from: b  reason: collision with root package name */
    protected CardListView f36349b;

    /* renamed from: c  reason: collision with root package name */
    protected a f36350c;
    protected f e;
    protected HashMap<String, b> f;
    protected it.gmariotti.cardslib.library.view.listener.a.c g;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f36351d = false;
    a.AbstractC0601a h = new a.AbstractC0601a() { // from class: it.gmariotti.cardslib.library.a.c.1
        @Override // it.gmariotti.cardslib.library.view.listener.a.AbstractC0601a
        public final void a(ListView listView, int[] iArr) {
            int[] iArr2 = new int[iArr.length];
            String[] strArr = new String[iArr.length];
            final ArrayList arrayList = new ArrayList();
            int i = 0;
            for (int i2 : iArr) {
                b bVar = null;
                if (listView.getAdapter() != null) {
                    bVar = null;
                    if (listView.getAdapter().getItem(i2) instanceof b) {
                        bVar = (b) listView.getAdapter().getItem(i2);
                    }
                }
                if (bVar != null) {
                    iArr2[i] = i2;
                    strArr[i] = bVar.getId();
                    int i3 = i + 1;
                    arrayList.add(bVar);
                    c.this.remove(bVar);
                    i = i3;
                    if (bVar.getOnSwipeListener() != null) {
                        bVar.getOnSwipeListener();
                        i = i3;
                    }
                } else {
                    Log.e(c.f36348a, "Error on swipe action. Impossible to retrieve the card from position");
                }
            }
            c.this.notifyDataSetChanged();
            if (c.this.a() && c.this.e != null) {
                UndoCard undoCard = new UndoCard(iArr2, strArr);
                String a2 = c.this.b().i != null ? c.this.b().i.a(c.this, iArr2) : null;
                boolean z = true;
                String str = a2;
                if (a2 == null) {
                    str = a2;
                    if (c.this.getContext() != null) {
                        Resources resources = c.this.getContext().getResources();
                        str = a2;
                        if (resources != null) {
                            str = resources.getQuantityString(a.f.list_card_undo_items, iArr.length, Integer.valueOf(iArr.length));
                        }
                    }
                }
                f fVar = c.this.e;
                f.b bVar2 = new f.b() { // from class: it.gmariotti.cardslib.library.a.c.1.1
                    @Override // it.gmariotti.cardslib.library.view.listener.f.b
                    public final void a(boolean z2) {
                        if (!z2) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                b bVar3 = (b) it2.next();
                                if (bVar3.getOnUndoHideSwipeListListener() != null) {
                                    bVar3.getOnUndoHideSwipeListListener();
                                }
                                c.this.f.remove(bVar3.getId());
                            }
                        }
                    }
                };
                if (fVar.f != null) {
                    f.b bVar3 = fVar.f;
                    if (fVar.g != null) {
                        z = false;
                    }
                    bVar3.a(z);
                }
                fVar.g = undoCard;
                fVar.h = str;
                fVar.f = bVar2;
                fVar.f36543b.setText(fVar.h);
                fVar.f36545d.removeCallbacks(fVar.j);
                fVar.f36545d.postDelayed(fVar.j, fVar.f36542a.getResources().getInteger(a.d.list_card_undobar_hide_delay));
                fVar.f36542a.setVisibility(0);
                if (fVar.i.d() == f.c.a.ALPHA) {
                    fVar.f36544c.cancel();
                    fVar.f36544c.alpha(1.0f).setDuration(fVar.f36542a.getResources().getInteger(17694720)).setListener(null);
                } else if (fVar.i.d() == f.c.a.TOPBOTTOM) {
                    fVar.f36544c.cancel();
                    fVar.f36544c.alpha(1.0f).translationY(BitmapDescriptorFactory.HUE_RED).setDuration(fVar.f36542a.getResources().getInteger(17694721)).setListener(null);
                }
            }
        }

        @Override // it.gmariotti.cardslib.library.view.listener.a.AbstractC0601a
        public final boolean a(b bVar) {
            return c.this.g.a(bVar);
        }
    };

    public c(Context context, List<b> list) {
        super(context, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void insert(b bVar, int i) {
        super.insert(bVar, i);
        if (this.f36351d) {
            this.f.put(bVar.getId(), bVar);
        }
    }

    @Override // it.gmariotti.cardslib.library.view.listener.f.d
    public final void a(Parcelable parcelable) {
        if (parcelable != null) {
            UndoCard undoCard = (UndoCard) parcelable;
            int[] iArr = undoCard.itemPosition;
            String[] strArr = undoCard.itemId;
            if (iArr != null) {
                for (int length = iArr.length - 1; length >= 0; length--) {
                    int i = iArr[length];
                    String str = strArr[length];
                    if (str == null) {
                        Log.w(f36348a, "You have to set a id value to use the undo action");
                    } else {
                        b bVar = this.f.get(str);
                        if (bVar != null) {
                            insert(bVar, i);
                            notifyDataSetChanged();
                            if (bVar.getOnUndoSwipeListListener() != null) {
                                bVar.getOnUndoSwipeListListener();
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(CardListView cardListView) {
        this.f36349b = cardListView;
    }

    public final boolean a() {
        return this.f36351d;
    }

    @Override // android.widget.ArrayAdapter
    public final /* synthetic */ void add(b bVar) {
        b bVar2 = bVar;
        super.add(bVar2);
        if (this.f36351d) {
            this.f.put(bVar2.getId(), bVar2);
        }
    }

    @Override // android.widget.ArrayAdapter
    public final void addAll(Collection<? extends b> collection) {
        super.addAll(collection);
        if (this.f36351d) {
            for (b bVar : collection) {
                this.f.put(bVar.getId(), bVar);
            }
        }
    }

    @Override // android.widget.ArrayAdapter
    public final /* synthetic */ void addAll(b[] bVarArr) {
        b[] bVarArr2 = bVarArr;
        super.addAll(bVarArr2);
        if (this.f36351d) {
            for (b bVar : bVarArr2) {
                this.f.put(bVar.getId(), bVar);
            }
        }
    }

    public final f b() {
        return this.e;
    }

    @Override // android.widget.ArrayAdapter
    public final void clear() {
        super.clear();
        if (this.f36351d) {
            this.f.clear();
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        LayoutInflater layoutInflater = (LayoutInflater) this.i.getSystemService("layout_inflater");
        b bVar = (b) getItem(i);
        View view2 = view;
        if (bVar != null) {
            int i2 = this.j;
            if (view == null) {
                view = layoutInflater.inflate(i2, viewGroup, false);
                z = false;
            } else {
                z = true;
            }
            it.gmariotti.cardslib.library.view.a.a aVar = (it.gmariotti.cardslib.library.view.a.a) view.findViewById(a.c.list_cardId);
            view2 = view;
            if (aVar != null) {
                aVar.setForceReplaceInnerLayout(b.equalsInnerLayout(aVar.getCard(), bVar));
                aVar.setRecycle(z);
                boolean isSwipeable = bVar.isSwipeable();
                bVar.setSwipeable(false);
                aVar.setCard(bVar);
                bVar.setSwipeable(isSwipeable);
                if (((bVar.getCardHeader() != null && bVar.getCardHeader().d()) || bVar.getViewToClickToExpand() != null) && aVar != null) {
                    aVar.setOnExpandListAnimatorListener(this.f36349b);
                }
                if (bVar.isSwipeable()) {
                    if (this.f36350c == null) {
                        this.f36350c = new it.gmariotti.cardslib.library.view.listener.a(this.f36349b, this.h);
                        if (this.g == null) {
                            this.g = new it.gmariotti.cardslib.library.view.listener.a.b();
                        }
                        this.g.a(this);
                        this.f36350c.a(this.g);
                        if (this.f36349b.a() == null) {
                            e eVar = new e();
                            eVar.f36541a = this.f36350c;
                            this.f36349b.setOnScrollListener(eVar);
                        } else {
                            AbsListView.OnScrollListener a2 = this.f36349b.a();
                            if (a2 instanceof e) {
                                ((e) a2).f36541a = this.f36350c;
                            }
                        }
                        this.f36349b.setOnTouchListener(this.f36350c);
                    }
                    aVar.setOnTouchListener(this.f36350c);
                    view2 = view;
                } else {
                    aVar.setOnTouchListener(null);
                    view2 = view;
                }
            }
        }
        return view2;
    }
}

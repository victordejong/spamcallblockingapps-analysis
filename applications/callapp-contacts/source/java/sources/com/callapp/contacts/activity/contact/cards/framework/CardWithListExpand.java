package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import com.callapp.contacts.util.ViewUtils;
import it.gmariotti.cardslib.library.p510a.C18087e;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
import it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand.class */
public abstract class CardWithListExpand<ViewHolder, FooterViewHolder, T extends CardWithList.ListObject> extends C18087e {

    /* renamed from: a */
    private boolean f21332a;

    /* renamed from: b */
    private CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder f21333b;

    /* renamed from: c */
    private CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter f21334c;

    /* renamed from: d */
    private View f21335d;

    /* renamed from: e */
    private View f21336e;

    /* renamed from: f */
    private int f21337f;

    /* renamed from: g */
    private int f21338g;

    /* renamed from: h */
    private int f21339h;

    /* renamed from: i */
    private int f21340i;

    /* renamed from: j */
    private boolean f21341j;

    /* renamed from: k */
    private boolean f21342k;

    /* renamed from: l */
    private boolean f21343l;

    /* renamed from: m */
    private boolean f21344m;

    /* renamed from: n */
    private boolean f21345n;

    /* renamed from: o */
    private int f21346o;

    /* renamed from: p */
    private DataSetObserver f21347p;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder.class */
    public class ListExpandViewHolder {

        /* renamed from: b */
        private LinearListView f21350b;

        /* renamed from: c */
        private ViewGroup f21351c;

        /* renamed from: d */
        private View f21352d;

        ListExpandViewHolder(View view) {
            CardWithListExpand.this = r5;
            this.f21350b = (LinearListView) view.findViewById(2131362280);
            this.f21351c = (ViewGroup) view.findViewById(2131363207);
            View findViewById = view.findViewById(2131363208);
            this.f21352d = findViewById;
            findViewById.setBackgroundColor(r5.f21346o);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter.class */
    public class MyLinearListAdapter extends ArrayAdapter<T> {

        /* renamed from: a */
        LayoutInflater f21353a;

        /* renamed from: c */
        private boolean f21355c = false;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        MyLinearListAdapter(Context context, List<T> list) {
            super(context, 0, list);
            CardWithListExpand.this = r6;
            this.f21353a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        static /* synthetic */ View m31139a(MyLinearListAdapter myLinearListAdapter, View view, ViewGroup viewGroup) {
            Object obj;
            if (CardWithListExpand.this.getFooterLayoutId() != 0) {
                if (view == null) {
                    view = myLinearListAdapter.f21353a.inflate(CardWithListExpand.this.getFooterLayoutId(), viewGroup, false);
                    obj = CardWithListExpand.this.mo31058a(view);
                    view.setTag(obj);
                } else {
                    obj = view.getTag();
                }
                CardWithListExpand.this.mo31057a((CardWithListExpand) obj);
                return view;
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object obj;
            CardWithList.ListObject listObject = (CardWithList.ListObject) getItem(i);
            if (view == null) {
                view = this.f21353a.inflate(CardWithListExpand.this.getChildLayoutId(), viewGroup, false);
                obj = CardWithListExpand.this.mo31059b(view);
                view.setTag(obj);
            } else {
                obj = view.getTag();
            }
            CardWithListExpand.this.mo31060a((CardWithListExpand) obj, (Object) listObject);
            if (view != null && listObject.getOnItemClickListener() != null) {
                view.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand.MyLinearListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                    }
                });
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (!this.f21355c) {
                super.registerDataSetObserver(dataSetObserver);
            }
            this.f21355c = true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (dataSetObserver == null) {
                this.f21355c = false;
                return;
            }
            super.unregisterDataSetObserver(dataSetObserver);
            this.f21355c = false;
        }
    }

    public CardWithListExpand(Context context) {
        this(context, 2131558750);
    }

    private CardWithListExpand(Context context, int i) {
        super(context, i);
        this.f21332a = false;
        this.f21337f = 2131362279;
        this.f21338g = 2131558503;
        this.f21339h = 2131362281;
        this.f21340i = 2131558504;
        this.f21341j = true;
        this.f21342k = false;
        this.f21344m = false;
        this.f21345n = false;
        this.f21347p = new DataSetObserver() { // from class: com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                CardWithListExpand cardWithListExpand = CardWithListExpand.this;
                cardWithListExpand.m31147a(cardWithListExpand.f21333b);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                CardWithListExpand cardWithListExpand = CardWithListExpand.this;
                cardWithListExpand.m31147a(cardWithListExpand.f21333b);
            }
        };
        setEmptyView(null);
    }

    /* renamed from: a */
    public void m31147a(CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder) {
        if (((ListExpandViewHolder) listExpandViewHolder).f21350b != null) {
            LinearListView linearListView = ((ListExpandViewHolder) listExpandViewHolder).f21350b;
            CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter myLinearListAdapter = this.f21334c;
            m31144a(linearListView, myLinearListAdapter == null || myLinearListAdapter.isEmpty());
            if (this.f21334c == null) {
                return;
            }
            ((ListExpandViewHolder) listExpandViewHolder).f21350b.setDividerColor(this.f21346o);
            ((ListExpandViewHolder) listExpandViewHolder).f21350b.setAdapter(this.f21334c);
        }
    }

    /* renamed from: a */
    private void m31144a(LinearListView linearListView, boolean z) {
        if (isUseEmptyView()) {
            if (!z) {
                View view = this.f21335d;
                if (view != null) {
                    view.setVisibility(8);
                }
                linearListView.setVisibility(0);
                return;
            }
            View view2 = this.f21335d;
            if (view2 == null) {
                linearListView.setVisibility(0);
                return;
            }
            view2.setVisibility(0);
            linearListView.setVisibility(8);
        }
    }

    private int getEmptyViewId() {
        return this.f21337f;
    }

    private int getEmptyViewViewStubLayoutId() {
        return this.f21338g;
    }

    private LinearListView getListView() {
        synchronized (this) {
            CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder = this.f21333b;
            if (listExpandViewHolder != null) {
                return ((ListExpandViewHolder) listExpandViewHolder).f21350b;
            }
            return null;
        }
    }

    private int getProgressBarId() {
        return this.f21339h;
    }

    private int getProgressBarViewStubLayoutId() {
        return this.f21340i;
    }

    private boolean isUseEmptyView() {
        if (this.f21335d != null) {
            return this.f21341j;
        }
        return false;
    }

    private void setEmptyView(View view) {
        this.f21335d = view;
        this.f21341j = view != null;
        CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter linearListAdapter = getLinearListAdapter();
        boolean z = true;
        if (linearListAdapter != null) {
            z = linearListAdapter.isEmpty();
        }
        m31144a(getListView(), z);
    }

    private void setProgressView(View view) {
        this.f21336e = view;
        this.f21342k = view != null;
    }

    private void setViewHolder(CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder) {
        synchronized (this) {
            this.f21333b = listExpandViewHolder;
        }
    }

    /* renamed from: a */
    protected abstract FooterViewHolder mo31058a(View view);

    /* renamed from: a */
    protected abstract List<T> mo31061a();

    @Override // it.gmariotti.cardslib.library.p510a.C18087e
    /* renamed from: a */
    public final void mo4472a(ViewGroup viewGroup, View view) {
        boolean z = true;
        if (!this.f21332a) {
            this.f21332a = true;
            this.f21334c = new MyLinearListAdapter(super.getContext(), mo31061a());
            getChildLayoutId();
        }
        ListExpandViewHolder listExpandViewHolder = (ListExpandViewHolder) view.getTag();
        ListExpandViewHolder listExpandViewHolder2 = listExpandViewHolder;
        if (listExpandViewHolder == null) {
            listExpandViewHolder2 = new ListExpandViewHolder(view);
            view.setTag(listExpandViewHolder2);
        }
        setViewHolder(listExpandViewHolder2);
        if (((ListExpandViewHolder) listExpandViewHolder2).f21350b != null) {
            if (this.f21342k) {
                View findViewById = viewGroup.findViewById(getProgressBarId());
                this.f21336e = findViewById;
                this.f21343l = true;
                if (findViewById != null) {
                    if (findViewById instanceof ViewStub) {
                        ((ViewStub) findViewById).setLayoutResource(getProgressBarViewStubLayoutId());
                    }
                    setProgressView(this.f21336e);
                }
            }
            if (this.f21334c != null) {
                m31147a((ListExpandViewHolder) listExpandViewHolder2);
                this.f21334c.registerDataSetObserver(this.f21347p);
            }
        }
        ViewGroup viewGroup2 = ((ListExpandViewHolder) listExpandViewHolder2).f21351c;
        View view2 = ((ListExpandViewHolder) listExpandViewHolder2).f21352d;
        if (viewGroup2 != null) {
            viewGroup2.setClickable(true);
            this.f21334c.getCount();
            View view3 = null;
            if (ViewUtils.m27329a(viewGroup2)) {
                view3 = null;
                if (viewGroup2.getChildCount() > 0) {
                    view3 = viewGroup2.getChildAt(0);
                }
            }
            if (view3 != null) {
                z = false;
            }
            View m31139a = MyLinearListAdapter.m31139a(this.f21334c, view3, viewGroup2);
            if (m31139a != null) {
                if (z) {
                    viewGroup2.addView(m31139a);
                }
                if (view2 != null) {
                    view2.setBackgroundColor(this.f21346o);
                    view2.setVisibility(0);
                }
            } else {
                view2.setVisibility(8);
            }
        }
        if (this.f21341j) {
            View findViewById2 = viewGroup.findViewById(getEmptyViewId());
            this.f21335d = findViewById2;
            if (findViewById2 == null) {
                return;
            }
            if (findViewById2 instanceof ViewStub) {
                ((ViewStub) findViewById2).setLayoutResource(getEmptyViewViewStubLayoutId());
            }
            setEmptyView(this.f21335d);
        }
    }

    /* renamed from: a */
    protected abstract void mo31057a(FooterViewHolder footerviewholder);

    /* renamed from: a */
    protected abstract void mo31060a(ViewHolder viewholder, T t);

    /* renamed from: b */
    protected abstract ViewHolder mo31059b(View view);

    public abstract int getChildLayoutId();

    public abstract int getFooterLayoutId();

    public CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter getLinearListAdapter() {
        return this.f21334c;
    }
}

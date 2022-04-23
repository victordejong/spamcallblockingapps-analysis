package com.callapp.contacts.activity.contact.cards.framework;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import com.callapp.contacts.util.ViewUtils;
import it.gmariotti.cardslib.library.a.e;
import it.gmariotti.cardslib.library.prototypes.CardWithList;
import it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand.class */
public abstract class CardWithListExpand<ViewHolder, FooterViewHolder, T extends CardWithList.ListObject> extends e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11837a;

    /* renamed from: b  reason: collision with root package name */
    private CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder f11838b;

    /* renamed from: c  reason: collision with root package name */
    private CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter f11839c;

    /* renamed from: d  reason: collision with root package name */
    private View f11840d;
    private View e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private DataSetObserver p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$ListExpandViewHolder.class */
    public class ListExpandViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private LinearListView f11843b;

        /* renamed from: c  reason: collision with root package name */
        private ViewGroup f11844c;

        /* renamed from: d  reason: collision with root package name */
        private View f11845d;

        ListExpandViewHolder(View view) {
            this.f11843b = (LinearListView) view.findViewById(2131362280);
            this.f11844c = (ViewGroup) view.findViewById(2131363207);
            View findViewById = view.findViewById(2131363208);
            this.f11845d = findViewById;
            findViewById.setBackgroundColor(CardWithListExpand.this.o);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter.class */
    public class MyLinearListAdapter extends ArrayAdapter<T> {

        /* renamed from: a  reason: collision with root package name */
        LayoutInflater f11846a;

        /* renamed from: c  reason: collision with root package name */
        private boolean f11848c = false;

        MyLinearListAdapter(Context context, List<T> list) {
            super(context, 0, list);
            this.f11846a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ View a(MyLinearListAdapter myLinearListAdapter, View view, ViewGroup viewGroup) {
            Object obj;
            if (CardWithListExpand.this.getFooterLayoutId() == 0) {
                return null;
            }
            if (view == null) {
                view = myLinearListAdapter.f11846a.inflate(CardWithListExpand.this.getFooterLayoutId(), viewGroup, false);
                obj = CardWithListExpand.this.a(view);
                view.setTag(obj);
            } else {
                obj = view.getTag();
            }
            CardWithListExpand.this.a((CardWithListExpand) obj);
            return view;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object obj;
            CardWithList.ListObject listObject = (CardWithList.ListObject) getItem(i);
            if (view == null) {
                view = this.f11846a.inflate(CardWithListExpand.this.getChildLayoutId(), viewGroup, false);
                obj = CardWithListExpand.this.b(view);
                view.setTag(obj);
            } else {
                obj = view.getTag();
            }
            CardWithListExpand.this.a((CardWithListExpand) obj, (Object) listObject);
            if (!(view == null || listObject.getOnItemClickListener() == null)) {
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
            if (!this.f11848c) {
                super.registerDataSetObserver(dataSetObserver);
            }
            this.f11848c = true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (dataSetObserver == null) {
                this.f11848c = false;
                return;
            }
            super.unregisterDataSetObserver(dataSetObserver);
            this.f11848c = false;
        }
    }

    public CardWithListExpand(Context context) {
        this(context, 2131558750);
    }

    private CardWithListExpand(Context context, int i) {
        super(context, i);
        this.f11837a = false;
        this.f = 2131362279;
        this.g = 2131558503;
        this.h = 2131362281;
        this.i = 2131558504;
        this.j = true;
        this.k = false;
        this.m = false;
        this.n = false;
        this.p = new DataSetObserver() { // from class: com.callapp.contacts.activity.contact.cards.framework.CardWithListExpand.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                CardWithListExpand cardWithListExpand = CardWithListExpand.this;
                cardWithListExpand.a(cardWithListExpand.f11838b);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                CardWithListExpand cardWithListExpand = CardWithListExpand.this;
                cardWithListExpand.a(cardWithListExpand.f11838b);
            }
        };
        setEmptyView(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder) {
        if (((ListExpandViewHolder) listExpandViewHolder).f11843b != null) {
            LinearListView linearListView = ((ListExpandViewHolder) listExpandViewHolder).f11843b;
            CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter myLinearListAdapter = this.f11839c;
            a(linearListView, myLinearListAdapter == null || myLinearListAdapter.isEmpty());
            if (this.f11839c != null) {
                ((ListExpandViewHolder) listExpandViewHolder).f11843b.setDividerColor(this.o);
                ((ListExpandViewHolder) listExpandViewHolder).f11843b.setAdapter(this.f11839c);
            }
        }
    }

    private void a(LinearListView linearListView, boolean z) {
        if (!isUseEmptyView()) {
            return;
        }
        if (z) {
            View view = this.f11840d;
            if (view != null) {
                view.setVisibility(0);
                linearListView.setVisibility(8);
                return;
            }
            linearListView.setVisibility(0);
            return;
        }
        View view2 = this.f11840d;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        linearListView.setVisibility(0);
    }

    private int getEmptyViewId() {
        return this.f;
    }

    private int getEmptyViewViewStubLayoutId() {
        return this.g;
    }

    private LinearListView getListView() {
        synchronized (this) {
            CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder = this.f11838b;
            if (listExpandViewHolder == null) {
                return null;
            }
            return ((ListExpandViewHolder) listExpandViewHolder).f11843b;
        }
    }

    private int getProgressBarId() {
        return this.h;
    }

    private int getProgressBarViewStubLayoutId() {
        return this.i;
    }

    private boolean isUseEmptyView() {
        if (this.f11840d != null) {
            return this.j;
        }
        return false;
    }

    private void setEmptyView(View view) {
        this.f11840d = view;
        this.j = view != null;
        CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter linearListAdapter = getLinearListAdapter();
        boolean z = true;
        if (linearListAdapter != null) {
            z = linearListAdapter.isEmpty();
        }
        a(getListView(), z);
    }

    private void setProgressView(View view) {
        this.e = view;
        this.k = view != null;
    }

    private void setViewHolder(CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder) {
        synchronized (this) {
            this.f11838b = listExpandViewHolder;
        }
    }

    protected abstract FooterViewHolder a(View view);

    protected abstract List<T> a();

    @Override // it.gmariotti.cardslib.library.a.e
    public final void a(ViewGroup viewGroup, View view) {
        boolean z = true;
        if (!this.f11837a) {
            this.f11837a = true;
            this.f11839c = new MyLinearListAdapter(super.getContext(), a());
            getChildLayoutId();
        }
        CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder = (ListExpandViewHolder) view.getTag();
        CardWithListExpand<ViewHolder, FooterViewHolder, T>.ListExpandViewHolder listExpandViewHolder2 = listExpandViewHolder;
        if (listExpandViewHolder == null) {
            listExpandViewHolder2 = new ListExpandViewHolder(view);
            view.setTag(listExpandViewHolder2);
        }
        setViewHolder(listExpandViewHolder2);
        if (((ListExpandViewHolder) listExpandViewHolder2).f11843b != null) {
            if (this.k) {
                View findViewById = viewGroup.findViewById(getProgressBarId());
                this.e = findViewById;
                this.l = true;
                if (findViewById != null) {
                    if (findViewById instanceof ViewStub) {
                        ((ViewStub) findViewById).setLayoutResource(getProgressBarViewStubLayoutId());
                    }
                    setProgressView(this.e);
                }
            }
            if (this.f11839c != null) {
                a((ListExpandViewHolder) listExpandViewHolder2);
                this.f11839c.registerDataSetObserver(this.p);
            }
        }
        ViewGroup viewGroup2 = ((ListExpandViewHolder) listExpandViewHolder2).f11844c;
        View view2 = ((ListExpandViewHolder) listExpandViewHolder2).f11845d;
        if (viewGroup2 != null) {
            viewGroup2.setClickable(true);
            this.f11839c.getCount();
            View view3 = null;
            if (ViewUtils.a(viewGroup2)) {
                view3 = null;
                if (viewGroup2.getChildCount() > 0) {
                    view3 = viewGroup2.getChildAt(0);
                }
            }
            if (view3 != null) {
                z = false;
            }
            View a2 = MyLinearListAdapter.a(this.f11839c, view3, viewGroup2);
            if (a2 != null) {
                if (z) {
                    viewGroup2.addView(a2);
                }
                if (view2 != null) {
                    view2.setBackgroundColor(this.o);
                    view2.setVisibility(0);
                }
            } else {
                view2.setVisibility(8);
            }
        }
        if (this.j) {
            View findViewById2 = viewGroup.findViewById(getEmptyViewId());
            this.f11840d = findViewById2;
            if (findViewById2 != null) {
                if (findViewById2 instanceof ViewStub) {
                    ((ViewStub) findViewById2).setLayoutResource(getEmptyViewViewStubLayoutId());
                }
                setEmptyView(this.f11840d);
            }
        }
    }

    protected abstract void a(FooterViewHolder footerviewholder);

    protected abstract void a(ViewHolder viewholder, T t);

    protected abstract ViewHolder b(View view);

    public abstract int getChildLayoutId();

    public abstract int getFooterLayoutId();

    public CardWithListExpand<ViewHolder, FooterViewHolder, T>.MyLinearListAdapter getLinearListAdapter() {
        return this.f11839c;
    }
}

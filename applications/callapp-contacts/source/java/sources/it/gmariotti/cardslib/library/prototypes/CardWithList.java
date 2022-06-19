package it.gmariotti.cardslib.library.prototypes;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.prototypes.SwipeDismissListItemViewTouchListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList.class */
public abstract class CardWithList extends C18073b {
    private boolean couldUseNativeInnerLayout;
    protected int emptyViewId;
    protected int emptyViewViewStubLayoutId;
    protected int listViewId;
    protected C18092i mCardHeader;
    protected int mChildLayoutId;
    private DataSetObserver mDataObserver;
    private View mEmptyView;
    protected LinearListAdapter mLinearListAdapter;
    private boolean mListShown;
    protected LinearListView mListView;
    private View mProgressView;
    private boolean observerRegistered;
    protected int progressBarId;
    protected int progressBarViewStubLayoutId;
    protected boolean useEmptyView;
    protected boolean useProgressBar;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList$DefaultListObject.class */
    public class DefaultListObject implements ListObject {
        protected boolean mItemSwipeable = false;
        protected String mObjectId;
        protected OnItemClickListener mOnItemClickListener;
        protected OnItemSwipeListener mOnItemSwipeListener;
        protected C18073b mParentCard;

        public DefaultListObject(C18073b c18073b) {
            CardWithList.this = r4;
            this.mParentCard = c18073b;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public String getObjectId() {
            return this.mObjectId;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public OnItemClickListener getOnItemClickListener() {
            return this.mOnItemClickListener;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public OnItemSwipeListener getOnItemSwipeListener() {
            return this.mOnItemSwipeListener;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public C18073b getParentCard() {
            return null;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public boolean isSwipeable() {
            return this.mItemSwipeable;
        }

        public void setObjectId(String str) {
            this.mObjectId = str;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
            this.mOnItemClickListener = onItemClickListener;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public void setOnItemSwipeListener(OnItemSwipeListener onItemSwipeListener) {
            if (onItemSwipeListener != null) {
                this.mItemSwipeable = true;
            } else {
                this.mItemSwipeable = false;
            }
            this.mOnItemSwipeListener = onItemSwipeListener;
        }

        @Override // it.gmariotti.cardslib.library.prototypes.CardWithList.ListObject
        public void setSwipeable(boolean z) {
            this.mItemSwipeable = z;
        }
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList$LinearListAdapter.class */
    public class LinearListAdapter extends ArrayAdapter<ListObject> {
        SwipeDismissListItemViewTouchListener.DismissCallbacks mCallback = new SwipeDismissListItemViewTouchListener.DismissCallbacks() { // from class: it.gmariotti.cardslib.library.prototypes.CardWithList.LinearListAdapter.2
            @Override // it.gmariotti.cardslib.library.prototypes.SwipeDismissListItemViewTouchListener.DismissCallbacks
            public boolean canDismiss(int i, C18073b c18073b, ListObject listObject) {
                return listObject.isSwipeable();
            }

            @Override // it.gmariotti.cardslib.library.prototypes.SwipeDismissListItemViewTouchListener.DismissCallbacks
            public void onDismiss(LinearListView linearListView, int i, boolean z) {
                ListObject item = LinearListAdapter.this.getItem(i);
                LinearListAdapter.this.remove(item);
                if (item.getOnItemSwipeListener() != null) {
                    item.getOnItemSwipeListener().onItemSwipe(item, z);
                }
            }
        };
        LayoutInflater mLayoutInflater;
        protected SwipeDismissListItemViewTouchListener mOnTouchListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearListAdapter(Context context, List<ListObject> list) {
            super(context, 0, list);
            CardWithList.this = r6;
            this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public String getChildId(int i) {
            return getItem(i).getObjectId();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            final ListObject item = getItem(i);
            View view2 = view;
            if (view == null) {
                view2 = this.mLayoutInflater.inflate(CardWithList.this.getChildLayoutId(), viewGroup, false);
            }
            final View view3 = CardWithList.this.setupChildView(i, item, view2, viewGroup);
            if (view3 != null && item.getOnItemClickListener() != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.prototypes.CardWithList.LinearListAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view4) {
                        CardWithList.this.mListView.playSoundEffect(0);
                        item.getOnItemClickListener().onItemClick(CardWithList.this.mListView, view3, i, item);
                    }
                });
            }
            setupItemSwipeAnimation(item, view3);
            return view3;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (!CardWithList.this.observerRegistered) {
                super.registerDataSetObserver(dataSetObserver);
            }
            CardWithList.this.observerRegistered = true;
        }

        protected void setupItemSwipeAnimation(ListObject listObject, View view) {
            if (listObject.isSwipeable()) {
                if (this.mOnTouchListener == null) {
                    this.mOnTouchListener = new SwipeDismissListItemViewTouchListener(CardWithList.this.mListView, this.mCallback);
                }
                view.setOnTouchListener(this.mOnTouchListener);
            }
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (dataSetObserver == null) {
                CardWithList.this.observerRegistered = false;
                return;
            }
            super.unregisterDataSetObserver(dataSetObserver);
            CardWithList.this.observerRegistered = false;
        }
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList$ListObject.class */
    public interface ListObject {
        String getObjectId();

        OnItemClickListener getOnItemClickListener();

        OnItemSwipeListener getOnItemSwipeListener();

        C18073b getParentCard();

        boolean isSwipeable();

        void setOnItemClickListener(OnItemClickListener onItemClickListener);

        void setOnItemSwipeListener(OnItemSwipeListener onItemSwipeListener);

        void setSwipeable(boolean z);
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList$OnItemClickListener.class */
    public interface OnItemClickListener {
        void onItemClick(LinearListView linearListView, View view, int i, ListObject listObject);
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardWithList$OnItemSwipeListener.class */
    public interface OnItemSwipeListener {
        void onItemSwipe(ListObject listObject, boolean z);
    }

    public CardWithList(Context context) {
        this(context, C18061a.C18066e.inner_base_main_cardwithlist);
    }

    public CardWithList(Context context, int i) {
        super(context, i);
        this.emptyViewId = C18061a.C18064c.card_inner_base_empty_cardwithlist;
        this.emptyViewViewStubLayoutId = C18061a.C18066e.base_withlist_empty;
        this.progressBarId = C18061a.C18064c.card_inner_base_progressbar_cardwithlist;
        this.progressBarViewStubLayoutId = C18061a.C18066e.base_withlist_progress;
        this.useEmptyView = true;
        this.useProgressBar = false;
        this.listViewId = C18061a.C18064c.card_inner_base_main_cardwithlist;
        this.observerRegistered = false;
        this.couldUseNativeInnerLayout = false;
        this.mDataObserver = new DataSetObserver() { // from class: it.gmariotti.cardslib.library.prototypes.CardWithList.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                CardWithList.this.internalSetupChildren();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                CardWithList.this.internalSetupChildren();
            }
        };
        if (i == C18061a.C18066e.inner_base_main_cardwithlist) {
            this.couldUseNativeInnerLayout = true;
        }
    }

    public void internalSetupChildren() {
        LinearListView linearListView = this.mListView;
        if (linearListView != null) {
            linearListView.removeAllViews();
            LinearListAdapter linearListAdapter = this.mLinearListAdapter;
            updateEmptyStatus(linearListAdapter == null || linearListAdapter.isEmpty());
            LinearListAdapter linearListAdapter2 = this.mLinearListAdapter;
            if (linearListAdapter2 == null) {
                return;
            }
            this.mListView.setAdapter(linearListAdapter2);
        }
    }

    private void internalSetupEmptyView(ViewGroup viewGroup, View view) {
        if (this.useEmptyView) {
            View findViewById = viewGroup.findViewById(getEmptyViewId());
            this.mEmptyView = findViewById;
            if (findViewById == null) {
                return;
            }
            if (findViewById instanceof ViewStub) {
                ((ViewStub) findViewById).setLayoutResource(getEmptyViewViewStubLayoutId());
            }
            setEmptyView(this.mEmptyView);
        }
    }

    private void internalSetupProgressBar(ViewGroup viewGroup, View view) {
        if (this.useProgressBar) {
            View findViewById = viewGroup.findViewById(getProgressBarId());
            this.mProgressView = findViewById;
            this.mListShown = true;
            if (findViewById == null) {
                return;
            }
            if (findViewById instanceof ViewStub) {
                ((ViewStub) findViewById).setLayoutResource(getProgressBarViewStubLayoutId());
            }
            setProgressView(this.mProgressView);
        }
    }

    private boolean isUseEmptyView() {
        if (this.mEmptyView != null) {
            return this.useEmptyView;
        }
        return false;
    }

    private boolean isUseProgressBar() {
        if (this.mProgressView != null) {
            return this.useProgressBar;
        }
        return false;
    }

    private void updateEmptyStatus(boolean z) {
        if (isUseEmptyView()) {
            if (!z) {
                View view = this.mEmptyView;
                if (view != null) {
                    view.setVisibility(8);
                }
                this.mListView.setVisibility(0);
                return;
            }
            View view2 = this.mEmptyView;
            if (view2 == null) {
                this.mListView.setVisibility(0);
                return;
            }
            view2.setVisibility(0);
            this.mListView.setVisibility(8);
        }
    }

    public abstract int getChildLayoutId();

    public View getEmptyView() {
        return this.mEmptyView;
    }

    public int getEmptyViewId() {
        return this.emptyViewId;
    }

    public int getEmptyViewViewStubLayoutId() {
        return this.emptyViewViewStubLayoutId;
    }

    public LinearListAdapter getLinearListAdapter() {
        return this.mLinearListAdapter;
    }

    protected int getListViewId() {
        return this.listViewId;
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public C18073b.AbstractC18080g getOnSwipeListener() {
        return this.mOnSwipeListener;
    }

    public int getProgressBarId() {
        return this.progressBarId;
    }

    public int getProgressBarViewStubLayoutId() {
        return this.progressBarViewStubLayoutId;
    }

    public View getProgressView() {
        return this.mProgressView;
    }

    public void init() {
        C18092i initCardHeader = initCardHeader();
        this.mCardHeader = initCardHeader;
        if (initCardHeader != null) {
            addCardHeader(initCardHeader);
        }
        initCard();
        List<ListObject> initChildren = initChildren();
        ArrayList arrayList = initChildren;
        if (initChildren == null) {
            arrayList = new ArrayList();
        }
        this.mLinearListAdapter = new LinearListAdapter(super.getContext(), arrayList);
        this.mChildLayoutId = getChildLayoutId();
    }

    protected abstract void initCard();

    protected abstract C18092i initCardHeader();

    protected abstract List<ListObject> initChildren();

    public void setEmptyView(View view) {
        this.mEmptyView = view;
        this.useEmptyView = view != null;
        LinearListAdapter linearListAdapter = getLinearListAdapter();
        boolean z = true;
        if (linearListAdapter != null) {
            z = linearListAdapter.isEmpty();
        }
        updateEmptyStatus(z);
    }

    public void setEmptyViewId(int i) {
        this.emptyViewId = i;
    }

    public void setEmptyViewViewStubLayoutId(int i) {
        this.emptyViewViewStubLayoutId = i;
    }

    public void setLinearListAdapter(LinearListAdapter linearListAdapter) {
        this.mLinearListAdapter = linearListAdapter;
    }

    public void setListViewId(int i) {
        this.listViewId = i;
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public void setOnSwipeListener(C18073b.AbstractC18080g abstractC18080g) {
        if (abstractC18080g != null) {
            this.mIsSwipeable = true;
        } else {
            this.mIsSwipeable = false;
        }
        this.mOnSwipeListener = abstractC18080g;
    }

    public void setProgressBarId(int i) {
        this.progressBarId = i;
    }

    public void setProgressBarViewStubLayoutId(int i) {
        this.progressBarViewStubLayoutId = i;
    }

    public void setProgressView(View view) {
        this.mProgressView = view;
        this.useProgressBar = view != null;
    }

    public void setUseEmptyView(boolean z) {
        this.useEmptyView = z;
    }

    public void setUseProgressBar(boolean z) {
        this.useProgressBar = z;
    }

    public abstract View setupChildView(int i, ListObject listObject, View view, ViewGroup viewGroup);

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public void setupInnerLayout() {
        if (!this.couldUseNativeInnerLayout || !isNative()) {
            return;
        }
        this.mInnerLayout = C18061a.C18066e.native_inner_base_main_cardwithlist;
    }

    @Override // it.gmariotti.cardslib.library.p510a.C18073b
    public void setupInnerViewElements(ViewGroup viewGroup, View view) {
        LinearListView linearListView = (LinearListView) view.findViewById(getListViewId());
        this.mListView = linearListView;
        if (linearListView != null) {
            internalSetupProgressBar(viewGroup, view);
            if (this.mLinearListAdapter != null) {
                internalSetupChildren();
                this.mLinearListAdapter.registerDataSetObserver(this.mDataObserver);
            }
        }
        internalSetupEmptyView(viewGroup, view);
    }

    public void unregisterDataSetObserver() {
        LinearListAdapter linearListAdapter = this.mLinearListAdapter;
        if (linearListAdapter != null) {
            linearListAdapter.unregisterDataSetObserver(this.mDataObserver);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        if (r0.isEmpty() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateProgressBar(boolean r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.prototypes.CardWithList.updateProgressBar(boolean, boolean):void");
    }
}

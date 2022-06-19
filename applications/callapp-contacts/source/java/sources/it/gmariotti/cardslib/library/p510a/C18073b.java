package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a;
import java.util.HashMap;
/* renamed from: it.gmariotti.cardslib.library.a.b */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b.class */
public class C18073b extends AbstractC18070a {
    public static final int CLICK_LISTENER_ACTIONAREA1_VIEW = 9;
    public static final int CLICK_LISTENER_ALL_VIEW = 0;
    public static final int CLICK_LISTENER_CONTENT_VIEW = 10;
    public static final int CLICK_LISTENER_HEADER_VIEW = 2;
    public static final int CLICK_LISTENER_THUMBNAIL_VIEW = 1;
    public static int DEFAULT_COLOR = 0;
    protected static String TAG = "Card";
    private boolean couldUseNativeInnerLayout;
    private int mBackgroundColorResourceId;
    private Drawable mBackgroundResource;
    private int mBackgroundResourceId;
    protected Float mCardElevation;
    protected C18087e mCardExpand;
    protected C18092i mCardHeader;
    protected C18097j mCardThumbnail;
    private boolean mCheckable;
    protected boolean mIsClickable;
    protected boolean mIsExpanded;
    protected boolean mIsLongClickable;
    protected boolean mIsSwipeable;
    protected boolean mMultiChoiceEnabled;
    protected HashMap<Integer, AbstractC18074a> mMultipleOnClickListener;
    protected AbstractC18074a mOnClickListener;
    protected AbstractC18075b mOnCollapseAnimatorEndListener;
    protected AbstractC18076c mOnCollapseAnimatorStartListener;
    protected AbstractC18077d mOnExpandAnimatorEndListener;
    protected AbstractC18078e mOnExpandAnimatorStartListener;
    protected AbstractC18079f mOnLongClickListener;
    protected AbstractC18080g mOnSwipeListener;
    protected AbstractC18081h mOnUndoHideSwipeListListener;
    protected AbstractC18082i mOnUndoSwipeListListener;
    protected boolean mShadow;
    protected C18099k viewToClickToExpand;

    /* renamed from: it.gmariotti.cardslib.library.a.b$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$a.class */
    public interface AbstractC18074a {
        /* renamed from: a */
        void mo4486a(View view);
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$b.class */
    public interface AbstractC18075b {
        /* renamed from: a */
        void mo4485a();
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$c.class */
    public interface AbstractC18076c {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$d.class */
    public interface AbstractC18077d {
        /* renamed from: a */
        void mo4484a();
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$e */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$e.class */
    public interface AbstractC18078e {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$f */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$f.class */
    public interface AbstractC18079f {
        /* renamed from: a */
        boolean m4483a();
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$g */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$g.class */
    public interface AbstractC18080g {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$h */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$h.class */
    public interface AbstractC18081h {
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$i */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$i.class */
    public interface AbstractC18082i {
    }

    public C18073b(Context context) {
        this(context, C18061a.C18066e.inner_base_main);
    }

    public C18073b(Context context, int i) {
        super(context);
        this.mIsClickable = false;
        this.mIsLongClickable = false;
        this.mIsSwipeable = false;
        this.mShadow = true;
        this.mIsExpanded = false;
        this.mBackgroundResourceId = 0;
        this.mBackgroundResource = null;
        this.mBackgroundColorResourceId = 0;
        this.mCheckable = true;
        this.mMultiChoiceEnabled = false;
        this.viewToClickToExpand = null;
        this.couldUseNativeInnerLayout = false;
        this.mParentCard = null;
        this.mInnerLayout = i;
        if (i == C18061a.C18066e.inner_base_main) {
            this.couldUseNativeInnerLayout = true;
        }
    }

    public static boolean equalsInnerLayout(C18073b c18073b, C18073b c18073b2) {
        if (c18073b == null || c18073b2 == null) {
            return false;
        }
        if (c18073b.getInnerLayout() != c18073b2.getInnerLayout()) {
            return true;
        }
        if (c18073b.getCardHeader() != null) {
            if (c18073b2.getCardHeader() == null || c18073b.getCardHeader().getInnerLayout() != c18073b2.getCardHeader().getInnerLayout()) {
                return true;
            }
        } else if (c18073b2.getCardHeader() != null) {
            return true;
        }
        if (c18073b.getCardThumbnail() != null) {
            if (c18073b2.getCardThumbnail() == null || c18073b.getCardThumbnail().getInnerLayout() != c18073b2.getCardThumbnail().getInnerLayout()) {
                return true;
            }
        } else if (c18073b2.getCardThumbnail() != null) {
            return true;
        }
        return c18073b.getCardExpand() != null ? c18073b2.getCardExpand() == null || c18073b.getCardExpand().getInnerLayout() != c18073b2.getCardExpand().getInnerLayout() : c18073b2.getCardExpand() != null;
    }

    public void addCardExpand(C18087e c18087e) {
        this.mCardExpand = c18087e;
        if (c18087e != null) {
            c18087e.setParentCard(this);
        }
    }

    public void addCardHeader(C18092i c18092i) {
        this.mCardHeader = c18092i;
        if (c18092i != null) {
            c18092i.setParentCard(this);
        }
    }

    public void addCardThumbnail(C18097j c18097j) {
        this.mCardThumbnail = c18097j;
        if (c18097j != null) {
            c18097j.setParentCard(this);
        }
    }

    public void addPartialOnClickListener(int i, AbstractC18074a abstractC18074a) {
        if (i < 0 && i > 10) {
            Log.w(TAG, "area value not valid in addPartialOnClickListner");
        }
        HashMap<Integer, AbstractC18074a> multipleOnClickListener = getMultipleOnClickListener();
        if (abstractC18074a == null) {
            removePartialOnClickListener(i);
            return;
        }
        multipleOnClickListener.put(Integer.valueOf(i), abstractC18074a);
        this.mIsClickable = true;
    }

    public void changeBackgroundResource(Drawable drawable) {
        if (this.mCardView != null) {
            this.mCardView.mo4384a(drawable);
        }
    }

    public void changeBackgroundResourceId(int i) {
        if (this.mCardView != null) {
            this.mCardView.mo4385a(i);
        }
    }

    public void doCollapse() {
        getCardView().mo4380i();
    }

    public void doExpand() {
        getCardView().mo4381h();
    }

    public void doToogleExpand() {
        getCardView().mo4382g();
    }

    public int getBackgroundColorResourceId() {
        return this.mBackgroundColorResourceId;
    }

    public Drawable getBackgroundResource() {
        return this.mBackgroundResource;
    }

    public int getBackgroundResourceId() {
        return this.mBackgroundResourceId;
    }

    public Float getCardElevation() {
        return this.mCardElevation;
    }

    public C18087e getCardExpand() {
        return this.mCardExpand;
    }

    public C18092i getCardHeader() {
        return this.mCardHeader;
    }

    public C18097j getCardThumbnail() {
        return this.mCardThumbnail;
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public Context getContext() {
        return this.mContext;
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public View getInnerView(Context context, ViewGroup viewGroup) {
        setupInnerLayout();
        View innerView = super.getInnerView(context, viewGroup);
        if (innerView != null) {
            if (viewGroup != null) {
                viewGroup.addView(innerView);
            }
            if (this.mInnerLayout >= 0) {
                setupInnerViewElements(viewGroup, innerView);
            }
        }
        return innerView;
    }

    public HashMap<Integer, AbstractC18074a> getMultipleOnClickListener() {
        HashMap<Integer, AbstractC18074a> hashMap = this.mMultipleOnClickListener;
        if (hashMap != null) {
            return hashMap;
        }
        HashMap<Integer, AbstractC18074a> hashMap2 = new HashMap<>();
        this.mMultipleOnClickListener = hashMap2;
        return hashMap2;
    }

    public AbstractC18074a getOnClickListener() {
        return this.mOnClickListener;
    }

    public AbstractC18075b getOnCollapseAnimatorEndListener() {
        return this.mOnCollapseAnimatorEndListener;
    }

    public AbstractC18076c getOnCollapseAnimatorStartListener() {
        return this.mOnCollapseAnimatorStartListener;
    }

    public AbstractC18077d getOnExpandAnimatorEndListener() {
        return this.mOnExpandAnimatorEndListener;
    }

    public AbstractC18078e getOnExpandAnimatorStartListener() {
        return this.mOnExpandAnimatorStartListener;
    }

    public AbstractC18079f getOnLongClickListener() {
        return this.mOnLongClickListener;
    }

    public AbstractC18080g getOnSwipeListener() {
        return this.mOnSwipeListener;
    }

    public AbstractC18081h getOnUndoHideSwipeListListener() {
        return this.mOnUndoHideSwipeListListener;
    }

    public AbstractC18082i getOnUndoSwipeListListener() {
        return this.mOnUndoSwipeListListener;
    }

    public C18099k getViewToClickToExpand() {
        return this.viewToClickToExpand;
    }

    public boolean hasHeader() {
        return getCardHeader() != null;
    }

    public boolean isCheckable() {
        return this.mCheckable;
    }

    public boolean isClickable() {
        HashMap<Integer, AbstractC18074a> hashMap;
        if (!this.mIsClickable || this.mOnClickListener != null || ((hashMap = this.mMultipleOnClickListener) != null && !hashMap.isEmpty())) {
            return this.mIsClickable;
        }
        Log.w(TAG, "Clickable set to true without onClickListener");
        return false;
    }

    public boolean isExpanded() {
        return this.mIsExpanded;
    }

    public boolean isLongClickable() {
        if (this.mOnLongClickListener == null) {
            if (!this.mIsLongClickable) {
                return false;
            }
            Log.w(TAG, "LongClickable set to true without onLongClickListener");
            return false;
        }
        return this.mIsLongClickable;
    }

    public boolean isMultiChoiceEnabled() {
        return this.mMultiChoiceEnabled;
    }

    public boolean isNative() {
        if (this.mCardView != null) {
            return this.mCardView.isNative();
        }
        return false;
    }

    public boolean isShadow() {
        return this.mShadow;
    }

    public boolean isSwipeable() {
        return this.mIsSwipeable;
    }

    public void notifyDataSetChanged() {
        getCardView().mo4383a(this);
    }

    public void onCollapseEnd() {
        AbstractC18075b abstractC18075b = this.mOnCollapseAnimatorEndListener;
        if (abstractC18075b != null) {
            abstractC18075b.mo4485a();
        }
    }

    public void onCollapseStart() {
    }

    public void onExpandEnd() {
        AbstractC18077d abstractC18077d = this.mOnExpandAnimatorEndListener;
        if (abstractC18077d != null) {
            abstractC18077d.mo4484a();
        }
    }

    public void onExpandStart() {
    }

    public void onSwipeCard() {
        isSwipeable();
    }

    public void onUndoSwipeListCard() {
        isSwipeable();
    }

    public void removePartialOnClickListener(int i) {
        HashMap<Integer, AbstractC18074a> multipleOnClickListener = getMultipleOnClickListener();
        multipleOnClickListener.remove(Integer.valueOf(i));
        if (this.mOnClickListener != null || !multipleOnClickListener.isEmpty()) {
            return;
        }
        this.mIsClickable = false;
    }

    public void setBackgroundColorResourceId(int i) {
        this.mBackgroundColorResourceId = i;
    }

    public void setBackgroundResource(Drawable drawable) {
        this.mBackgroundResource = drawable;
    }

    public void setBackgroundResourceId(int i) {
        this.mBackgroundResourceId = i;
    }

    public void setCardElevation(float f) {
        this.mCardElevation = Float.valueOf(f);
    }

    public void setCheckable(boolean z) {
        this.mCheckable = z;
    }

    public void setClickable(boolean z) {
        this.mIsClickable = z;
    }

    @Override // it.gmariotti.cardslib.library.p510a.p511a.AbstractC18070a
    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setExpanded(boolean z) {
        this.mIsExpanded = z;
    }

    public void setLongClickable(boolean z) {
        this.mIsLongClickable = z;
    }

    public void setOnClickListener(AbstractC18074a abstractC18074a) {
        if (abstractC18074a != null) {
            this.mIsClickable = true;
        } else {
            this.mIsClickable = false;
        }
        this.mOnClickListener = abstractC18074a;
    }

    public void setOnCollapseAnimatorEndListener(AbstractC18075b abstractC18075b) {
        this.mOnCollapseAnimatorEndListener = abstractC18075b;
    }

    public void setOnCollapseAnimatorStartListener(AbstractC18076c abstractC18076c) {
        this.mOnCollapseAnimatorStartListener = abstractC18076c;
    }

    public void setOnExpandAnimatorEndListener(AbstractC18077d abstractC18077d) {
        this.mOnExpandAnimatorEndListener = abstractC18077d;
    }

    public void setOnExpandAnimatorStartListener(AbstractC18078e abstractC18078e) {
        this.mOnExpandAnimatorStartListener = abstractC18078e;
    }

    public void setOnLongClickListener(AbstractC18079f abstractC18079f) {
        if (abstractC18079f != null) {
            this.mIsLongClickable = true;
        } else {
            this.mIsLongClickable = false;
        }
        this.mOnLongClickListener = abstractC18079f;
    }

    public void setOnSwipeListener(AbstractC18080g abstractC18080g) {
        if (abstractC18080g != null) {
            this.mIsSwipeable = true;
        } else {
            this.mIsSwipeable = false;
        }
        this.mOnSwipeListener = abstractC18080g;
    }

    public void setOnUndoHideSwipeListListener(AbstractC18081h abstractC18081h) {
        this.mOnUndoHideSwipeListListener = abstractC18081h;
    }

    public void setOnUndoSwipeListListener(AbstractC18082i abstractC18082i) {
        this.mOnUndoSwipeListListener = abstractC18082i;
    }

    public void setShadow(boolean z) {
        this.mShadow = z;
    }

    public void setSwipeable(boolean z) {
        this.mIsSwipeable = z;
    }

    public void setViewToClickToExpand(C18099k c18099k) {
        this.viewToClickToExpand = c18099k;
    }

    protected void setupInnerLayout() {
        if (!this.couldUseNativeInnerLayout || !isNative()) {
            return;
        }
        this.mInnerLayout = C18061a.C18066e.native_inner_base_main;
    }

    public void setupInnerViewElements(ViewGroup viewGroup, View view) {
        TextView textView;
        if (view == null || (textView = (TextView) view.findViewById(C18061a.C18064c.card_main_inner_simple_title)) == null) {
            return;
        }
        textView.setText(this.mTitle);
    }

    public void setupSupplementalActions() {
    }
}

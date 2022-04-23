package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import it.gmariotti.cardslib.library.a;
import java.util.HashMap;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b.class */
public class b extends it.gmariotti.cardslib.library.a.a.a {
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
    protected it.gmariotti.cardslib.library.a.e mCardExpand;
    protected it.gmariotti.cardslib.library.a.i mCardHeader;
    protected j mCardThumbnail;
    private boolean mCheckable;
    protected boolean mIsClickable;
    protected boolean mIsExpanded;
    protected boolean mIsLongClickable;
    protected boolean mIsSwipeable;
    protected boolean mMultiChoiceEnabled;
    protected HashMap<Integer, a> mMultipleOnClickListener;
    protected a mOnClickListener;
    protected AbstractC0596b mOnCollapseAnimatorEndListener;
    protected c mOnCollapseAnimatorStartListener;
    protected d mOnExpandAnimatorEndListener;
    protected e mOnExpandAnimatorStartListener;
    protected f mOnLongClickListener;
    protected g mOnSwipeListener;
    protected h mOnUndoHideSwipeListListener;
    protected i mOnUndoSwipeListListener;
    protected boolean mShadow;
    protected k viewToClickToExpand;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$a.class */
    public interface a {
        void a(View view);
    }

    /* renamed from: it.gmariotti.cardslib.library.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$b.class */
    public interface AbstractC0596b {
        void a();
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$c.class */
    public interface c {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$d.class */
    public interface d {
        void a();
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$e.class */
    public interface e {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$f.class */
    public interface f {
        boolean a();
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$g.class */
    public interface g {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$h.class */
    public interface h {
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/b$i.class */
    public interface i {
    }

    public b(Context context) {
        this(context, a.e.inner_base_main);
    }

    public b(Context context, int i2) {
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
        this.mInnerLayout = i2;
        if (i2 == a.e.inner_base_main) {
            this.couldUseNativeInnerLayout = true;
        }
    }

    public static boolean equalsInnerLayout(b bVar, b bVar2) {
        if (bVar == null || bVar2 == null) {
            return false;
        }
        if (bVar.getInnerLayout() != bVar2.getInnerLayout()) {
            return true;
        }
        if (bVar.getCardHeader() != null) {
            if (bVar2.getCardHeader() == null || bVar.getCardHeader().getInnerLayout() != bVar2.getCardHeader().getInnerLayout()) {
                return true;
            }
        } else if (bVar2.getCardHeader() != null) {
            return true;
        }
        if (bVar.getCardThumbnail() != null) {
            if (bVar2.getCardThumbnail() == null || bVar.getCardThumbnail().getInnerLayout() != bVar2.getCardThumbnail().getInnerLayout()) {
                return true;
            }
        } else if (bVar2.getCardThumbnail() != null) {
            return true;
        }
        return bVar.getCardExpand() != null ? bVar2.getCardExpand() == null || bVar.getCardExpand().getInnerLayout() != bVar2.getCardExpand().getInnerLayout() : bVar2.getCardExpand() != null;
    }

    public void addCardExpand(it.gmariotti.cardslib.library.a.e eVar) {
        this.mCardExpand = eVar;
        if (eVar != null) {
            eVar.setParentCard(this);
        }
    }

    public void addCardHeader(it.gmariotti.cardslib.library.a.i iVar) {
        this.mCardHeader = iVar;
        if (iVar != null) {
            iVar.setParentCard(this);
        }
    }

    public void addCardThumbnail(j jVar) {
        this.mCardThumbnail = jVar;
        if (jVar != null) {
            jVar.setParentCard(this);
        }
    }

    public void addPartialOnClickListener(int i2, a aVar) {
        if (i2 < 0 && i2 > 10) {
            Log.w(TAG, "area value not valid in addPartialOnClickListner");
        }
        HashMap<Integer, a> multipleOnClickListener = getMultipleOnClickListener();
        if (aVar != null) {
            multipleOnClickListener.put(Integer.valueOf(i2), aVar);
            this.mIsClickable = true;
            return;
        }
        removePartialOnClickListener(i2);
    }

    public void changeBackgroundResource(Drawable drawable) {
        if (this.mCardView != null) {
            this.mCardView.a(drawable);
        }
    }

    public void changeBackgroundResourceId(int i2) {
        if (this.mCardView != null) {
            this.mCardView.a(i2);
        }
    }

    public void doCollapse() {
        getCardView().i();
    }

    public void doExpand() {
        getCardView().h();
    }

    public void doToogleExpand() {
        getCardView().g();
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

    public it.gmariotti.cardslib.library.a.e getCardExpand() {
        return this.mCardExpand;
    }

    public it.gmariotti.cardslib.library.a.i getCardHeader() {
        return this.mCardHeader;
    }

    public j getCardThumbnail() {
        return this.mCardThumbnail;
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public Context getContext() {
        return this.mContext;
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
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

    public HashMap<Integer, a> getMultipleOnClickListener() {
        HashMap<Integer, a> hashMap = this.mMultipleOnClickListener;
        if (hashMap != null) {
            return hashMap;
        }
        HashMap<Integer, a> hashMap2 = new HashMap<>();
        this.mMultipleOnClickListener = hashMap2;
        return hashMap2;
    }

    public a getOnClickListener() {
        return this.mOnClickListener;
    }

    public AbstractC0596b getOnCollapseAnimatorEndListener() {
        return this.mOnCollapseAnimatorEndListener;
    }

    public c getOnCollapseAnimatorStartListener() {
        return this.mOnCollapseAnimatorStartListener;
    }

    public d getOnExpandAnimatorEndListener() {
        return this.mOnExpandAnimatorEndListener;
    }

    public e getOnExpandAnimatorStartListener() {
        return this.mOnExpandAnimatorStartListener;
    }

    public f getOnLongClickListener() {
        return this.mOnLongClickListener;
    }

    public g getOnSwipeListener() {
        return this.mOnSwipeListener;
    }

    public h getOnUndoHideSwipeListListener() {
        return this.mOnUndoHideSwipeListListener;
    }

    public i getOnUndoSwipeListListener() {
        return this.mOnUndoSwipeListListener;
    }

    public k getViewToClickToExpand() {
        return this.viewToClickToExpand;
    }

    public boolean hasHeader() {
        return getCardHeader() != null;
    }

    public boolean isCheckable() {
        return this.mCheckable;
    }

    public boolean isClickable() {
        HashMap<Integer, a> hashMap;
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
        if (this.mOnLongClickListener != null) {
            return this.mIsLongClickable;
        }
        if (!this.mIsLongClickable) {
            return false;
        }
        Log.w(TAG, "LongClickable set to true without onLongClickListener");
        return false;
    }

    public boolean isMultiChoiceEnabled() {
        return this.mMultiChoiceEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
        getCardView().a(this);
    }

    public void onCollapseEnd() {
        AbstractC0596b bVar = this.mOnCollapseAnimatorEndListener;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void onCollapseStart() {
    }

    public void onExpandEnd() {
        d dVar = this.mOnExpandAnimatorEndListener;
        if (dVar != null) {
            dVar.a();
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

    public void removePartialOnClickListener(int i2) {
        HashMap<Integer, a> multipleOnClickListener = getMultipleOnClickListener();
        multipleOnClickListener.remove(Integer.valueOf(i2));
        if (this.mOnClickListener == null && multipleOnClickListener.isEmpty()) {
            this.mIsClickable = false;
        }
    }

    public void setBackgroundColorResourceId(int i2) {
        this.mBackgroundColorResourceId = i2;
    }

    public void setBackgroundResource(Drawable drawable) {
        this.mBackgroundResource = drawable;
    }

    public void setBackgroundResourceId(int i2) {
        this.mBackgroundResourceId = i2;
    }

    public void setCardElevation(float f2) {
        this.mCardElevation = Float.valueOf(f2);
    }

    public void setCheckable(boolean z) {
        this.mCheckable = z;
    }

    public void setClickable(boolean z) {
        this.mIsClickable = z;
    }

    @Override // it.gmariotti.cardslib.library.a.a.a
    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setExpanded(boolean z) {
        this.mIsExpanded = z;
    }

    public void setLongClickable(boolean z) {
        this.mIsLongClickable = z;
    }

    public void setOnClickListener(a aVar) {
        if (aVar != null) {
            this.mIsClickable = true;
        } else {
            this.mIsClickable = false;
        }
        this.mOnClickListener = aVar;
    }

    public void setOnCollapseAnimatorEndListener(AbstractC0596b bVar) {
        this.mOnCollapseAnimatorEndListener = bVar;
    }

    public void setOnCollapseAnimatorStartListener(c cVar) {
        this.mOnCollapseAnimatorStartListener = cVar;
    }

    public void setOnExpandAnimatorEndListener(d dVar) {
        this.mOnExpandAnimatorEndListener = dVar;
    }

    public void setOnExpandAnimatorStartListener(e eVar) {
        this.mOnExpandAnimatorStartListener = eVar;
    }

    public void setOnLongClickListener(f fVar) {
        if (fVar != null) {
            this.mIsLongClickable = true;
        } else {
            this.mIsLongClickable = false;
        }
        this.mOnLongClickListener = fVar;
    }

    public void setOnSwipeListener(g gVar) {
        if (gVar != null) {
            this.mIsSwipeable = true;
        } else {
            this.mIsSwipeable = false;
        }
        this.mOnSwipeListener = gVar;
    }

    public void setOnUndoHideSwipeListListener(h hVar) {
        this.mOnUndoHideSwipeListListener = hVar;
    }

    public void setOnUndoSwipeListListener(i iVar) {
        this.mOnUndoSwipeListListener = iVar;
    }

    public void setShadow(boolean z) {
        this.mShadow = z;
    }

    public void setSwipeable(boolean z) {
        this.mIsSwipeable = z;
    }

    public void setViewToClickToExpand(k kVar) {
        this.viewToClickToExpand = kVar;
    }

    protected void setupInnerLayout() {
        if (this.couldUseNativeInnerLayout && isNative()) {
            this.mInnerLayout = a.e.native_inner_base_main;
        }
    }

    public void setupInnerViewElements(ViewGroup viewGroup, View view) {
        TextView textView;
        if (view != null && (textView = (TextView) view.findViewById(a.c.card_main_inner_simple_title)) != null) {
            textView.setText(this.mTitle);
        }
    }

    public void setupSupplementalActions() {
    }
}

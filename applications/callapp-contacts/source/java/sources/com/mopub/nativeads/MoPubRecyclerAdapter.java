package com.mopub.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter.class */
public class MoPubRecyclerAdapter extends RecyclerView.AbstractC2626a<RecyclerView.AbstractC2657v> {

    /* renamed from: a */
    MoPubNativeAdLoadedListener f60008a;

    /* renamed from: b */
    private final RecyclerView.AbstractC2629c f60009b;

    /* renamed from: c */
    private RecyclerView f60010c;

    /* renamed from: d */
    private final MoPubStreamAdPlacer f60011d;

    /* renamed from: e */
    private final RecyclerView.AbstractC2626a f60012e;

    /* renamed from: f */
    private final VisibilityTracker f60013f;

    /* renamed from: g */
    private final WeakHashMap<View, Integer> f60014g;

    /* renamed from: h */
    private ContentChangeStrategy f60015h;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy.class */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC2626a abstractC2626a) {
        this(activity, abstractC2626a, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC2626a abstractC2626a, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), abstractC2626a, new VisibilityTracker(activity));
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC2626a abstractC2626a, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), abstractC2626a, new VisibilityTracker(activity));
    }

    MoPubRecyclerAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, RecyclerView.AbstractC2626a abstractC2626a, VisibilityTracker visibilityTracker) {
        this.f60015h = ContentChangeStrategy.INSERT_AT_END;
        this.f60014g = new WeakHashMap<>();
        this.f60012e = abstractC2626a;
        this.f60013f = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.1
            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public final void onVisibilityChanged(List<View> list, List<View> list2) {
                MoPubRecyclerAdapter.m6167a(MoPubRecyclerAdapter.this, list);
            }
        });
        setHasStableIdsInternal(abstractC2626a.hasStableIds());
        this.f60011d = moPubStreamAdPlacer;
        moPubStreamAdPlacer.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.2
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdLoaded(int i) {
                MoPubRecyclerAdapter moPubRecyclerAdapter = MoPubRecyclerAdapter.this;
                if (moPubRecyclerAdapter.f60008a != null) {
                    moPubRecyclerAdapter.f60008a.onAdLoaded(i);
                }
                moPubRecyclerAdapter.notifyItemInserted(i);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdRemoved(int i) {
                MoPubRecyclerAdapter moPubRecyclerAdapter = MoPubRecyclerAdapter.this;
                if (moPubRecyclerAdapter.f60008a != null) {
                    moPubRecyclerAdapter.f60008a.onAdRemoved(i);
                }
                moPubRecyclerAdapter.notifyItemRemoved(i);
            }
        });
        moPubStreamAdPlacer.setItemCount(abstractC2626a.getItemCount());
        RecyclerView.AbstractC2629c abstractC2629c = new RecyclerView.AbstractC2629c() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.3
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            public final void onChanged() {
                MoPubRecyclerAdapter.this.f60011d.setItemCount(MoPubRecyclerAdapter.this.f60012e.getItemCount());
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            public final void onItemRangeChanged(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.f60011d.getAdjustedPosition((i2 + i) - 1);
                int adjustedPosition2 = MoPubRecyclerAdapter.this.f60011d.getAdjustedPosition(i);
                MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
                if (r10 != false) goto L17;
             */
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onItemRangeInserted(int r5, int r6) {
                /*
                    r4 = this;
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m6166b(r0)
                    r1 = r5
                    int r0 = r0.getAdjustedPosition(r1)
                    r7 = r0
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    androidx.recyclerview.widget.RecyclerView$a r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m6168a(r0)
                    int r0 = r0.getItemCount()
                    r8 = r0
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m6166b(r0)
                    r1 = r8
                    r0.setItemCount(r1)
                    r0 = 0
                    r9 = r0
                    r0 = r5
                    r1 = r6
                    int r0 = r0 + r1
                    r1 = r8
                    if (r0 < r1) goto L35
                    r0 = 1
                    r10 = r0
                    goto L38
                L35:
                    r0 = 0
                    r10 = r0
                L38:
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.KEEP_ADS_FIXED
                    r1 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m6165c(r1)
                    if (r0 == r1) goto L83
                    r0 = r9
                    r8 = r0
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.INSERT_AT_END
                    r1 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m6165c(r1)
                    if (r0 != r1) goto L62
                    r0 = r9
                    r8 = r0
                    r0 = r10
                    if (r0 == 0) goto L62
                    goto L83
                L62:
                    r0 = r8
                    r1 = r6
                    if (r0 >= r1) goto L79
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m6166b(r0)
                    r1 = r5
                    r0.insertItem(r1)
                    int r8 = r8 + 1
                    goto L62
                L79:
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    r1 = r7
                    r2 = r6
                    r0.notifyItemRangeInserted(r1, r2)
                    return
                L83:
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    r0.notifyDataSetChanged()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRecyclerAdapter.C169493.onItemRangeInserted(int, int):void");
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            public final void onItemRangeMoved(int i, int i2, int i3) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            public final void onItemRangeRemoved(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.f60011d.getAdjustedPosition(i);
                int itemCount = MoPubRecyclerAdapter.this.f60012e.getItemCount();
                MoPubRecyclerAdapter.this.f60011d.setItemCount(itemCount);
                boolean z = i + i2 >= itemCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.f60015h || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.f60015h && z)) {
                    MoPubRecyclerAdapter.this.notifyDataSetChanged();
                    return;
                }
                int adjustedCount = MoPubRecyclerAdapter.this.f60011d.getAdjustedCount(itemCount + i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    MoPubRecyclerAdapter.this.f60011d.removeItem(i);
                }
                int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.f60011d.getAdjustedCount(itemCount);
                MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
            }
        };
        this.f60009b = abstractC2629c;
        abstractC2626a.registerAdapterDataObserver(abstractC2629c);
    }

    /* renamed from: a */
    static /* synthetic */ void m6167a(MoPubRecyclerAdapter moPubRecyclerAdapter, List list) {
        Iterator it2 = list.iterator();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (it2.hasNext()) {
            Integer num = moPubRecyclerAdapter.f60014g.get((View) it2.next());
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        moPubRecyclerAdapter.f60011d.placeAdsInRange(i, i2 + 1);
    }

    public static int computeScrollOffset(LinearLayoutManager linearLayoutManager, RecyclerView.AbstractC2657v abstractC2657v) {
        int i = 0;
        if (abstractC2657v == null) {
            return 0;
        }
        View view = abstractC2657v.itemView;
        if (linearLayoutManager.mo31643f()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getBottom() : view.getTop();
        } else if (linearLayoutManager.mo31644e()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getRight() : view.getLeft();
        }
        return i;
    }

    private void setHasStableIdsInternal(boolean z) {
        super.setHasStableIds(z);
    }

    public void clearAds() {
        this.f60011d.clearAds();
    }

    public void destroy() {
        this.f60012e.unregisterAdapterDataObserver(this.f60009b);
        this.f60011d.destroy();
        this.f60013f.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f60011d.getAdjustedPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f60011d.getAdjustedCount(this.f60012e.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public long getItemId(int i) {
        if (!this.f60012e.hasStableIds()) {
            return -1L;
        }
        Object adData = this.f60011d.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f60012e.getItemId(this.f60011d.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        int adViewType = this.f60011d.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.f60012e.getItemViewType(this.f60011d.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f60011d.getOriginalPosition(i);
    }

    public boolean isAd(int i) {
        return this.f60011d.isAd(i);
    }

    public void loadAds(String str) {
        this.f60011d.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f60011d.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f60010c = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        Object adData = this.f60011d.getAdData(i);
        if (adData != null) {
            this.f60011d.bindAdView((NativeAd) adData, abstractC2657v.itemView);
            return;
        }
        this.f60014g.put(abstractC2657v.itemView, Integer.valueOf(i));
        this.f60013f.addView(abstractC2657v.itemView, 0, null);
        this.f60012e.onBindViewHolder(abstractC2657v, this.f60011d.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i < -56 || i > this.f60011d.getAdViewTypeCount() - 56) {
            return this.f60012e.onCreateViewHolder(viewGroup, i);
        }
        MoPubAdRenderer adRendererForViewType = this.f60011d.getAdRendererForViewType(i + 56);
        if (adRendererForViewType != null) {
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No view binder was registered for ads in MoPubRecyclerAdapter.");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f60010c = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public boolean onFailedToRecycleView(RecyclerView.AbstractC2657v abstractC2657v) {
        return abstractC2657v instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(abstractC2657v) : this.f60012e.onFailedToRecycleView(abstractC2657v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onViewAttachedToWindow(RecyclerView.AbstractC2657v abstractC2657v) {
        if (abstractC2657v instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(abstractC2657v);
        } else {
            this.f60012e.onViewAttachedToWindow(abstractC2657v);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onViewDetachedFromWindow(RecyclerView.AbstractC2657v abstractC2657v) {
        if (abstractC2657v instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(abstractC2657v);
        } else {
            this.f60012e.onViewDetachedFromWindow(abstractC2657v);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onViewRecycled(RecyclerView.AbstractC2657v abstractC2657v) {
        if (abstractC2657v instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(abstractC2657v);
        } else {
            this.f60012e.onViewRecycled(abstractC2657v);
        }
    }

    public void refreshAds(String str) {
        refreshAds(str, null);
    }

    public void refreshAds(String str, RequestParameters requestParameters) {
        RecyclerView recyclerView = this.f60010c;
        if (recyclerView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.AbstractC2637i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (!(layoutManager instanceof LinearLayoutManager)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This LayoutManager can't be refreshed.");
        } else {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int m40521i = linearLayoutManager.m40521i();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.f60010c.m40487a(m40521i, false));
            int max = Math.max(0, m40521i - 1);
            while (this.f60011d.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int m40518j = linearLayoutManager.m40518j();
            while (this.f60011d.isAd(m40518j) && m40518j < itemCount - 1) {
                m40518j++;
            }
            int originalPosition = this.f60011d.getOriginalPosition(max);
            this.f60011d.removeAdsInRange(this.f60011d.getOriginalPosition(m40518j), this.f60012e.getItemCount());
            int removeAdsInRange = this.f60011d.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.m40526e(m40521i - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            return;
        }
        this.f60011d.registerAdRenderer(moPubAdRenderer);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f60008a = moPubNativeAdLoadedListener;
    }

    public void setContentChangeStrategy(ContentChangeStrategy contentChangeStrategy) {
        if (!Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            return;
        }
        this.f60015h = contentChangeStrategy;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void setHasStableIds(boolean z) {
        setHasStableIdsInternal(z);
        this.f60012e.unregisterAdapterDataObserver(this.f60009b);
        this.f60012e.setHasStableIds(z);
        this.f60012e.registerAdapterDataObserver(this.f60009b);
    }
}

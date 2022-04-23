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
public class MoPubRecyclerAdapter extends RecyclerView.a<RecyclerView.v> {

    /* renamed from: a  reason: collision with root package name */
    MoPubNativeAdLoadedListener f34582a;

    /* renamed from: b  reason: collision with root package name */
    private final RecyclerView.c f34583b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f34584c;

    /* renamed from: d  reason: collision with root package name */
    private final MoPubStreamAdPlacer f34585d;
    private final RecyclerView.a e;
    private final VisibilityTracker f;
    private final WeakHashMap<View, Integer> g;
    private ContentChangeStrategy h;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy.class */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar) {
        this(activity, aVar, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), aVar, new VisibilityTracker(activity));
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.a aVar, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), aVar, new VisibilityTracker(activity));
    }

    MoPubRecyclerAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, RecyclerView.a aVar, VisibilityTracker visibilityTracker) {
        this.h = ContentChangeStrategy.INSERT_AT_END;
        this.g = new WeakHashMap<>();
        this.e = aVar;
        this.f = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.1
            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public final void onVisibilityChanged(List<View> list, List<View> list2) {
                MoPubRecyclerAdapter.a(MoPubRecyclerAdapter.this, list);
            }
        });
        setHasStableIdsInternal(aVar.hasStableIds());
        this.f34585d = moPubStreamAdPlacer;
        moPubStreamAdPlacer.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.2
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdLoaded(int i) {
                MoPubRecyclerAdapter moPubRecyclerAdapter = MoPubRecyclerAdapter.this;
                if (moPubRecyclerAdapter.f34582a != null) {
                    moPubRecyclerAdapter.f34582a.onAdLoaded(i);
                }
                moPubRecyclerAdapter.notifyItemInserted(i);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdRemoved(int i) {
                MoPubRecyclerAdapter moPubRecyclerAdapter = MoPubRecyclerAdapter.this;
                if (moPubRecyclerAdapter.f34582a != null) {
                    moPubRecyclerAdapter.f34582a.onAdRemoved(i);
                }
                moPubRecyclerAdapter.notifyItemRemoved(i);
            }
        });
        moPubStreamAdPlacer.setItemCount(aVar.getItemCount());
        RecyclerView.c cVar = new RecyclerView.c() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.3
            @Override // androidx.recyclerview.widget.RecyclerView.c
            public final void onChanged() {
                MoPubRecyclerAdapter.this.f34585d.setItemCount(MoPubRecyclerAdapter.this.e.getItemCount());
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.c
            public final void onItemRangeChanged(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.f34585d.getAdjustedPosition((i2 + i) - 1);
                int adjustedPosition2 = MoPubRecyclerAdapter.this.f34585d.getAdjustedPosition(i);
                MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
                if (r10 != false) goto L_0x0083;
             */
            @Override // androidx.recyclerview.widget.RecyclerView.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onItemRangeInserted(int r5, int r6) {
                /*
                    r4 = this;
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.b(r0)
                    r1 = r5
                    int r0 = r0.getAdjustedPosition(r1)
                    r7 = r0
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    androidx.recyclerview.widget.RecyclerView$a r0 = com.mopub.nativeads.MoPubRecyclerAdapter.a(r0)
                    int r0 = r0.getItemCount()
                    r8 = r0
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.b(r0)
                    r1 = r8
                    r0.setItemCount(r1)
                    r0 = 0
                    r9 = r0
                    r0 = r5
                    r1 = r6
                    int r0 = r0 + r1
                    r1 = r8
                    if (r0 < r1) goto L_0x0035
                    r0 = 1
                    r10 = r0
                    goto L_0x0038
                L_0x0035:
                    r0 = 0
                    r10 = r0
                L_0x0038:
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.KEEP_ADS_FIXED
                    r1 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.c(r1)
                    if (r0 == r1) goto L_0x0083
                    r0 = r9
                    r8 = r0
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.INSERT_AT_END
                    r1 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.c(r1)
                    if (r0 != r1) goto L_0x0062
                    r0 = r9
                    r8 = r0
                    r0 = r10
                    if (r0 == 0) goto L_0x0062
                    goto L_0x0083
                L_0x0062:
                    r0 = r8
                    r1 = r6
                    if (r0 >= r1) goto L_0x0079
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.b(r0)
                    r1 = r5
                    r0.insertItem(r1)
                    int r8 = r8 + 1
                    goto L_0x0062
                L_0x0079:
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    r1 = r7
                    r2 = r6
                    r0.notifyItemRangeInserted(r1, r2)
                    return
                L_0x0083:
                    r0 = r4
                    com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                    r0.notifyDataSetChanged()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRecyclerAdapter.AnonymousClass3.onItemRangeInserted(int, int):void");
            }

            @Override // androidx.recyclerview.widget.RecyclerView.c
            public final void onItemRangeMoved(int i, int i2, int i3) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.c
            public final void onItemRangeRemoved(int i, int i2) {
                int adjustedPosition = MoPubRecyclerAdapter.this.f34585d.getAdjustedPosition(i);
                int itemCount = MoPubRecyclerAdapter.this.e.getItemCount();
                MoPubRecyclerAdapter.this.f34585d.setItemCount(itemCount);
                boolean z = i + i2 >= itemCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.h || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.h && z)) {
                    MoPubRecyclerAdapter.this.notifyDataSetChanged();
                    return;
                }
                int adjustedCount = MoPubRecyclerAdapter.this.f34585d.getAdjustedCount(itemCount + i2);
                for (int i3 = 0; i3 < i2; i3++) {
                    MoPubRecyclerAdapter.this.f34585d.removeItem(i);
                }
                int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.f34585d.getAdjustedCount(itemCount);
                MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
            }
        };
        this.f34583b = cVar;
        aVar.registerAdapterDataObserver(cVar);
    }

    static /* synthetic */ void a(MoPubRecyclerAdapter moPubRecyclerAdapter, List list) {
        Iterator it2 = list.iterator();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (it2.hasNext()) {
            Integer num = moPubRecyclerAdapter.g.get((View) it2.next());
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        moPubRecyclerAdapter.f34585d.placeAdsInRange(i, i2 + 1);
    }

    public static int computeScrollOffset(LinearLayoutManager linearLayoutManager, RecyclerView.v vVar) {
        int i = 0;
        if (vVar == null) {
            return 0;
        }
        View view = vVar.itemView;
        if (linearLayoutManager.f()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getBottom() : view.getTop();
        } else if (linearLayoutManager.e()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getRight() : view.getLeft();
        }
        return i;
    }

    private void setHasStableIdsInternal(boolean z) {
        super.setHasStableIds(z);
    }

    public void clearAds() {
        this.f34585d.clearAds();
    }

    public void destroy() {
        this.e.unregisterAdapterDataObserver(this.f34583b);
        this.f34585d.destroy();
        this.f.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f34585d.getAdjustedPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f34585d.getAdjustedCount(this.e.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public long getItemId(int i) {
        if (!this.e.hasStableIds()) {
            return -1L;
        }
        Object adData = this.f34585d.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.e.getItemId(this.f34585d.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        int adViewType = this.f34585d.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.e.getItemViewType(this.f34585d.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f34585d.getOriginalPosition(i);
    }

    public boolean isAd(int i) {
        return this.f34585d.isAd(i);
    }

    public void loadAds(String str) {
        this.f34585d.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f34585d.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f34584c = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.v vVar, int i) {
        Object adData = this.f34585d.getAdData(i);
        if (adData != null) {
            this.f34585d.bindAdView((NativeAd) adData, vVar.itemView);
            return;
        }
        this.g.put(vVar.itemView, Integer.valueOf(i));
        this.f.addView(vVar.itemView, 0, null);
        this.e.onBindViewHolder(vVar, this.f34585d.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i < -56 || i > this.f34585d.getAdViewTypeCount() - 56) {
            return this.e.onCreateViewHolder(viewGroup, i);
        }
        MoPubAdRenderer adRendererForViewType = this.f34585d.getAdRendererForViewType(i + 56);
        if (adRendererForViewType != null) {
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No view binder was registered for ads in MoPubRecyclerAdapter.");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f34584c = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public boolean onFailedToRecycleView(RecyclerView.v vVar) {
        return vVar instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(vVar) : this.e.onFailedToRecycleView(vVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onViewAttachedToWindow(RecyclerView.v vVar) {
        if (vVar instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(vVar);
        } else {
            this.e.onViewAttachedToWindow(vVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onViewDetachedFromWindow(RecyclerView.v vVar) {
        if (vVar instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(vVar);
        } else {
            this.e.onViewDetachedFromWindow(vVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onViewRecycled(RecyclerView.v vVar) {
        if (vVar instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(vVar);
        } else {
            this.e.onViewRecycled(vVar);
        }
    }

    public void refreshAds(String str) {
        refreshAds(str, null);
    }

    public void refreshAds(String str, RequestParameters requestParameters) {
        RecyclerView recyclerView = this.f34584c;
        if (recyclerView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int i = linearLayoutManager.i();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.f34584c.a(i, false));
            int max = Math.max(0, i - 1);
            while (this.f34585d.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int j = linearLayoutManager.j();
            while (this.f34585d.isAd(j) && j < itemCount - 1) {
                j++;
            }
            int originalPosition = this.f34585d.getOriginalPosition(max);
            this.f34585d.removeAdsInRange(this.f34585d.getOriginalPosition(j), this.e.getItemCount());
            int removeAdsInRange = this.f34585d.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.e(i - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This LayoutManager can't be refreshed.");
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f34585d.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f34582a = moPubNativeAdLoadedListener;
    }

    public void setContentChangeStrategy(ContentChangeStrategy contentChangeStrategy) {
        if (Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            this.h = contentChangeStrategy;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void setHasStableIds(boolean z) {
        setHasStableIdsInternal(z);
        this.e.unregisterAdapterDataObserver(this.f34583b);
        this.e.setHasStableIds(z);
        this.e.registerAdapterDataObserver(this.f34583b);
    }
}

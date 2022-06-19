package com.mopub.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$b0;
import androidx.recyclerview.widget.RecyclerView$g;
import androidx.recyclerview.widget.RecyclerView$i;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter.class */
public final class MoPubRecyclerAdapter extends RecyclerView$g<RecyclerView$b0> {

    /* renamed from: a */
    public final RecyclerView$i f5193a;

    /* renamed from: b */
    public RecyclerView f5194b;

    /* renamed from: c */
    public final MoPubStreamAdPlacer f5195c;

    /* renamed from: d */
    public final RecyclerView$g f5196d;

    /* renamed from: e */
    public final VisibilityTracker f5197e;

    /* renamed from: f */
    public final WeakHashMap<View, Integer> f5198f;

    /* renamed from: g */
    public ContentChangeStrategy f5199g;

    /* renamed from: h */
    public MoPubNativeAdLoadedListener f5200h;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy.class */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$a.class */
    public class C1193a implements VisibilityTracker.VisibilityTrackerListener {
        public C1193a() {
            MoPubRecyclerAdapter.this = r4;
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            MoPubRecyclerAdapter.this.m3305j(list, list2);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$b.class */
    public class C1194b implements MoPubNativeAdLoadedListener {
        public C1194b() {
            MoPubRecyclerAdapter.this = r4;
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubRecyclerAdapter.this.m3307h(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubRecyclerAdapter.this.m3306i(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$c.class */
    public class C1195c extends RecyclerView$i {
        public C1195c() {
            MoPubRecyclerAdapter.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView$i
        public void onChanged() {
            MoPubRecyclerAdapter.this.f5195c.setItemCount(MoPubRecyclerAdapter.this.f5196d.getItemCount());
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView$i
        public void onItemRangeChanged(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f5195c.getAdjustedPosition((i2 + i) - 1);
            int adjustedPosition2 = MoPubRecyclerAdapter.this.f5195c.getAdjustedPosition(i);
            MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            if (r10 != false) goto L16;
         */
        @Override // androidx.recyclerview.widget.RecyclerView$i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onItemRangeInserted(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3309f(r0)
                r1 = r5
                int r0 = r0.getAdjustedPosition(r1)
                r7 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                androidx.recyclerview.widget.RecyclerView$g r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3310e(r0)
                int r0 = r0.getItemCount()
                r8 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3309f(r0)
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
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m3308g(r1)
                if (r0 == r1) goto L85
                r0 = r9
                r8 = r0
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.INSERT_AT_END
                r1 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m3308g(r1)
                if (r0 != r1) goto L62
                r0 = r9
                r8 = r0
                r0 = r10
                if (r0 == 0) goto L62
                goto L85
            L62:
                r0 = r8
                r1 = r6
                if (r0 >= r1) goto L79
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3309f(r0)
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
                goto L8c
            L85:
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                r0.notifyDataSetChanged()
            L8c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRecyclerAdapter.C1195c.onItemRangeInserted(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView$i
        public void onItemRangeMoved(int i, int i2, int i3) {
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView$i
        public void onItemRangeRemoved(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f5195c.getAdjustedPosition(i);
            int itemCount = MoPubRecyclerAdapter.this.f5196d.getItemCount();
            MoPubRecyclerAdapter.this.f5195c.setItemCount(itemCount);
            boolean z = i + i2 >= itemCount;
            if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.f5199g || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.f5199g && z)) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
                return;
            }
            int adjustedCount = MoPubRecyclerAdapter.this.f5195c.getAdjustedCount(itemCount + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                MoPubRecyclerAdapter.this.f5195c.removeItem(i);
            }
            int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.f5195c.getAdjustedCount(itemCount);
            MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
        }
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView$g recyclerView$g) {
        this(activity, recyclerView$g, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView$g recyclerView$g, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), recyclerView$g, new VisibilityTracker(activity));
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView$g recyclerView$g, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), recyclerView$g, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubRecyclerAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, RecyclerView$g recyclerView$g, VisibilityTracker visibilityTracker) {
        this.f5199g = ContentChangeStrategy.INSERT_AT_END;
        this.f5198f = new WeakHashMap<>();
        this.f5196d = recyclerView$g;
        this.f5197e = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new C1193a());
        m3304k(recyclerView$g.hasStableIds());
        this.f5195c = moPubStreamAdPlacer;
        moPubStreamAdPlacer.setAdLoadedListener(new C1194b());
        moPubStreamAdPlacer.setItemCount(recyclerView$g.getItemCount());
        C1195c c1195c = new C1195c();
        this.f5193a = c1195c;
        recyclerView$g.registerAdapterDataObserver(c1195c);
    }

    public static int computeScrollOffset(LinearLayoutManager linearLayoutManager, RecyclerView$b0 recyclerView$b0) {
        int i = 0;
        if (recyclerView$b0 == null) {
            return 0;
        }
        View view = recyclerView$b0.itemView;
        if (linearLayoutManager.canScrollVertically()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getBottom() : view.getTop();
        } else if (linearLayoutManager.canScrollHorizontally()) {
            i = linearLayoutManager.getStackFromEnd() ? view.getRight() : view.getLeft();
        }
        return i;
    }

    public void clearAds() {
        this.f5195c.clearAds();
    }

    public void destroy() {
        this.f5196d.unregisterAdapterDataObserver(this.f5193a);
        this.f5195c.destroy();
        this.f5197e.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f5195c.getAdjustedPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public int getItemCount() {
        return this.f5195c.getAdjustedCount(this.f5196d.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public long getItemId(int i) {
        if (!this.f5196d.hasStableIds()) {
            return -1L;
        }
        Object adData = this.f5195c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f5196d.getItemId(this.f5195c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public int getItemViewType(int i) {
        int adViewType = this.f5195c.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.f5196d.getItemViewType(this.f5195c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f5195c.getOriginalPosition(i);
    }

    @VisibleForTesting
    /* renamed from: h */
    public void m3307h(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f5200h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyItemInserted(i);
    }

    @VisibleForTesting
    /* renamed from: i */
    public void m3306i(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f5200h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyItemRemoved(i);
    }

    public boolean isAd(int i) {
        return this.f5195c.isAd(i);
    }

    /* renamed from: j */
    public final void m3305j(List<View> list, List<View> list2) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f5198f.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f5195c.placeAdsInRange(i, i2 + 1);
    }

    /* renamed from: k */
    public final void m3304k(boolean z) {
        super.setHasStableIds(z);
    }

    public void loadAds(String str) {
        this.f5195c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f5195c.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f5194b = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onBindViewHolder(RecyclerView$b0 recyclerView$b0, int i) {
        Object adData = this.f5195c.getAdData(i);
        if (adData != null) {
            this.f5195c.bindAdView((NativeAd) adData, recyclerView$b0.itemView);
            return;
        }
        this.f5198f.put(recyclerView$b0.itemView, Integer.valueOf(i));
        this.f5197e.addView(recyclerView$b0.itemView, 0, null);
        this.f5196d.onBindViewHolder(recyclerView$b0, this.f5195c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public RecyclerView$b0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i < -56 || i > this.f5195c.getAdViewTypeCount() - 56) {
            return this.f5196d.onCreateViewHolder(viewGroup, i);
        }
        MoPubAdRenderer adRendererForViewType = this.f5195c.getAdRendererForViewType(i + 56);
        if (adRendererForViewType != null) {
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No view binder was registered for ads in MoPubRecyclerAdapter.");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f5194b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public boolean onFailedToRecycleView(RecyclerView$b0 recyclerView$b0) {
        return recyclerView$b0 instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(recyclerView$b0) : this.f5196d.onFailedToRecycleView(recyclerView$b0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onViewAttachedToWindow(RecyclerView$b0 recyclerView$b0) {
        if (recyclerView$b0 instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(recyclerView$b0);
        } else {
            this.f5196d.onViewAttachedToWindow(recyclerView$b0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onViewDetachedFromWindow(RecyclerView$b0 recyclerView$b0) {
        if (recyclerView$b0 instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(recyclerView$b0);
        } else {
            this.f5196d.onViewDetachedFromWindow(recyclerView$b0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void onViewRecycled(RecyclerView$b0 recyclerView$b0) {
        if (recyclerView$b0 instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(recyclerView$b0);
        } else {
            this.f5196d.onViewRecycled(recyclerView$b0);
        }
    }

    public void refreshAds(String str) {
        refreshAds(str, null);
    }

    public void refreshAds(String str, RequestParameters requestParameters) {
        RecyclerView recyclerView = this.f5194b;
        if (recyclerView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        LinearLayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (!(layoutManager instanceof LinearLayoutManager)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This LayoutManager can't be refreshed.");
        } else {
            LinearLayoutManager linearLayoutManager = layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.f5194b.findViewHolderForLayoutPosition(findFirstVisibleItemPosition));
            int max = Math.max(0, findFirstVisibleItemPosition - 1);
            while (this.f5195c.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            while (this.f5195c.isAd(findLastVisibleItemPosition) && findLastVisibleItemPosition < itemCount - 1) {
                findLastVisibleItemPosition++;
            }
            int originalPosition = this.f5195c.getOriginalPosition(max);
            this.f5195c.removeAdsInRange(this.f5195c.getOriginalPosition(findLastVisibleItemPosition), this.f5196d.getItemCount());
            int removeAdsInRange = this.f5195c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.scrollToPositionWithOffset(findFirstVisibleItemPosition - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            return;
        }
        this.f5195c.registerAdRenderer(moPubAdRenderer);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f5200h = moPubNativeAdLoadedListener;
    }

    public void setContentChangeStrategy(ContentChangeStrategy contentChangeStrategy) {
        if (!Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            return;
        }
        this.f5199g = contentChangeStrategy;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$g
    public void setHasStableIds(boolean z) {
        m3304k(z);
        this.f5196d.unregisterAdapterDataObserver(this.f5193a);
        this.f5196d.setHasStableIds(z);
        this.f5196d.registerAdapterDataObserver(this.f5193a);
    }
}

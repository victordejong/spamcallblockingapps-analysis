package com.mopub.nativeads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter.class */
public final class MoPubRecyclerAdapter extends RecyclerView.AbstractC0500g<RecyclerView.AbstractC0495b0> {

    /* renamed from: a */
    public final RecyclerView.AbstractC0502i f34776a;

    /* renamed from: b */
    public RecyclerView f34777b;

    /* renamed from: c */
    public final MoPubStreamAdPlacer f34778c;

    /* renamed from: d */
    public final RecyclerView.AbstractC0500g f34779d;

    /* renamed from: e */
    public final VisibilityTracker f34780e;

    /* renamed from: f */
    public final WeakHashMap<View, Integer> f34781f;

    /* renamed from: g */
    public ContentChangeStrategy f34782g;

    /* renamed from: h */
    public MoPubNativeAdLoadedListener f34783h;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy.class */
    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$a.class */
    public class C8949a implements VisibilityTracker.VisibilityTrackerListener {
        public C8949a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            MoPubRecyclerAdapter.this.m3934a(list, list2);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$b.class */
    public class C8950b implements MoPubNativeAdLoadedListener {
        public C8950b() {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubRecyclerAdapter.this.m3937a(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubRecyclerAdapter.this.m3932b(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubRecyclerAdapter$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubRecyclerAdapter$c.class */
    public class C8951c extends RecyclerView.AbstractC0502i {
        public C8951c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onChanged() {
            MoPubRecyclerAdapter.this.f34778c.setItemCount(MoPubRecyclerAdapter.this.f34779d.getItemCount());
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeChanged(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f34778c.getAdjustedPosition((i2 + i) - 1);
            int adjustedPosition2 = MoPubRecyclerAdapter.this.f34778c.getAdjustedPosition(i);
            MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedPosition2, (adjustedPosition - adjustedPosition2) + 1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
            if (r10 != false) goto L_0x0085;
         */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onItemRangeInserted(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3931b(r0)
                r1 = r5
                int r0 = r0.getAdjustedPosition(r1)
                r7 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                androidx.recyclerview.widget.RecyclerView$g r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3936a(r0)
                int r0 = r0.getItemCount()
                r8 = r0
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3931b(r0)
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
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m3930c(r1)
                if (r0 == r1) goto L_0x0085
                r0 = r9
                r8 = r0
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r0 = com.mopub.nativeads.MoPubRecyclerAdapter.ContentChangeStrategy.INSERT_AT_END
                r1 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r1 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubRecyclerAdapter$ContentChangeStrategy r1 = com.mopub.nativeads.MoPubRecyclerAdapter.m3930c(r1)
                if (r0 != r1) goto L_0x0062
                r0 = r9
                r8 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0062
                goto L_0x0085
            L_0x0062:
                r0 = r8
                r1 = r6
                if (r0 >= r1) goto L_0x0079
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                com.mopub.nativeads.MoPubStreamAdPlacer r0 = com.mopub.nativeads.MoPubRecyclerAdapter.m3931b(r0)
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
                goto L_0x008c
            L_0x0085:
                r0 = r4
                com.mopub.nativeads.MoPubRecyclerAdapter r0 = com.mopub.nativeads.MoPubRecyclerAdapter.this
                r0.notifyDataSetChanged()
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.MoPubRecyclerAdapter.C8951c.onItemRangeInserted(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeMoved(int i, int i2, int i3) {
            MoPubRecyclerAdapter.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0502i
        public void onItemRangeRemoved(int i, int i2) {
            int adjustedPosition = MoPubRecyclerAdapter.this.f34778c.getAdjustedPosition(i);
            int itemCount = MoPubRecyclerAdapter.this.f34779d.getItemCount();
            MoPubRecyclerAdapter.this.f34778c.setItemCount(itemCount);
            boolean z = i + i2 >= itemCount;
            if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.f34782g || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.f34782g && z)) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
                return;
            }
            int adjustedCount = MoPubRecyclerAdapter.this.f34778c.getAdjustedCount(itemCount + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                MoPubRecyclerAdapter.this.f34778c.removeItem(i);
            }
            int adjustedCount2 = adjustedCount - MoPubRecyclerAdapter.this.f34778c.getAdjustedCount(itemCount);
            MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedPosition - (adjustedCount2 - i2), adjustedCount2);
        }
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC0500g gVar) {
        this(activity, gVar, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC0500g gVar, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), gVar, new VisibilityTracker(activity));
    }

    public MoPubRecyclerAdapter(Activity activity, RecyclerView.AbstractC0500g gVar, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), gVar, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubRecyclerAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, RecyclerView.AbstractC0500g gVar, VisibilityTracker visibilityTracker) {
        this.f34782g = ContentChangeStrategy.INSERT_AT_END;
        this.f34781f = new WeakHashMap<>();
        this.f34779d = gVar;
        this.f34780e = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new C8949a());
        m3933a(this.f34779d.hasStableIds());
        this.f34778c = moPubStreamAdPlacer;
        moPubStreamAdPlacer.setAdLoadedListener(new C8950b());
        this.f34778c.setItemCount(this.f34779d.getItemCount());
        C8951c cVar = new C8951c();
        this.f34776a = cVar;
        this.f34779d.registerAdapterDataObserver(cVar);
    }

    public static int computeScrollOffset(LinearLayoutManager linearLayoutManager, RecyclerView.AbstractC0495b0 b0Var) {
        int i = 0;
        if (b0Var == null) {
            return 0;
        }
        View view = b0Var.itemView;
        if (linearLayoutManager.mo37150b()) {
            i = linearLayoutManager.m37587O() ? view.getBottom() : view.getTop();
        } else if (linearLayoutManager.mo37180a()) {
            i = linearLayoutManager.m37587O() ? view.getRight() : view.getLeft();
        }
        return i;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3937a(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f34783h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyItemInserted(i);
    }

    /* renamed from: a */
    public final void m3934a(List<View> list, List<View> list2) {
        int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f34781f.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f34778c.placeAdsInRange(i, i2 + 1);
    }

    /* renamed from: a */
    public final void m3933a(boolean z) {
        super.setHasStableIds(z);
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m3932b(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f34783h;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyItemRemoved(i);
    }

    public void clearAds() {
        this.f34778c.clearAds();
    }

    public void destroy() {
        this.f34779d.unregisterAdapterDataObserver(this.f34776a);
        this.f34778c.destroy();
        this.f34780e.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f34778c.getAdjustedPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public int getItemCount() {
        return this.f34778c.getAdjustedCount(this.f34779d.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public long getItemId(int i) {
        if (!this.f34779d.hasStableIds()) {
            return -1L;
        }
        Object adData = this.f34778c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f34779d.getItemId(this.f34778c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public int getItemViewType(int i) {
        int adViewType = this.f34778c.getAdViewType(i);
        return adViewType != 0 ? adViewType - 56 : this.f34779d.getItemViewType(this.f34778c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f34778c.getOriginalPosition(i);
    }

    public boolean isAd(int i) {
        return this.f34778c.isAd(i);
    }

    public void loadAds(String str) {
        this.f34778c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f34778c.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.f34777b = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onBindViewHolder(RecyclerView.AbstractC0495b0 b0Var, int i) {
        Object adData = this.f34778c.getAdData(i);
        if (adData != null) {
            this.f34778c.bindAdView((NativeAd) adData, b0Var.itemView);
            return;
        }
        this.f34781f.put(b0Var.itemView, Integer.valueOf(i));
        this.f34780e.addView(b0Var.itemView, 0, null);
        this.f34779d.onBindViewHolder(b0Var, this.f34778c.getOriginalPosition(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public RecyclerView.AbstractC0495b0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i < -56 || i > this.f34778c.getAdViewTypeCount() - 56) {
            return this.f34779d.onCreateViewHolder(viewGroup, i);
        }
        MoPubAdRenderer adRendererForViewType = this.f34778c.getAdRendererForViewType(i + 56);
        if (adRendererForViewType != null) {
            return new MoPubRecyclerViewHolder(adRendererForViewType.createAdView((Activity) viewGroup.getContext(), viewGroup));
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No view binder was registered for ads in MoPubRecyclerAdapter.");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.f34777b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public boolean onFailedToRecycleView(RecyclerView.AbstractC0495b0 b0Var) {
        return b0Var instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(b0Var) : this.f34779d.onFailedToRecycleView(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onViewAttachedToWindow(RecyclerView.AbstractC0495b0 b0Var) {
        if (b0Var instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(b0Var);
        } else {
            this.f34779d.onViewAttachedToWindow(b0Var);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0495b0 b0Var) {
        if (b0Var instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(b0Var);
        } else {
            this.f34779d.onViewDetachedFromWindow(b0Var);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void onViewRecycled(RecyclerView.AbstractC0495b0 b0Var) {
        if (b0Var instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(b0Var);
        } else {
            this.f34779d.onViewRecycled(b0Var);
        }
    }

    public void refreshAds(String str) {
        refreshAds(str, null);
    }

    public void refreshAds(String str, RequestParameters requestParameters) {
        RecyclerView recyclerView = this.f34777b;
        if (recyclerView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.AbstractC0511o layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Can't refresh ads when there is no layout manager on a RecyclerView.");
        } else if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int G = linearLayoutManager.m37595G();
            int computeScrollOffset = computeScrollOffset(linearLayoutManager, this.f34777b.m37459c(G));
            int max = Math.max(0, G - 1);
            while (this.f34778c.isAd(max) && max > 0) {
                max--;
            }
            int itemCount = getItemCount();
            int I = linearLayoutManager.m37593I();
            while (this.f34778c.isAd(I) && I < itemCount - 1) {
                I++;
            }
            int originalPosition = this.f34778c.getOriginalPosition(max);
            this.f34778c.removeAdsInRange(this.f34778c.getOriginalPosition(I), this.f34779d.getItemCount());
            int removeAdsInRange = this.f34778c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                linearLayoutManager.m37556f(G - removeAdsInRange, computeScrollOffset);
            }
            loadAds(str, requestParameters);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "This LayoutManager can't be refreshed.");
        }
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f34778c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f34783h = moPubNativeAdLoadedListener;
    }

    public void setContentChangeStrategy(ContentChangeStrategy contentChangeStrategy) {
        if (Preconditions.NoThrow.checkNotNull(contentChangeStrategy)) {
            this.f34782g = contentChangeStrategy;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0500g
    public void setHasStableIds(boolean z) {
        m3933a(z);
        this.f34779d.unregisterAdapterDataObserver(this.f34776a);
        this.f34779d.setHasStableIds(z);
        this.f34779d.registerAdapterDataObserver(this.f34776a);
    }
}

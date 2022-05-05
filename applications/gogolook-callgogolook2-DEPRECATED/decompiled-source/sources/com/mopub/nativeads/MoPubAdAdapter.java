package com.mopub.nativeads;

import android.app.Activity;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter.class */
public class MoPubAdAdapter extends BaseAdapter {
    @NonNull

    /* renamed from: a */
    public final WeakHashMap<View, Integer> f9114a;
    @NonNull

    /* renamed from: b */
    public final Adapter f9115b;
    @NonNull

    /* renamed from: c */
    public final MoPubStreamAdPlacer f9116c;
    @NonNull

    /* renamed from: d */
    public final VisibilityTracker f9117d;
    @Nullable

    /* renamed from: e */
    public MoPubNativeAdLoadedListener f9118e;

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$a.class */
    public class C3959a implements VisibilityTracker.VisibilityTrackerListener {
        public C3959a() {
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(@NonNull List<View> list, List<View> list2) {
            MoPubAdAdapter.this.m30154a(list);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$b.class */
    public class C3960b extends DataSetObserver {
        public C3960b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            MoPubAdAdapter.this.f9116c.setItemCount(MoPubAdAdapter.this.f9115b.getCount());
            MoPubAdAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MoPubAdAdapter.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$c.class */
    public class C3961c implements MoPubNativeAdLoadedListener {
        public C3961c() {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubAdAdapter.this.m30157a(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubAdAdapter.this.m30153b(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$d.class */
    public class C3962d implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemClickListener f9122a;

        public C3962d(AdapterView.OnItemClickListener onItemClickListener) {
            this.f9122a = onItemClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.f9116c.isAd(i)) {
                this.f9122a.onItemClick(adapterView, view, MoPubAdAdapter.this.f9116c.getOriginalPosition(i), j);
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$e.class */
    public class C3963e implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemLongClickListener f9124a;

        public C3963e(AdapterView.OnItemLongClickListener onItemLongClickListener) {
            this.f9124a = onItemLongClickListener;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return MoPubAdAdapter.this.isAd(i) || this.f9124a.onItemLongClick(adapterView, view, MoPubAdAdapter.this.f9116c.getOriginalPosition(i), j);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$f.class */
    public class C3964f implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemSelectedListener f9126a;

        public C3964f(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f9126a = onItemSelectedListener;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.isAd(i)) {
                this.f9126a.onItemSelected(adapterView, view, MoPubAdAdapter.this.f9116c.getOriginalPosition(i), j);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            this.f9126a.onNothingSelected(adapterView);
        }
    }

    public MoPubAdAdapter(@NonNull Activity activity, @NonNull Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(@NonNull Activity activity, @NonNull Adapter adapter, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new VisibilityTracker(activity));
    }

    public MoPubAdAdapter(@NonNull Activity activity, @NonNull Adapter adapter, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubAdAdapter(@NonNull MoPubStreamAdPlacer moPubStreamAdPlacer, @NonNull Adapter adapter, @NonNull VisibilityTracker visibilityTracker) {
        this.f9115b = adapter;
        this.f9116c = moPubStreamAdPlacer;
        this.f9114a = new WeakHashMap<>();
        this.f9117d = visibilityTracker;
        this.f9117d.setVisibilityTrackerListener(new C3959a());
        this.f9115b.registerDataSetObserver(new C3960b());
        this.f9116c.setAdLoadedListener(new C3961c());
        this.f9116c.setItemCount(this.f9115b.getCount());
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30157a(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f9118e;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m30154a(@NonNull List<View> list) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f9114a.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f9116c.placeAdsInRange(i, i2 + 1);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        Adapter adapter = this.f9115b;
        return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).areAllItemsEnabled();
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30153b(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f9118e;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyDataSetChanged();
    }

    public void clearAds() {
        this.f9116c.clearAds();
    }

    public void destroy() {
        this.f9116c.destroy();
        this.f9117d.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f9116c.getAdjustedPosition(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9116c.getAdjustedCount(this.f9115b.getCount());
    }

    @Override // android.widget.Adapter
    @Nullable
    public Object getItem(int i) {
        Object adData = this.f9116c.getAdData(i);
        return adData != null ? adData : this.f9115b.getItem(this.f9116c.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.f9116c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f9115b.getItemId(this.f9116c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f9116c.getAdViewType(i);
        return adViewType != 0 ? (adViewType + this.f9115b.getViewTypeCount()) - 1 : this.f9115b.getItemViewType(this.f9116c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f9116c.getOriginalPosition(i);
    }

    @Override // android.widget.Adapter
    @Nullable
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.f9116c.getAdView(i, view, viewGroup);
        View view2 = adView != null ? adView : this.f9115b.getView(this.f9116c.getOriginalPosition(i), view, viewGroup);
        this.f9114a.put(view2, Integer.valueOf(i));
        this.f9117d.addView(view2, 0, null);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f9115b.getViewTypeCount() + this.f9116c.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f9115b.hasStableIds();
    }

    public void insertItem(int i) {
        this.f9116c.insertItem(i);
    }

    public boolean isAd(int i) {
        return this.f9116c.isAd(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        boolean z = false;
        if (this.f9115b.isEmpty()) {
            z = false;
            if (this.f9116c.getAdjustedCount(0) == 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z;
        if (!isAd(i)) {
            Adapter adapter = this.f9115b;
            if (!(adapter instanceof ListAdapter) || !((ListAdapter) adapter).isEnabled(this.f9116c.getOriginalPosition(i))) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    public void loadAds(@NonNull String str) {
        this.f9116c.loadAds(str);
    }

    public void loadAds(@NonNull String str, @Nullable RequestParameters requestParameters) {
        this.f9116c.loadAds(str, requestParameters);
    }

    public void refreshAds(@NonNull ListView listView, @NonNull String str) {
        refreshAds(listView, str, null);
    }

    public void refreshAds(@NonNull ListView listView, @NonNull String str, @Nullable RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.refreshAds with a null ListView")) {
            View childAt = listView.getChildAt(0);
            int top = childAt == null ? 0 : childAt.getTop();
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            int max = Math.max(firstVisiblePosition - 1, 0);
            while (this.f9116c.isAd(max) && max > 0) {
                max--;
            }
            int lastVisiblePosition = listView.getLastVisiblePosition();
            while (this.f9116c.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
                lastVisiblePosition++;
            }
            int originalPosition = this.f9116c.getOriginalPosition(max);
            this.f9116c.removeAdsInRange(this.f9116c.getOriginalCount(lastVisiblePosition + 1), this.f9116c.getOriginalCount(getCount()));
            int removeAdsInRange = this.f9116c.removeAdsInRange(0, originalPosition);
            if (removeAdsInRange > 0) {
                listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
            }
            loadAds(str, requestParameters);
        }
    }

    public final void registerAdRenderer(@NonNull MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            this.f9116c.registerAdRenderer(moPubAdRenderer);
        }
    }

    public void removeItem(int i) {
        this.f9116c.removeItem(i);
    }

    public final void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f9118e = moPubNativeAdLoadedListener;
    }

    public void setOnClickListener(@NonNull ListView listView, @Nullable AdapterView.OnItemClickListener onItemClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            if (onItemClickListener == null) {
                listView.setOnItemClickListener(null);
            } else {
                listView.setOnItemClickListener(new C3962d(onItemClickListener));
            }
        }
    }

    public void setOnItemLongClickListener(@NonNull ListView listView, @Nullable AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            if (onItemLongClickListener == null) {
                listView.setOnItemLongClickListener(null);
            } else {
                listView.setOnItemLongClickListener(new C3963e(onItemLongClickListener));
            }
        }
    }

    public void setOnItemSelectedListener(@NonNull ListView listView, @Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            if (onItemSelectedListener == null) {
                listView.setOnItemSelectedListener(null);
            } else {
                listView.setOnItemSelectedListener(new C3964f(onItemSelectedListener));
            }
        }
    }

    public void setSelection(@NonNull ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            listView.setSelection(this.f9116c.getAdjustedPosition(i));
        }
    }

    public void smoothScrollToPosition(@NonNull ListView listView, int i) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            listView.smoothScrollToPosition(this.f9116c.getAdjustedPosition(i));
        }
    }
}

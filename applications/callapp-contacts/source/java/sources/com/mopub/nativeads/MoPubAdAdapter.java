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
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter.class */
public class MoPubAdAdapter extends BaseAdapter {

    /* renamed from: a */
    MoPubNativeAdLoadedListener f59965a;

    /* renamed from: b */
    private final WeakHashMap<View, Integer> f59966b;

    /* renamed from: c */
    private final Adapter f59967c;

    /* renamed from: d */
    private final MoPubStreamAdPlacer f59968d;

    /* renamed from: e */
    private final VisibilityTracker f59969e;

    public MoPubAdAdapter(Activity activity, Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new VisibilityTracker(activity));
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new VisibilityTracker(activity));
    }

    MoPubAdAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, Adapter adapter, VisibilityTracker visibilityTracker) {
        this.f59967c = adapter;
        this.f59968d = moPubStreamAdPlacer;
        this.f59966b = new WeakHashMap<>();
        this.f59969e = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.1
            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public final void onVisibilityChanged(List<View> list, List<View> list2) {
                MoPubAdAdapter.m6190a(MoPubAdAdapter.this, list);
            }
        });
        adapter.registerDataSetObserver(new DataSetObserver() { // from class: com.mopub.nativeads.MoPubAdAdapter.2
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                MoPubAdAdapter.this.f59968d.setItemCount(MoPubAdAdapter.this.f59967c.getCount());
                MoPubAdAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                MoPubAdAdapter.this.notifyDataSetInvalidated();
            }
        });
        moPubStreamAdPlacer.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.3
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdLoaded(int i) {
                MoPubAdAdapter moPubAdAdapter = MoPubAdAdapter.this;
                if (moPubAdAdapter.f59965a != null) {
                    moPubAdAdapter.f59965a.onAdLoaded(i);
                }
                moPubAdAdapter.notifyDataSetChanged();
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public final void onAdRemoved(int i) {
                MoPubAdAdapter moPubAdAdapter = MoPubAdAdapter.this;
                if (moPubAdAdapter.f59965a != null) {
                    moPubAdAdapter.f59965a.onAdRemoved(i);
                }
                moPubAdAdapter.notifyDataSetChanged();
            }
        });
        moPubStreamAdPlacer.setItemCount(adapter.getCount());
    }

    /* renamed from: a */
    static /* synthetic */ void m6190a(MoPubAdAdapter moPubAdAdapter, List list) {
        Iterator it2 = list.iterator();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (it2.hasNext()) {
            Integer num = moPubAdAdapter.f59966b.get((View) it2.next());
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        moPubAdAdapter.f59968d.placeAdsInRange(i, i2 + 1);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        Adapter adapter = this.f59967c;
        return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).areAllItemsEnabled();
    }

    public void clearAds() {
        this.f59968d.clearAds();
    }

    public void destroy() {
        this.f59968d.destroy();
        this.f59969e.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f59968d.getAdjustedPosition(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f59968d.getAdjustedCount(this.f59967c.getCount());
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Object adData = this.f59968d.getAdData(i);
        return adData != null ? adData : this.f59967c.getItem(this.f59968d.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.f59968d.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f59967c.getItemId(this.f59968d.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f59968d.getAdViewType(i);
        return adViewType != 0 ? (adViewType + this.f59967c.getViewTypeCount()) - 1 : this.f59967c.getItemViewType(this.f59968d.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f59968d.getOriginalPosition(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.f59968d.getAdView(i, view, viewGroup);
        View view2 = adView != null ? adView : this.f59967c.getView(this.f59968d.getOriginalPosition(i), view, viewGroup);
        this.f59966b.put(view2, Integer.valueOf(i));
        this.f59969e.addView(view2, 0, null);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f59967c.getViewTypeCount() + this.f59968d.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f59967c.hasStableIds();
    }

    public void insertItem(int i) {
        this.f59968d.insertItem(i);
    }

    public boolean isAd(int i) {
        return this.f59968d.isAd(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.f59967c.isEmpty() && this.f59968d.getAdjustedCount(0) == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        if (!isAd(i)) {
            Adapter adapter = this.f59967c;
            return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).isEnabled(this.f59968d.getOriginalPosition(i));
        }
        return true;
    }

    public void loadAds(String str) {
        this.f59968d.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f59968d.loadAds(str, requestParameters);
    }

    public void refreshAds(ListView listView, String str) {
        refreshAds(listView, str, null);
    }

    public void refreshAds(ListView listView, String str, RequestParameters requestParameters) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.refreshAds with a null ListView")) {
            return;
        }
        View childAt = listView.getChildAt(0);
        int top = childAt == null ? 0 : childAt.getTop();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int max = Math.max(firstVisiblePosition - 1, 0);
        while (this.f59968d.isAd(max) && max > 0) {
            max--;
        }
        int lastVisiblePosition = listView.getLastVisiblePosition();
        while (this.f59968d.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
            lastVisiblePosition++;
        }
        int originalPosition = this.f59968d.getOriginalPosition(max);
        this.f59968d.removeAdsInRange(this.f59968d.getOriginalCount(lastVisiblePosition + 1), this.f59968d.getOriginalCount(getCount()));
        int removeAdsInRange = this.f59968d.removeAdsInRange(0, originalPosition);
        if (removeAdsInRange > 0) {
            listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
        }
        loadAds(str, requestParameters);
    }

    public final void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            return;
        }
        this.f59968d.registerAdRenderer(moPubAdRenderer);
    }

    public void removeItem(int i) {
        this.f59968d.removeItem(i);
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f59965a = moPubNativeAdLoadedListener;
    }

    public void setOnClickListener(ListView listView, final AdapterView.OnItemClickListener onItemClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            return;
        }
        if (onItemClickListener == null) {
            listView.setOnItemClickListener(null);
        } else {
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.4
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (!MoPubAdAdapter.this.f59968d.isAd(i)) {
                        onItemClickListener.onItemClick(adapterView, view, MoPubAdAdapter.this.f59968d.getOriginalPosition(i), j);
                    }
                }
            });
        }
    }

    public void setOnItemLongClickListener(ListView listView, final AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            return;
        }
        if (onItemLongClickListener == null) {
            listView.setOnItemLongClickListener(null);
        } else {
            listView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.5
                @Override // android.widget.AdapterView.OnItemLongClickListener
                public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                    return MoPubAdAdapter.this.isAd(i) || onItemLongClickListener.onItemLongClick(adapterView, view, MoPubAdAdapter.this.f59968d.getOriginalPosition(i), j);
                }
            });
        }
    }

    public void setOnItemSelectedListener(ListView listView, final AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            return;
        }
        if (onItemSelectedListener == null) {
            listView.setOnItemSelectedListener(null);
        } else {
            listView.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.6
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                    if (!MoPubAdAdapter.this.isAd(i)) {
                        onItemSelectedListener.onItemSelected(adapterView, view, MoPubAdAdapter.this.f59968d.getOriginalPosition(i), j);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView<?> adapterView) {
                    onItemSelectedListener.onNothingSelected(adapterView);
                }
            });
        }
    }

    public void setSelection(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            return;
        }
        listView.setSelection(this.f59968d.getAdjustedPosition(i));
    }

    public void smoothScrollToPosition(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            return;
        }
        listView.smoothScrollToPosition(this.f59968d.getAdjustedPosition(i));
    }
}

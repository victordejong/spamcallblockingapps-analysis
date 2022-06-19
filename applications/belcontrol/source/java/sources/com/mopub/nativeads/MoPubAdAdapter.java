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
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter.class */
public class MoPubAdAdapter extends BaseAdapter {

    /* renamed from: a */
    public final WeakHashMap<View, Integer> f5148a;

    /* renamed from: b */
    public final Adapter f5149b;

    /* renamed from: c */
    public final MoPubStreamAdPlacer f5150c;

    /* renamed from: d */
    public final VisibilityTracker f5151d;

    /* renamed from: f */
    public MoPubNativeAdLoadedListener f5152f;

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$a.class */
    public class C1179a implements VisibilityTracker.VisibilityTrackerListener {
        public C1179a() {
            MoPubAdAdapter.this = r4;
        }

        @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
        public void onVisibilityChanged(List<View> list, List<View> list2) {
            MoPubAdAdapter.this.m3343f(list);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$b.class */
    public class C1180b extends DataSetObserver {
        public C1180b() {
            MoPubAdAdapter.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            MoPubAdAdapter.this.f5150c.setItemCount(MoPubAdAdapter.this.f5149b.getCount());
            MoPubAdAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MoPubAdAdapter.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$c.class */
    public class C1181c implements MoPubNativeAdLoadedListener {
        public C1181c() {
            MoPubAdAdapter.this = r4;
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
            MoPubAdAdapter.this.m3345d(i);
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
            MoPubAdAdapter.this.m3344e(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$d.class */
    public class C1182d implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemClickListener f5156a;

        public C1182d(AdapterView.OnItemClickListener onItemClickListener) {
            MoPubAdAdapter.this = r4;
            this.f5156a = onItemClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.f5150c.isAd(i)) {
                this.f5156a.onItemClick(adapterView, view, MoPubAdAdapter.this.f5150c.getOriginalPosition(i), j);
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$e.class */
    public class C1183e implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemLongClickListener f5158a;

        public C1183e(AdapterView.OnItemLongClickListener onItemLongClickListener) {
            MoPubAdAdapter.this = r4;
            this.f5158a = onItemLongClickListener;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return MoPubAdAdapter.this.isAd(i) || this.f5158a.onItemLongClick(adapterView, view, MoPubAdAdapter.this.f5150c.getOriginalPosition(i), j);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$f */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$f.class */
    public class C1184f implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemSelectedListener f5160a;

        public C1184f(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            MoPubAdAdapter.this = r4;
            this.f5160a = onItemSelectedListener;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.isAd(i)) {
                this.f5160a.onItemSelected(adapterView, view, MoPubAdAdapter.this.f5150c.getOriginalPosition(i), j);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            this.f5160a.onNothingSelected(adapterView);
        }
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter) {
        this(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubClientPositioning), adapter, new VisibilityTracker(activity));
    }

    public MoPubAdAdapter(Activity activity, Adapter adapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(new MoPubStreamAdPlacer(activity, moPubServerPositioning), adapter, new VisibilityTracker(activity));
    }

    @VisibleForTesting
    public MoPubAdAdapter(MoPubStreamAdPlacer moPubStreamAdPlacer, Adapter adapter, VisibilityTracker visibilityTracker) {
        this.f5149b = adapter;
        this.f5150c = moPubStreamAdPlacer;
        this.f5148a = new WeakHashMap<>();
        this.f5151d = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new C1179a());
        adapter.registerDataSetObserver(new C1180b());
        moPubStreamAdPlacer.setAdLoadedListener(new C1181c());
        moPubStreamAdPlacer.setItemCount(adapter.getCount());
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        Adapter adapter = this.f5149b;
        return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).areAllItemsEnabled();
    }

    public void clearAds() {
        this.f5150c.clearAds();
    }

    @VisibleForTesting
    /* renamed from: d */
    public void m3345d(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f5152f;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdLoaded(i);
        }
        notifyDataSetChanged();
    }

    public void destroy() {
        this.f5150c.destroy();
        this.f5151d.destroy();
    }

    @VisibleForTesting
    /* renamed from: e */
    public void m3344e(int i) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener = this.f5152f;
        if (moPubNativeAdLoadedListener != null) {
            moPubNativeAdLoadedListener.onAdRemoved(i);
        }
        notifyDataSetChanged();
    }

    /* renamed from: f */
    public final void m3343f(List<View> list) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (View view : list) {
            Integer num = this.f5148a.get(view);
            if (num != null) {
                i = Math.min(num.intValue(), i);
                i2 = Math.max(num.intValue(), i2);
            }
        }
        this.f5150c.placeAdsInRange(i, i2 + 1);
    }

    public int getAdjustedPosition(int i) {
        return this.f5150c.getAdjustedPosition(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f5150c.getAdjustedCount(this.f5149b.getCount());
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Object adData = this.f5150c.getAdData(i);
        return adData != null ? adData : this.f5149b.getItem(this.f5150c.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.f5150c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f5149b.getItemId(this.f5150c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f5150c.getAdViewType(i);
        return adViewType != 0 ? (adViewType + this.f5149b.getViewTypeCount()) - 1 : this.f5149b.getItemViewType(this.f5150c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f5150c.getOriginalPosition(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.f5150c.getAdView(i, view, viewGroup);
        View view2 = adView != null ? adView : this.f5149b.getView(this.f5150c.getOriginalPosition(i), view, viewGroup);
        this.f5148a.put(view2, Integer.valueOf(i));
        this.f5151d.addView(view2, 0, null);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f5149b.getViewTypeCount() + this.f5150c.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f5149b.hasStableIds();
    }

    public void insertItem(int i) {
        this.f5150c.insertItem(i);
    }

    public boolean isAd(int i) {
        return this.f5150c.isAd(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        boolean z = false;
        if (this.f5149b.isEmpty()) {
            z = false;
            if (this.f5150c.getAdjustedCount(0) == 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z;
        if (!isAd(i)) {
            Adapter adapter = this.f5149b;
            if (!(adapter instanceof ListAdapter) || !((ListAdapter) adapter).isEnabled(this.f5150c.getOriginalPosition(i))) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    public void loadAds(String str) {
        this.f5150c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f5150c.loadAds(str, requestParameters);
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
        while (this.f5150c.isAd(max) && max > 0) {
            max--;
        }
        int lastVisiblePosition = listView.getLastVisiblePosition();
        while (this.f5150c.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
            lastVisiblePosition++;
        }
        int originalPosition = this.f5150c.getOriginalPosition(max);
        this.f5150c.removeAdsInRange(this.f5150c.getOriginalCount(lastVisiblePosition + 1), this.f5150c.getOriginalCount(getCount()));
        int removeAdsInRange = this.f5150c.removeAdsInRange(0, originalPosition);
        if (removeAdsInRange > 0) {
            listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
        }
        loadAds(str, requestParameters);
    }

    public final void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            return;
        }
        this.f5150c.registerAdRenderer(moPubAdRenderer);
    }

    public void removeItem(int i) {
        this.f5150c.removeItem(i);
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f5152f = moPubNativeAdLoadedListener;
    }

    public void setOnClickListener(ListView listView, AdapterView.OnItemClickListener onItemClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            return;
        }
        if (onItemClickListener == null) {
            listView.setOnItemClickListener(null);
        } else {
            listView.setOnItemClickListener(new C1182d(onItemClickListener));
        }
    }

    public void setOnItemLongClickListener(ListView listView, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            return;
        }
        if (onItemLongClickListener == null) {
            listView.setOnItemLongClickListener(null);
        } else {
            listView.setOnItemLongClickListener(new C1183e(onItemLongClickListener));
        }
    }

    public void setOnItemSelectedListener(ListView listView, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            return;
        }
        if (onItemSelectedListener == null) {
            listView.setOnItemSelectedListener(null);
        } else {
            listView.setOnItemSelectedListener(new C1184f(onItemSelectedListener));
        }
    }

    public void setSelection(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            return;
        }
        listView.setSelection(this.f5150c.getAdjustedPosition(i));
    }

    public void smoothScrollToPosition(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            return;
        }
        listView.smoothScrollToPosition(this.f5150c.getAdjustedPosition(i));
    }
}

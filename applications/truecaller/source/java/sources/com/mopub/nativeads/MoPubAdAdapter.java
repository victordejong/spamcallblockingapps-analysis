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
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter.class */
public class MoPubAdAdapter extends BaseAdapter {

    /* renamed from: f */
    public static final /* synthetic */ int f9050f = 0;

    /* renamed from: a */
    public final WeakHashMap<View, Integer> f9051a;

    /* renamed from: b */
    public final Adapter f9052b;

    /* renamed from: c */
    public final MoPubStreamAdPlacer f9053c;

    /* renamed from: d */
    public final VisibilityTracker f9054d;

    /* renamed from: e */
    public MoPubNativeAdLoadedListener f9055e;

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$b.class */
    public class C2704b extends DataSetObserver {
        public C2704b() {
            MoPubAdAdapter.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            MoPubAdAdapter moPubAdAdapter = MoPubAdAdapter.this;
            moPubAdAdapter.f9053c.setItemCount(moPubAdAdapter.f9052b.getCount());
            MoPubAdAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MoPubAdAdapter.this.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$d.class */
    public class C2705d implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemClickListener f9057a;

        public C2705d(AdapterView.OnItemClickListener onItemClickListener) {
            MoPubAdAdapter.this = r4;
            this.f9057a = onItemClickListener;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.f9053c.isAd(i)) {
                this.f9057a.onItemClick(adapterView, view, MoPubAdAdapter.this.f9053c.getOriginalPosition(i), j);
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$e.class */
    public class C2706e implements AdapterView.OnItemLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemLongClickListener f9059a;

        public C2706e(AdapterView.OnItemLongClickListener onItemLongClickListener) {
            MoPubAdAdapter.this = r4;
            this.f9059a = onItemLongClickListener;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            return MoPubAdAdapter.this.isAd(i) || this.f9059a.onItemLongClick(adapterView, view, MoPubAdAdapter.this.f9053c.getOriginalPosition(i), j);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubAdAdapter$f */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubAdAdapter$f.class */
    public class C2707f implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ AdapterView.OnItemSelectedListener f9061a;

        public C2707f(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            MoPubAdAdapter.this = r4;
            this.f9061a = onItemSelectedListener;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (!MoPubAdAdapter.this.isAd(i)) {
                this.f9061a.onItemSelected(adapterView, view, MoPubAdAdapter.this.f9053c.getOriginalPosition(i), j);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
            this.f9061a.onNothingSelected(adapterView);
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
        this.f9052b = adapter;
        this.f9053c = moPubStreamAdPlacer;
        this.f9051a = new WeakHashMap<>();
        this.f9054d = visibilityTracker;
        visibilityTracker.setVisibilityTrackerListener(new a(this));
        adapter.registerDataSetObserver(new C2704b());
        moPubStreamAdPlacer.setAdLoadedListener(new c(this));
        moPubStreamAdPlacer.setItemCount(adapter.getCount());
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        Adapter adapter = this.f9052b;
        return (adapter instanceof ListAdapter) && ((ListAdapter) adapter).areAllItemsEnabled();
    }

    public void clearAds() {
        this.f9053c.clearAds();
    }

    public void destroy() {
        this.f9053c.destroy();
        this.f9054d.destroy();
    }

    public int getAdjustedPosition(int i) {
        return this.f9053c.getAdjustedPosition(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9053c.getAdjustedCount(this.f9052b.getCount());
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Object adData = this.f9053c.getAdData(i);
        return adData != null ? adData : this.f9052b.getItem(this.f9053c.getOriginalPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object adData = this.f9053c.getAdData(i);
        return adData != null ? -System.identityHashCode(adData) : this.f9052b.getItemId(this.f9053c.getOriginalPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        int adViewType = this.f9053c.getAdViewType(i);
        return adViewType != 0 ? (this.f9052b.getViewTypeCount() + adViewType) - 1 : this.f9052b.getItemViewType(this.f9053c.getOriginalPosition(i));
    }

    public int getOriginalPosition(int i) {
        return this.f9053c.getOriginalPosition(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View adView = this.f9053c.getAdView(i, view, viewGroup);
        View view2 = adView != null ? adView : this.f9052b.getView(this.f9053c.getOriginalPosition(i), view, viewGroup);
        this.f9051a.put(view2, Integer.valueOf(i));
        this.f9054d.addView(view2, 0, null);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f9053c.getAdViewTypeCount() + this.f9052b.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f9052b.hasStableIds();
    }

    public void insertItem(int i) {
        this.f9053c.insertItem(i);
    }

    public boolean isAd(int i) {
        return this.f9053c.isAd(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        boolean z = false;
        if (this.f9052b.isEmpty()) {
            z = false;
            if (this.f9053c.getAdjustedCount(0) == 0) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z;
        if (!isAd(i)) {
            Adapter adapter = this.f9052b;
            if (!(adapter instanceof ListAdapter) || !((ListAdapter) adapter).isEnabled(this.f9053c.getOriginalPosition(i))) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    public void loadAds(String str) {
        this.f9053c.loadAds(str);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        this.f9053c.loadAds(str, requestParameters);
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
        while (this.f9053c.isAd(max) && max > 0) {
            max--;
        }
        int lastVisiblePosition = listView.getLastVisiblePosition();
        while (this.f9053c.isAd(lastVisiblePosition) && lastVisiblePosition < getCount() - 1) {
            lastVisiblePosition++;
        }
        int originalPosition = this.f9053c.getOriginalPosition(max);
        this.f9053c.removeAdsInRange(this.f9053c.getOriginalCount(lastVisiblePosition + 1), this.f9053c.getOriginalCount(getCount()));
        int removeAdsInRange = this.f9053c.removeAdsInRange(0, originalPosition);
        if (removeAdsInRange > 0) {
            listView.setSelectionFromTop(firstVisiblePosition - removeAdsInRange, top);
        }
        loadAds(str, requestParameters);
    }

    public final void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Tried to set a null ad renderer on the placer.")) {
            return;
        }
        this.f9053c.registerAdRenderer(moPubAdRenderer);
    }

    public void removeItem(int i) {
        this.f9053c.removeItem(i);
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        this.f9055e = moPubNativeAdLoadedListener;
    }

    public void setOnClickListener(ListView listView, AdapterView.OnItemClickListener onItemClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            return;
        }
        if (onItemClickListener == null) {
            listView.setOnItemClickListener(null);
        } else {
            listView.setOnItemClickListener(new C2705d(onItemClickListener));
        }
    }

    public void setOnItemLongClickListener(ListView listView, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            return;
        }
        if (onItemLongClickListener == null) {
            listView.setOnItemLongClickListener(null);
        } else {
            listView.setOnItemLongClickListener(new C2706e(onItemLongClickListener));
        }
    }

    public void setOnItemSelectedListener(ListView listView, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            return;
        }
        if (onItemSelectedListener == null) {
            listView.setOnItemSelectedListener(null);
        } else {
            listView.setOnItemSelectedListener(new C2707f(onItemSelectedListener));
        }
    }

    public void setSelection(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            return;
        }
        listView.setSelection(this.f9053c.getAdjustedPosition(i));
    }

    public void smoothScrollToPosition(ListView listView, int i) {
        if (!Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            return;
        }
        listView.smoothScrollToPosition(this.f9053c.getAdjustedPosition(i));
    }
}

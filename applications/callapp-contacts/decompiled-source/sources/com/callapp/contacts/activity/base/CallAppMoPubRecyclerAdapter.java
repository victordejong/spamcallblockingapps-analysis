package com.callapp.contacts.activity.base;

import a.a.a.a.a.b;
import android.app.Activity;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.MoPubRecyclerAdapter;
import com.mopub.nativeads.RequestParameters;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter.class */
public class CallAppMoPubRecyclerAdapter extends MoPubRecyclerAdapter implements b<SectionViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f11154b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11155c;

    /* renamed from: d  reason: collision with root package name */
    private b f11156d;
    private BaseCallAppAdapter e;
    private String f;
    private RequestParameters g;

    public CallAppMoPubRecyclerAdapter(Activity activity, BaseCallAppAdapter baseCallAppAdapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        super(activity, baseCallAppAdapter, moPubClientPositioning);
        this.f11155c = false;
        this.e = baseCallAppAdapter;
        boolean z = baseCallAppAdapter instanceof b;
        this.f11155c = z;
        if (z) {
            this.f11156d = (b) baseCallAppAdapter;
        }
    }

    public CallAppMoPubRecyclerAdapter(Activity activity, BaseCallAppAdapter baseCallAppAdapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        super(activity, baseCallAppAdapter, moPubServerPositioning);
        this.f11155c = false;
        this.e = baseCallAppAdapter;
        boolean z = baseCallAppAdapter instanceof b;
        this.f11155c = z;
        if (z) {
            this.f11156d = (b) baseCallAppAdapter;
        }
    }

    @Override // a.a.a.a.a.b
    public final /* bridge */ /* synthetic */ SectionViewHolder a(ViewGroup viewGroup) {
        b bVar;
        if (!this.f11155c || (bVar = this.f11156d) == null) {
            return null;
        }
        return (SectionViewHolder) bVar.a(viewGroup);
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ void a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        if (this.f11155c && this.f11156d != null && !isAd(i)) {
            this.f11156d.a(sectionViewHolder2, getOriginalPosition(i));
        }
    }

    public final void b() {
        this.f11154b = false;
        refreshAds(this.f, this.g);
    }

    @Override // com.mopub.nativeads.MoPubRecyclerAdapter
    public void clearAds() {
        super.clearAds();
        this.f11154b = true;
    }

    @Override // a.a.a.a.a.b
    public long getHeaderId(int i) {
        if (!this.f11155c || this.f11156d == null) {
            return -1L;
        }
        return !isAd(i) ? this.f11156d.getHeaderId(getOriginalPosition(i)) : this.f11156d.getHeaderId(getOriginalPosition(i - 1));
    }

    public boolean isDataReady() {
        BaseCallAppAdapter baseCallAppAdapter = this.e;
        return baseCallAppAdapter != null && baseCallAppAdapter.b();
    }

    public boolean isOriginalStickyHeader() {
        return this.f11155c;
    }

    @Override // com.mopub.nativeads.MoPubRecyclerAdapter
    public void loadAds(String str, RequestParameters requestParameters) {
        this.f = str;
        this.g = requestParameters;
        super.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onBindViewHolder(RecyclerView.v vVar, int i, List<Object> list) {
        if (this.e != null && !isAd(i)) {
            this.e.a(getOriginalPosition(i), list);
        }
        super.onBindViewHolder(vVar, i, list);
    }
}

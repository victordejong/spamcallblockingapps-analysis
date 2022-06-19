package com.callapp.contacts.activity.base;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.MoPubRecyclerAdapter;
import com.mopub.nativeads.RequestParameters;
import java.util.List;
import p001a.p002a.p003a.p004a.p005a.AbstractC0003b;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter.class */
public class CallAppMoPubRecyclerAdapter extends MoPubRecyclerAdapter implements AbstractC0003b<SectionViewHolder> {

    /* renamed from: b */
    private boolean f20360b = false;

    /* renamed from: c */
    private boolean f20361c;

    /* renamed from: d */
    private AbstractC0003b f20362d;

    /* renamed from: e */
    private BaseCallAppAdapter f20363e;

    /* renamed from: f */
    private String f20364f;

    /* renamed from: g */
    private RequestParameters f20365g;

    public CallAppMoPubRecyclerAdapter(Activity activity, BaseCallAppAdapter baseCallAppAdapter, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        super(activity, baseCallAppAdapter, moPubClientPositioning);
        this.f20361c = false;
        this.f20363e = baseCallAppAdapter;
        boolean z = baseCallAppAdapter instanceof AbstractC0003b;
        this.f20361c = z;
        if (z) {
            this.f20362d = (AbstractC0003b) baseCallAppAdapter;
        }
    }

    public CallAppMoPubRecyclerAdapter(Activity activity, BaseCallAppAdapter baseCallAppAdapter, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        super(activity, baseCallAppAdapter, moPubServerPositioning);
        this.f20361c = false;
        this.f20363e = baseCallAppAdapter;
        boolean z = baseCallAppAdapter instanceof AbstractC0003b;
        this.f20361c = z;
        if (z) {
            this.f20362d = (AbstractC0003b) baseCallAppAdapter;
        }
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ SectionViewHolder mo30417a(ViewGroup viewGroup) {
        AbstractC0003b abstractC0003b;
        if (!this.f20361c || (abstractC0003b = this.f20362d) == null) {
            return null;
        }
        return (SectionViewHolder) abstractC0003b.mo30417a(viewGroup);
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* synthetic */ void mo30416a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        if (!this.f20361c || this.f20362d == null || isAd(i)) {
            return;
        }
        this.f20362d.mo30416a(sectionViewHolder2, getOriginalPosition(i));
    }

    /* renamed from: b */
    public final void m31476b() {
        this.f20360b = false;
        refreshAds(this.f20364f, this.f20365g);
    }

    @Override // com.mopub.nativeads.MoPubRecyclerAdapter
    public void clearAds() {
        super.clearAds();
        this.f20360b = true;
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    public long getHeaderId(int i) {
        if (!this.f20361c || this.f20362d == null) {
            return -1L;
        }
        return !isAd(i) ? this.f20362d.getHeaderId(getOriginalPosition(i)) : this.f20362d.getHeaderId(getOriginalPosition(i - 1));
    }

    public boolean isDataReady() {
        BaseCallAppAdapter baseCallAppAdapter = this.f20363e;
        return baseCallAppAdapter != null && baseCallAppAdapter.mo31506b();
    }

    public boolean isOriginalStickyHeader() {
        return this.f20361c;
    }

    @Override // com.mopub.nativeads.MoPubRecyclerAdapter
    public void loadAds(String str, RequestParameters requestParameters) {
        this.f20364f = str;
        this.f20365g = requestParameters;
        super.loadAds(str, requestParameters);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i, List<Object> list) {
        if (this.f20363e != null && !isAd(i)) {
            this.f20363e.m31515a(getOriginalPosition(i), list);
        }
        super.onBindViewHolder(abstractC2657v, i, list);
    }
}

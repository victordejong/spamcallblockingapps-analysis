package com.callapp.contacts.activity.marketplace.viewholders;

import android.animation.ObjectAnimator;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.activity.marketplace.list.ImageLoaderData;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ColorUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.CallAppExoPlayerFactory;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.AbstractC11168m;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.p346ui.PlayerView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder.class */
public abstract class StoreItemLoadingViewHolder extends RecyclerView.AbstractC2657v implements AbstractC1262o {

    /* renamed from: A */
    private View f23819A;

    /* renamed from: B */
    private final ViewGroup f23820B;

    /* renamed from: C */
    private final ImageView f23821C;

    /* renamed from: D */
    private final TextView f23822D;

    /* renamed from: E */
    private View f23823E;

    /* renamed from: F */
    private final AbstractC1253j f23824F;

    /* renamed from: G */
    private AbstractC11168m f23825G;

    /* renamed from: r */
    public final ImageView f23826r;

    /* renamed from: s */
    public TextView f23827s;

    /* renamed from: t */
    protected final CatalogManager.CatalogAttributes f23828t;

    /* renamed from: u */
    public boolean f23829u = false;

    /* renamed from: v */
    private CardView f23830v;

    /* renamed from: w */
    private ViewGroup f23831w;

    /* renamed from: x */
    private View f23832x;

    /* renamed from: y */
    private TextView f23833y;

    /* renamed from: z */
    private TextView f23834z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder.class */
    public static class StoreViewStubHolder {

        /* renamed from: a */
        private final TextView f23839a;

        /* renamed from: b */
        private final TextView f23840b;

        StoreViewStubHolder(View view) {
            this.f23839a = (TextView) view.findViewById(2131364471);
            this.f23840b = (TextView) view.findViewById(2131364470);
        }
    }

    public StoreItemLoadingViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view);
        this.f23824F = abstractC1253j;
        this.f23826r = (ImageView) view.findViewById(2131363013);
        this.f23830v = (CardView) view.findViewById(C14376a.C14382f.container);
        this.f23819A = view.findViewById(2131364487);
        this.f23831w = (ViewGroup) view.findViewById(2131362499);
        this.f23833y = (TextView) view.findViewById(2131363131);
        this.f23834z = (TextView) view.findViewById(2131363128);
        this.f23821C = (ImageView) view.findViewById(2131363597);
        this.f23822D = (TextView) view.findViewById(2131363598);
        this.f23820B = (ViewGroup) view.findViewById(2131363596);
        this.f23832x = view.findViewById(2131364473);
        this.f23823E = view.findViewById(2131363525);
        this.f23828t = catalogAttributes;
        this.f23827s = (TextView) view.findViewById(2131362553);
    }

    /* renamed from: a */
    public static JSONStoreItem m29844a(final String str, List<? extends JSONStoreItem> list) {
        return (JSONStoreItem) CollectionUtils.m26075a(list, new CollectionUtils.Predicate() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$StoreItemLoadingViewHolder$wVZTmexKnM80CYKxa8svGpJE27U
            @Override // com.callapp.framework.util.CollectionUtils.Predicate
            public final boolean apply(Object obj) {
                boolean m29845a;
                m29845a = StoreItemLoadingViewHolder.m29845a(str, (JSONStoreItem) obj);
                return m29845a;
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m29845a(String str, JSONStoreItem jSONStoreItem) {
        return StringUtils.m26044b((Object) jSONStoreItem.getSku(), (Object) str);
    }

    /* renamed from: l */
    private void m29841l() {
        getContainer().setOnClickListener(null);
        int color = ThemeUtils.getColor(2131099890);
        getImageView().setBackgroundColor(color);
        getImageView().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        ImageUtils.m27529a(getImageView(), 2131231608, (ColorFilter) null);
        getTitle().setText("");
        getPrice().setText("");
        getPromotionIcon().setVisibility(4);
        getPromotionText().setVisibility(4);
        View view = this.f23832x;
        if (view != null) {
            View m27302b = ViewUtils.m27302b(view);
            this.f23832x = m27302b;
            if (m27302b == null) {
                return;
            }
            StoreViewStubHolder storeViewStubHolder = (StoreViewStubHolder) m27302b.getTag();
            StoreViewStubHolder storeViewStubHolder2 = storeViewStubHolder;
            if (storeViewStubHolder == null) {
                storeViewStubHolder2 = new StoreViewStubHolder(this.f23832x);
                this.f23832x.setTag(storeViewStubHolder2);
            }
            storeViewStubHolder2.f23839a.setBackgroundColor(color);
            storeViewStubHolder2.f23839a.setVisibility(0);
            storeViewStubHolder2.f23840b.setBackgroundColor(color);
            storeViewStubHolder2.f23840b.setVisibility(0);
        }
    }

    /* renamed from: a */
    protected abstract JSONStoreItem mo29834a(String str);

    /* renamed from: a */
    public final void m29851a(ImageLoaderData imageLoaderData, DefaultInterfaceImplUtils.ClickListener clickListener) {
        this.f23826r.setBackgroundColor(imageLoaderData.getColor());
        m29847a(clickListener, imageLoaderData.getSku(), imageLoaderData.getUrl());
    }

    /* renamed from: a */
    public final void m29847a(DefaultInterfaceImplUtils.ClickListener clickListener, String str, final String str2) {
        final JSONStoreItem mo29834a = mo29834a(str);
        if (mo29834a == null || !mo29834a.isLoadedFromPlay()) {
            m29841l();
        } else {
            getContainer().setOnClickListener(clickListener);
            if (StringUtils.m26045b((CharSequence) str2)) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(getImageView(), str2, getContainer().getContext());
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder.1
                    @Override // com.bumptech.glide.p112e.AbstractC3604g
                    /* renamed from: a */
                    public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                        if (StoreItemLoadingViewHolder.this.f23823E != null) {
                            StoreItemLoadingViewHolder.this.f23823E.setVisibility(8);
                            StoreItemLoadingViewHolder.this.getImageView().setAlpha(1.0f);
                            return false;
                        }
                        return false;
                    }

                    @Override // com.bumptech.glide.p112e.AbstractC3604g
                    /* renamed from: a */
                    public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                        if (!mo29834a.isCustomizable()) {
                            StoreItemLoadingViewHolder.this.f23824F.removeObserver(StoreItemLoadingViewHolder.this);
                            if (StoreItemLoadingViewHolder.this.f23823E == null) {
                                return false;
                            }
                            StoreItemLoadingViewHolder.this.f23823E.setVisibility(8);
                            StoreItemLoadingViewHolder.this.getImageView().setAlpha(1.0f);
                            return false;
                        }
                        if (StoreItemLoadingViewHolder.this.f23825G == null) {
                            StoreItemLoadingViewHolder.this.f23825G = CallAppExoPlayerFactory.m26899a();
                            StoreItemLoadingViewHolder.this.f23824F.addObserver(StoreItemLoadingViewHolder.this);
                        }
                        StoreItemLoadingViewHolder.this.f23825G.mo21934e();
                        if (StoreItemLoadingViewHolder.this.f23823E == null) {
                            return false;
                        }
                        StoreItemLoadingViewHolder storeItemLoadingViewHolder = StoreItemLoadingViewHolder.this;
                        storeItemLoadingViewHolder.f23823E = ViewUtils.m27302b(storeItemLoadingViewHolder.f23823E);
                        if (StoreItemLoadingViewHolder.this.f23823E == null) {
                            return false;
                        }
                        StoreItemLoadingViewHolder.this.f23823E.setVisibility(0);
                        ((PlayerView) StoreItemLoadingViewHolder.this.f23823E).setShutterBackgroundColor(0);
                        ((PlayerView) StoreItemLoadingViewHolder.this.f23823E).setPlayer(StoreItemLoadingViewHolder.this.f23825G);
                        StoreItemLoadingViewHolder.this.f23825G.mo21167a(new AbstractC10842ac.AbstractC10843a() { // from class: com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder.1.1
                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20311a(ExoPlaybackException exoPlaybackException) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, exoPlaybackException);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20310a(MediaItem mediaItem, int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, mediaItem, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20309a(C10840aa c10840aa) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10840aa);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20308a(AbstractC10842ac.C10844b c10844b) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10844b);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20307a(AbstractC10864al abstractC10864al, int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, abstractC10864al, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, trackGroupArray, c11443g);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: a */
                            public /* synthetic */ void mo20305a(boolean z2) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$a(this, z2);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: b */
                            public /* synthetic */ void mo20304b(int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$b(this, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: b */
                            public /* synthetic */ void mo20303b(boolean z2) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z2);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: b */
                            public final void mo20302b(boolean z2, int i) {
                                if (i == 3) {
                                    StoreItemLoadingViewHolder.this.getImageView().animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L);
                                }
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: c */
                            public /* synthetic */ void mo20301c(List list) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: c */
                            public /* synthetic */ void mo20300c(boolean z2) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z2);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: c */
                            public /* synthetic */ void mo20299c(boolean z2, int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z2, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: d */
                            public /* synthetic */ void mo20298d(int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: e */
                            public /* synthetic */ void mo20297e(int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: f */
                            public /* synthetic */ void mo20296f(int i) {
                                AbstractC10842ac.AbstractC10843a._CC.$default$f(this, i);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: p_ */
                            public /* synthetic */ void mo20295p_() {
                                AbstractC10842ac.AbstractC10843a._CC.$default$p_(this);
                            }

                            @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
                            /* renamed from: q_ */
                            public /* synthetic */ void mo20294q_() {
                                AbstractC10842ac.AbstractC10843a._CC.$default$q_(this);
                            }
                        });
                        StoreItemLoadingViewHolder.this.f23825G.mo21160a(VideoCacheManager.get().m26892a(StringUtils.m26019j(str2, "webm")));
                        return false;
                    }
                };
                glideRequestBuilder.m27013d();
            }
            getTitle().setText(mo29834a.getTitle());
            SpannableString spannableString = new SpannableString(mo29834a.getPriceWithCurrency());
            if (mo29838b(mo29834a)) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
            getPrice().setText(spannableString);
            if (ViewUtils.m27329a(this.f23832x)) {
                StoreViewStubHolder storeViewStubHolder = (StoreViewStubHolder) this.f23832x.getTag();
                storeViewStubHolder.f23839a.setVisibility(8);
                storeViewStubHolder.f23840b.setVisibility(8);
            }
            if (StoreUtils.m29951a(mo29834a)) {
                getPromotionIcon().setVisibility(0);
                getPromotionText().setVisibility(0);
                getPromotionText().setText(String.valueOf(mo29834a.getPromotionPercent()));
            } else {
                getPromotionIcon().setVisibility(4);
                getPromotionText().setVisibility(4);
            }
        }
        setAdditionalDataView(mo29834a);
        ObjectAnimator m27173b = CallappAnimationUtils.m27173b(getDataLayout(), 400, 0);
        if (m27173b != null) {
            m27173b.start();
        }
    }

    /* renamed from: a */
    public final void m29846a(DefaultInterfaceImplUtils.ClickListener clickListener, String str, String str2, int i) {
        String str3;
        JSONStoreItem mo29834a = mo29834a(str);
        if (mo29834a != null) {
            getContainer().setOnClickListener(clickListener);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(getImageView(), str2, getContainer().getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
            getImageView().setBackgroundColor(0);
            String title = mo29834a.getTitle();
            String str4 = title;
            if (StringUtils.m26059a((CharSequence) title)) {
                str4 = mo29834a.getTitle();
            }
            TextView title2 = getTitle();
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            if (mo29834a.getPromotionPercent() != 0) {
                str3 = mo29834a.getPromotionPercent() + "% " + Activities.getString(2131887445);
            } else {
                str3 = "";
            }
            sb.append(str3);
            title2.setText(sb.toString());
            getTitle().setTextColor(ThemeUtils.getColor(2131100228));
            String description = mo29834a.getDescription();
            String str5 = description;
            if (StringUtils.m26059a((CharSequence) description)) {
                str5 = mo29834a.getDescription();
            }
            getDescription().setTextColor(ThemeUtils.getColor(2131100228));
            getDescription().setText(str5);
            getUpperFrame().setBackgroundColor(i);
        } else {
            m29841l();
        }
        setAdditionalDataView(mo29834a);
        ObjectAnimator m27173b = CallappAnimationUtils.m27173b(getDataLayout(), 400, 0);
        if (m27173b != null) {
            m27173b.start();
        }
    }

    /* renamed from: a */
    protected abstract boolean mo29835a(JSONStoreItem jSONStoreItem);

    /* renamed from: b */
    public boolean mo29838b(JSONStoreItem jSONStoreItem) {
        return (Prefs.f26344cO.get().intValue() > 0 || Prefs.f26342cM.get().intValue() > 0) && jSONStoreItem.getPrice() > BitmapDescriptorFactory.HUE_RED;
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_DESTROY)
    void destroy() {
        AbstractC11168m abstractC11168m = this.f23825G;
        if (abstractC11168m != null) {
            abstractC11168m.mo21113w();
            this.f23825G = null;
            if (!ViewUtils.m27329a(this.f23823E)) {
                return;
            }
            View view = this.f23823E;
            if (!(view instanceof PlayerView) || ((PlayerView) view).f37964a == null) {
                return;
            }
            ((PlayerView) this.f23823E).f37964a.removeAllViews();
        }
    }

    public CardView getContainer() {
        return this.f23830v;
    }

    public ViewGroup getDataLayout() {
        return this.f23831w;
    }

    public TextView getDescription() {
        return this.f23827s;
    }

    public ImageView getImageView() {
        return this.f23826r;
    }

    public TextView getPrice() {
        return this.f23834z;
    }

    public ViewGroup getPromotionContainer() {
        return this.f23820B;
    }

    public View getPromotionIcon() {
        return this.f23821C;
    }

    public TextView getPromotionText() {
        return this.f23822D;
    }

    public TextView getTitle() {
        return this.f23833y;
    }

    public View getUpperFrame() {
        return this.f23819A;
    }

    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        if (this.f23829u) {
            if (jSONStoreItem == null || !jSONStoreItem.isLoadedFromPlay() || !StringUtils.m26045b((CharSequence) jSONStoreItem.getDescription())) {
                this.f23827s.setText("");
            } else {
                String description = jSONStoreItem.getDescription();
                this.f23827s.setText(HtmlUtils.m27537b(description.replaceAll("\\*(.*?)\\*", "<font color=#" + ColorUtils.getRgbRepresentation(ThemeUtils.getColor(2131099784)) + "><b>$1</b></font>")));
            }
        }
        TextView price = getPrice();
        if (price != null) {
            if (mo29835a(jSONStoreItem)) {
                price.setTextColor(ThemeUtils.getColor(2131099784));
                price.setText(2131887027);
            } else if (!jSONStoreItem.isPurchased()) {
                price.setTextColor(ThemeUtils.getColor(2131099914));
            } else {
                price.setTextColor(ThemeUtils.getColor(2131099713));
                price.setText(2131887487);
            }
        }
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_RESUME)
    void start() {
        AbstractC11168m abstractC11168m = this.f23825G;
        if (abstractC11168m != null) {
            abstractC11168m.mo21127j();
        }
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_PAUSE)
    void stop() {
        AbstractC11168m abstractC11168m = this.f23825G;
        if (abstractC11168m != null) {
            abstractC11168m.mo21937b();
            this.f23825G.mo21934e();
        }
    }
}

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
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.engine.GlideException;
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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder.class */
public abstract class StoreItemLoadingViewHolder extends RecyclerView.v implements o {
    private View A;
    private final ViewGroup B;
    private final ImageView C;
    private final TextView D;
    private View E;
    private final j F;
    private m G;
    public final ImageView r;
    public TextView s;
    protected final CatalogManager.CatalogAttributes t;
    public boolean u = false;
    private CardView v;
    private ViewGroup w;
    private View x;
    private TextView y;
    private TextView z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder$StoreViewStubHolder.class */
    public static class StoreViewStubHolder {

        /* renamed from: a  reason: collision with root package name */
        private final TextView f13408a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f13409b;

        StoreViewStubHolder(View view) {
            this.f13408a = (TextView) view.findViewById(2131364471);
            this.f13409b = (TextView) view.findViewById(2131364470);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StoreItemLoadingViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view);
        this.F = jVar;
        this.r = (ImageView) view.findViewById(2131363013);
        this.v = (CardView) view.findViewById(a.f.container);
        this.A = view.findViewById(2131364487);
        this.w = (ViewGroup) view.findViewById(2131362499);
        this.y = (TextView) view.findViewById(2131363131);
        this.z = (TextView) view.findViewById(2131363128);
        this.C = (ImageView) view.findViewById(2131363597);
        this.D = (TextView) view.findViewById(2131363598);
        this.B = (ViewGroup) view.findViewById(2131363596);
        this.x = view.findViewById(2131364473);
        this.E = view.findViewById(2131363525);
        this.t = catalogAttributes;
        this.s = (TextView) view.findViewById(2131362553);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static JSONStoreItem a(final String str, List<? extends JSONStoreItem> list) {
        return (JSONStoreItem) CollectionUtils.a(list, new CollectionUtils.Predicate() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$StoreItemLoadingViewHolder$wVZTmexKnM80CYKxa8svGpJE27U
            @Override // com.callapp.framework.util.CollectionUtils.Predicate
            public final boolean apply(Object obj) {
                boolean a2;
                a2 = StoreItemLoadingViewHolder.a(str, (JSONStoreItem) obj);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(String str, JSONStoreItem jSONStoreItem) {
        return StringUtils.b((Object) jSONStoreItem.getSku(), (Object) str);
    }

    private void l() {
        getContainer().setOnClickListener(null);
        int color = ThemeUtils.getColor(2131099890);
        getImageView().setBackgroundColor(color);
        getImageView().setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        ImageUtils.a(getImageView(), 2131231608, (ColorFilter) null);
        getTitle().setText("");
        getPrice().setText("");
        getPromotionIcon().setVisibility(4);
        getPromotionText().setVisibility(4);
        View view = this.x;
        if (view != null) {
            View b2 = ViewUtils.b(view);
            this.x = b2;
            if (b2 != null) {
                StoreViewStubHolder storeViewStubHolder = (StoreViewStubHolder) b2.getTag();
                StoreViewStubHolder storeViewStubHolder2 = storeViewStubHolder;
                if (storeViewStubHolder == null) {
                    storeViewStubHolder2 = new StoreViewStubHolder(this.x);
                    this.x.setTag(storeViewStubHolder2);
                }
                storeViewStubHolder2.f13408a.setBackgroundColor(color);
                storeViewStubHolder2.f13408a.setVisibility(0);
                storeViewStubHolder2.f13409b.setBackgroundColor(color);
                storeViewStubHolder2.f13409b.setVisibility(0);
            }
        }
    }

    protected abstract JSONStoreItem a(String str);

    public final void a(ImageLoaderData imageLoaderData, DefaultInterfaceImplUtils.ClickListener clickListener) {
        this.r.setBackgroundColor(imageLoaderData.getColor());
        a(clickListener, imageLoaderData.getSku(), imageLoaderData.getUrl());
    }

    public final void a(DefaultInterfaceImplUtils.ClickListener clickListener, String str, final String str2) {
        final JSONStoreItem a2 = a(str);
        if (a2 == null || !a2.isLoadedFromPlay()) {
            l();
        } else {
            getContainer().setOnClickListener(clickListener);
            if (StringUtils.b((CharSequence) str2)) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(getImageView(), str2, getContainer().getContext());
                glideRequestBuilder.q = true;
                glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder.1
                    @Override // com.bumptech.glide.e.g
                    public final boolean a(GlideException glideException, Object obj, com.bumptech.glide.e.a.j jVar, boolean z) {
                        if (StoreItemLoadingViewHolder.this.E == null) {
                            return false;
                        }
                        StoreItemLoadingViewHolder.this.E.setVisibility(8);
                        StoreItemLoadingViewHolder.this.getImageView().setAlpha(1.0f);
                        return false;
                    }

                    @Override // com.bumptech.glide.e.g
                    public final boolean a(Object obj, Object obj2, com.bumptech.glide.e.a.j jVar, com.bumptech.glide.load.a aVar, boolean z) {
                        if (a2.isCustomizable()) {
                            if (StoreItemLoadingViewHolder.this.G == null) {
                                StoreItemLoadingViewHolder.this.G = CallAppExoPlayerFactory.a();
                                StoreItemLoadingViewHolder.this.F.addObserver(StoreItemLoadingViewHolder.this);
                            }
                            StoreItemLoadingViewHolder.this.G.e();
                            if (StoreItemLoadingViewHolder.this.E == null) {
                                return false;
                            }
                            StoreItemLoadingViewHolder storeItemLoadingViewHolder = StoreItemLoadingViewHolder.this;
                            storeItemLoadingViewHolder.E = ViewUtils.b(storeItemLoadingViewHolder.E);
                            if (StoreItemLoadingViewHolder.this.E == null) {
                                return false;
                            }
                            StoreItemLoadingViewHolder.this.E.setVisibility(0);
                            ((PlayerView) StoreItemLoadingViewHolder.this.E).setShutterBackgroundColor(0);
                            ((PlayerView) StoreItemLoadingViewHolder.this.E).setPlayer(StoreItemLoadingViewHolder.this.G);
                            StoreItemLoadingViewHolder.this.G.a(new ac.a() { // from class: com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder.1.1
                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
                                    ac.a._CC.$default$a(this, exoPlaybackException);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(MediaItem mediaItem, int i) {
                                    ac.a._CC.$default$a(this, mediaItem, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(aa aaVar) {
                                    ac.a._CC.$default$a(this, aaVar);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(ac.b bVar) {
                                    ac.a._CC.$default$a(this, bVar);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(al alVar, int i) {
                                    ac.a._CC.$default$a(this, alVar, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.g gVar) {
                                    ac.a._CC.$default$a(this, trackGroupArray, gVar);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void a(boolean z2) {
                                    ac.a._CC.$default$a(this, z2);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void b(int i) {
                                    ac.a._CC.$default$b(this, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void b(boolean z2) {
                                    ac.a._CC.$default$b(this, z2);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public final void b(boolean z2, int i) {
                                    if (i == 3) {
                                        StoreItemLoadingViewHolder.this.getImageView().animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L);
                                    }
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void c(List list) {
                                    ac.a._CC.$default$c(this, list);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void c(boolean z2) {
                                    ac.a._CC.$default$c(this, z2);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void c(boolean z2, int i) {
                                    ac.a._CC.$default$c(this, z2, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void d(int i) {
                                    ac.a._CC.$default$d(this, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void e(int i) {
                                    ac.a._CC.$default$e(this, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void f(int i) {
                                    ac.a._CC.$default$f(this, i);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void p_() {
                                    ac.a._CC.$default$p_(this);
                                }

                                @Override // com.google.android.exoplayer2.ac.a
                                public /* synthetic */ void q_() {
                                    ac.a._CC.$default$q_(this);
                                }
                            });
                            StoreItemLoadingViewHolder.this.G.a(VideoCacheManager.get().a(StringUtils.j(str2, "webm")));
                            return false;
                        }
                        StoreItemLoadingViewHolder.this.F.removeObserver(StoreItemLoadingViewHolder.this);
                        if (StoreItemLoadingViewHolder.this.E == null) {
                            return false;
                        }
                        StoreItemLoadingViewHolder.this.E.setVisibility(8);
                        StoreItemLoadingViewHolder.this.getImageView().setAlpha(1.0f);
                        return false;
                    }
                };
                glideRequestBuilder.d();
            }
            getTitle().setText(a2.getTitle());
            SpannableString spannableString = new SpannableString(a2.getPriceWithCurrency());
            if (b(a2)) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
            getPrice().setText(spannableString);
            if (ViewUtils.a(this.x)) {
                StoreViewStubHolder storeViewStubHolder = (StoreViewStubHolder) this.x.getTag();
                storeViewStubHolder.f13408a.setVisibility(8);
                storeViewStubHolder.f13409b.setVisibility(8);
            }
            if (StoreUtils.a(a2)) {
                getPromotionIcon().setVisibility(0);
                getPromotionText().setVisibility(0);
                getPromotionText().setText(String.valueOf(a2.getPromotionPercent()));
            } else {
                getPromotionIcon().setVisibility(4);
                getPromotionText().setVisibility(4);
            }
        }
        setAdditionalDataView(a2);
        ObjectAnimator b2 = CallappAnimationUtils.b(getDataLayout(), 400, 0);
        if (b2 != null) {
            b2.start();
        }
    }

    public final void a(DefaultInterfaceImplUtils.ClickListener clickListener, String str, String str2, int i) {
        String str3;
        JSONStoreItem a2 = a(str);
        if (a2 != null) {
            getContainer().setOnClickListener(clickListener);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(getImageView(), str2, getContainer().getContext());
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
            getImageView().setBackgroundColor(0);
            String title = a2.getTitle();
            String str4 = title;
            if (StringUtils.a((CharSequence) title)) {
                str4 = a2.getTitle();
            }
            TextView title2 = getTitle();
            StringBuilder sb = new StringBuilder();
            sb.append(str4);
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            if (a2.getPromotionPercent() != 0) {
                str3 = a2.getPromotionPercent() + "% " + Activities.getString(2131887445);
            } else {
                str3 = "";
            }
            sb.append(str3);
            title2.setText(sb.toString());
            getTitle().setTextColor(ThemeUtils.getColor(2131100228));
            String description = a2.getDescription();
            String str5 = description;
            if (StringUtils.a((CharSequence) description)) {
                str5 = a2.getDescription();
            }
            getDescription().setTextColor(ThemeUtils.getColor(2131100228));
            getDescription().setText(str5);
            getUpperFrame().setBackgroundColor(i);
        } else {
            l();
        }
        setAdditionalDataView(a2);
        ObjectAnimator b2 = CallappAnimationUtils.b(getDataLayout(), 400, 0);
        if (b2 != null) {
            b2.start();
        }
    }

    protected abstract boolean a(JSONStoreItem jSONStoreItem);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(JSONStoreItem jSONStoreItem) {
        return (Prefs.cO.get().intValue() > 0 || Prefs.cM.get().intValue() > 0) && jSONStoreItem.getPrice() > BitmapDescriptorFactory.HUE_RED;
    }

    @v(a = j.a.ON_DESTROY)
    void destroy() {
        m mVar = this.G;
        if (mVar != null) {
            mVar.w();
            this.G = null;
            if (ViewUtils.a(this.E)) {
                View view = this.E;
                if ((view instanceof PlayerView) && ((PlayerView) view).f21975a != null) {
                    ((PlayerView) this.E).f21975a.removeAllViews();
                }
            }
        }
    }

    public CardView getContainer() {
        return this.v;
    }

    public ViewGroup getDataLayout() {
        return this.w;
    }

    public TextView getDescription() {
        return this.s;
    }

    public ImageView getImageView() {
        return this.r;
    }

    public TextView getPrice() {
        return this.z;
    }

    public ViewGroup getPromotionContainer() {
        return this.B;
    }

    public View getPromotionIcon() {
        return this.C;
    }

    public TextView getPromotionText() {
        return this.D;
    }

    public TextView getTitle() {
        return this.y;
    }

    public View getUpperFrame() {
        return this.A;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        if (this.u) {
            if (jSONStoreItem == null || !jSONStoreItem.isLoadedFromPlay() || !StringUtils.b((CharSequence) jSONStoreItem.getDescription())) {
                this.s.setText("");
            } else {
                String description = jSONStoreItem.getDescription();
                this.s.setText(HtmlUtils.b(description.replaceAll("\\*(.*?)\\*", "<font color=#" + ColorUtils.getRgbRepresentation(ThemeUtils.getColor(2131099784)) + "><b>$1</b></font>")));
            }
        }
        TextView price = getPrice();
        if (price == null) {
            return;
        }
        if (a(jSONStoreItem)) {
            price.setTextColor(ThemeUtils.getColor(2131099784));
            price.setText(2131887027);
        } else if (jSONStoreItem.isPurchased()) {
            price.setTextColor(ThemeUtils.getColor(2131099713));
            price.setText(2131887487);
        } else {
            price.setTextColor(ThemeUtils.getColor(2131099914));
        }
    }

    @v(a = j.a.ON_RESUME)
    void start() {
        m mVar = this.G;
        if (mVar != null) {
            mVar.j();
        }
    }

    @v(a = j.a.ON_PAUSE)
    void stop() {
        m mVar = this.G;
        if (mVar != null) {
            mVar.b();
            this.G.e();
        }
    }
}

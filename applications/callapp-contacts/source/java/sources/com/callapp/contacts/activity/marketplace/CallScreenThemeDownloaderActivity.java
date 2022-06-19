package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.list.HorizontalSpaceItemDecoration;
import com.callapp.contacts.activity.marketplace.viewholders.ButtonSetViewHolder;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.PromotionManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.CallAppExoPlayerFactory;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.ProgressCardView;
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
import java.util.List;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity.class */
public class CallScreenThemeDownloaderActivity extends BaseDownloaderActivity<JSONStoreCallScreenThemeItem> implements DownloaderCardViewHandler.DownloaderCardEvents<JSONStoreCallScreenThemeItem>, AbstractC10842ac.AbstractC10843a {

    /* renamed from: e */
    protected AbstractC11168m f23294e;

    /* renamed from: f */
    protected PlayerView f23295f;

    /* renamed from: g */
    protected ButtonSet f23296g;

    /* renamed from: h */
    protected RecyclerView f23297h;

    /* renamed from: j */
    protected ImageView f23298j;

    /* renamed from: k */
    protected final int f23299k = -2;

    /* renamed from: l */
    protected final int f23300l = -3;

    /* renamed from: m */
    private ImageView f23301m;

    /* renamed from: n */
    private ImageView f23302n;

    /* renamed from: o */
    private ImageView f23303o;

    /* renamed from: p */
    private ImageView f23304p;

    /* renamed from: q */
    private CallIncomingIndicatorView f23305q;

    /* renamed from: r */
    private CallIncomingIndicatorView f23306r;

    /* renamed from: s */
    private View f23307s;

    /* renamed from: t */
    private Animation f23308t;

    /* renamed from: u */
    private ProgressBar f23309u;

    /* renamed from: v */
    private View f23310v;

    /* renamed from: w */
    private boolean f23311w;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity$ButtonSetAdapter.class */
    public static class ButtonSetAdapter extends RecyclerView.AbstractC2626a {

        /* renamed from: a */
        private final ButtonSet[] f23314a;

        /* renamed from: b */
        private ButtonSet f23315b = (ButtonSet) Prefs.f26433dy.get();

        /* renamed from: c */
        private ButtonSetPickedListener f23316c;

        public ButtonSetAdapter(ButtonSetPickedListener buttonSetPickedListener) {
            this.f23316c = buttonSetPickedListener;
            ButtonSet[] values = ButtonSet.values();
            this.f23314a = values;
            int length = values.length;
            for (int i = 0; i < length; i++) {
                ButtonSet buttonSet = values[i];
                buttonSet.setIsPicked(buttonSet == this.f23315b);
            }
            buttonSetPickedListener.onButtonSetPicked(this.f23315b);
        }

        /* renamed from: a */
        public void m30141a(ButtonSet buttonSet) {
            ButtonSet buttonSet2 = this.f23315b;
            if (buttonSet2 != null) {
                buttonSet2.setIsPicked(false);
            }
            this.f23315b = buttonSet;
            buttonSet.setIsPicked(true);
            notifyDataSetChanged();
            ButtonSetPickedListener buttonSetPickedListener = this.f23316c;
            if (buttonSetPickedListener != null) {
                buttonSetPickedListener.onButtonSetPicked(buttonSet);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public int getItemCount() {
            return this.f23314a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
            if (abstractC2657v instanceof ButtonSetViewHolder) {
                ((ButtonSetViewHolder) abstractC2657v).m29853a(this.f23314a[i], new ButtonSetPickedListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$sVFmxwmTqbt7BVS66jhrSX5QcYU
                    @Override // com.callapp.contacts.activity.marketplace.ButtonSetPickedListener
                    public final void onButtonSetPicked(ButtonSet buttonSet) {
                        CallScreenThemeDownloaderActivity.ButtonSetAdapter.this.m30141a(buttonSet);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new ButtonSetViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558757, viewGroup, false));
        }
    }

    /* renamed from: a */
    public static Intent m30147a(Activity activity, String str) {
        Intent intent = new Intent(activity, CallScreenThemeDownloaderActivity.class);
        intent.putExtra("EXTRA_ITEM_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static void m30146a(Activity activity, String str, Class cls, String str2) {
        Intent m30147a = m30147a(activity, str);
        m30147a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
        if (cls != null) {
            m30147a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
        }
        m30147a.putExtra(Payload.SOURCE, str2);
        activity.startActivity(m30147a);
    }

    /* renamed from: k */
    private void m30142k() {
        this.f23303o.setVisibility(8);
        this.f23303o.clearAnimation();
        this.f23305q.setVisibility(8);
        this.f23306r.setVisibility(8);
        this.f23305q.stopAnimation();
        this.f23306r.stopAnimation();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public void mo30002a(int i) {
        super.mo30002a(i);
        if (this.f23266a != 0) {
            if (!((JSONStoreCallScreenThemeItem) this.f23266a).isCustomizable() && StringUtils.m26045b((CharSequence) ((JSONStoreCallScreenThemeItem) this.f23266a).getThemeLargePreviewUrl())) {
                this.f23294e.mo21160a(VideoCacheManager.get().m26892a(((JSONStoreCallScreenThemeItem) this.f23266a).getThemeDownloadUrl()));
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23298j, ((JSONStoreCallScreenThemeItem) this.f23266a).getThemeLargePreviewUrl(), this);
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.m27013d();
            }
            ((TextView) this.f23307s.findViewById(2131364165)).setText(Activities.getString(((JSONStoreCallScreenThemeItem) this.f23266a).isPurchased() ? 2131886366 : 2131886367));
        }
    }

    /* renamed from: a */
    public void mo30057a(ButtonSet buttonSet) {
        m30145a(buttonSet, this.f23311w);
    }

    /* renamed from: a */
    public final void m30145a(ButtonSet buttonSet, boolean z) {
        if (buttonSet == null) {
            return;
        }
        this.f23296g = buttonSet;
        if (!z) {
            return;
        }
        if (buttonSet.isSingleButtonSetResource()) {
            this.f23303o.setVisibility(0);
            if (buttonSet.isGif()) {
                this.f23303o.clearAnimation();
                new GlideUtils.GifPlayer(this.f23303o.getContext(), this.f23303o, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23303o, buttonSet.getAnswerCallDrawableRes(), getApplicationContext());
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.m27013d();
                this.f23303o.startAnimation(this.f23308t);
            }
            this.f23302n.setVisibility(8);
            this.f23302n.clearAnimation();
            this.f23304p.setVisibility(8);
            this.f23305q.setVisibility(0);
            this.f23305q.startAnimation();
            this.f23306r.setVisibility(0);
            this.f23306r.startAnimation();
        } else {
            this.f23302n.setVisibility(0);
            this.f23304p.setVisibility(0);
            if (buttonSet.isGif()) {
                this.f23302n.clearAnimation();
                new GlideUtils.GifPlayer(this.f23302n.getContext(), this.f23302n, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
                new GlideUtils.GifPlayer(this.f23304p.getContext(), this.f23304p, buttonSet.getDeclineResourceUrl(), buttonSet.getDeclineCallDrawableRes(), -1, true);
            } else {
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.f23302n, buttonSet.getAnswerCallDrawableRes(), getApplicationContext());
                glideRequestBuilder2.f28251q = true;
                glideRequestBuilder2.m27013d();
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this.f23304p, buttonSet.getDeclineCallDrawableRes(), getApplicationContext());
                glideRequestBuilder3.f28251q = true;
                glideRequestBuilder3.m27013d();
                this.f23302n.startAnimation(this.f23308t);
            }
            m30142k();
        }
        setRightIconState(buttonSet);
    }

    /* renamed from: a */
    public void mo30011d(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        PersonalStoreItemDataManager.f25278a.m28916a("666666", jSONStoreCallScreenThemeItem.getThemeDownloadUrl(), Integer.MAX_VALUE, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (this.f23296g != null) {
            Prefs.f26433dy.set(this.f23296g);
        }
        AnalyticsManager.get().mo28444a(Constants.STORE, "Picked Buttons", this.f23296g.isSingleButtonSetResource() ? "Single" : "Double", 0.0d, Payload.SOURCE, this.f23269d);
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: a */
    public /* synthetic */ void mo30015a(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem, ProgressCardView progressCardView) {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$a(this, jSONStoreCallScreenThemeItem, progressCardView);
    }

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
    public /* synthetic */ void mo20305a(boolean z) {
        AbstractC10842ac.AbstractC10843a._CC.$default$a(this, z);
    }

    /* renamed from: a */
    public void mo29997a(boolean z, int i) {
        View[] viewArr;
        if (i != 3 && i != -2) {
            m30142k();
            return;
        }
        ButtonSet buttonSet = this.f23296g;
        this.f23311w = z;
        m30145a(buttonSet, z);
        if (this.f23301m == null) {
            return;
        }
        ButtonSet buttonSet2 = this.f23296g;
        for (View view : (buttonSet2 == null || !buttonSet2.isSingleButtonSetResource()) ? new View[]{this.f23295f, this.f23302n, this.f23304p} : new View[]{this.f23295f, this.f23305q, this.f23306r, this.f23303o}) {
            view.setVisibility(0);
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
            view.animate().setDuration(200L).alpha(1.0f).start();
        }
        if (i == -2) {
            this.f23295f.setVisibility(4);
            this.f23298j.animate().alpha(1.0f).setDuration(200L).start();
        } else {
            this.f23295f.setVisibility(0);
        }
        this.f23309u.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).start();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: a */
    public final /* synthetic */ boolean mo30016a(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem2 = jSONStoreCallScreenThemeItem;
        if (!Prefs.f26345cP.get().booleanValue() || Prefs.f26344cO.get().intValue() <= 0) {
            if (Prefs.f26349cT.get().intValue() > 0 && !jSONStoreCallScreenThemeItem2.isCustomizable()) {
                return true;
            }
            return (Prefs.f26350cU.get().intValue() > 0 && jSONStoreCallScreenThemeItem2.isCustomizable()) || Prefs.f26340cK.get().booleanValue() || Prefs.f26342cM.get().intValue() > 0 || PromotionManager.m28514b(getPromotionType());
        }
        return true;
    }

    /* renamed from: b */
    public JSONStoreCallScreenThemeItem mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getCallScreenTheme();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public final void mo20304b(int i) {
        mo29997a(true, i);
    }

    /* renamed from: b */
    public void mo30014b(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        Prefs.f26388dF.set(Boolean.FALSE);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public /* synthetic */ void mo20303b(boolean z) {
        AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public /* synthetic */ void mo20302b(boolean z, int i) {
        AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public /* synthetic */ void mo20301c(List list) {
        AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public /* synthetic */ void mo20300c(boolean z) {
        AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: c */
    public /* synthetic */ void mo20299c(boolean z, int i) {
        AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: c */
    public /* synthetic */ boolean mo30013c() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$c(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: c */
    public final /* synthetic */ String[] mo30012c(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        return new String[]{jSONStoreCallScreenThemeItem.getThemeDownloadUrl()};
    }

    /* renamed from: d */
    protected void mo29993d() {
        findViewById(2131363651).getBackground().setAlpha(179);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131362183);
        this.f23297h = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        this.f23297h.setAdapter(new ButtonSetAdapter(new ButtonSetPickedListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$Vcn7IpstPHGctXJjBp_IOYuSuCs
            @Override // com.callapp.contacts.activity.marketplace.ButtonSetPickedListener
            public final void onButtonSetPicked(ButtonSet buttonSet) {
                CallScreenThemeDownloaderActivity.this.mo30057a(buttonSet);
            }
        }));
        this.f23297h.m40480a(new HorizontalSpaceItemDecoration(getResources().getDimensionPixelOffset(2131165552)), -1);
        this.f23307s.setVisibility(0);
        this.f23307s.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.f23307s.animate().alpha(1.0f).setStartDelay(3000L).setDuration(300L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CallScreenThemeDownloaderActivity.this.f23307s != null) {
                    CallScreenThemeDownloaderActivity.this.f23307s.animate().alpha(BitmapDescriptorFactory.HUE_RED).setStartDelay(3000L).setDuration(300L).start();
                }
            }
        }).start();
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: d */
    public /* synthetic */ void mo20298d(int i) {
        AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: e */
    public void mo30010e() {
        FeedbackManager.get().m28670a("Download button clicked", 80);
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: e */
    public /* synthetic */ void mo20297e(int i) {
        AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: f */
    public void mo30009f() {
        FeedbackManager.get().m28670a("Download finished", 80);
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            PopupManager.get().m28209a(this, new DefaultDialerDialogPopup(Activities.getString(2131886455), "", 2131230977));
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: f */
    public /* synthetic */ void mo20296f(int i) {
        AbstractC10842ac.AbstractC10843a._CC.$default$f(this, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: g */
    public void mo30008g() {
        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE;
        C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
        PersonalStoreItemUrlData m28909c = PersonalStoreItemDataManager.Companion.m28909c("666666", personalStoreItemType);
        if (m28909c != null) {
            PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f25278a;
            PersonalStoreItemDataManager.Companion.m28918a(m28909c, personalStoreItemType);
        }
        FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131886459)), (Integer) null);
        m30153o_();
    }

    public CallIncomingIndicatorView getArrowAnswer() {
        return this.f23305q;
    }

    public CallIncomingIndicatorView getArrowHang() {
        return this.f23306r;
    }

    public View getButtonSetContainer() {
        return this.f23310v;
    }

    public ImageView getCallerIdHeaderImage() {
        return this.f23301m;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    DownloaderCardViewHandler.DownloaderCardEvents getDownloaderListenerEvents() {
        return this;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public int getItemType() {
        return DownloaderCardViewHandler.StoreItemType.CALL_SCREEN.ordinal();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558437;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public /* synthetic */ String getLeftButtonPrefixText() {
        return DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$getLeftButtonPrefixText(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public Promotion.ProductType getPromotionType() {
        return Promotion.ProductType.CALL_SCREEN;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public BooleanPref getPurchasePref() {
        return Prefs.f26429du;
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: h */
    public final boolean mo30007h() {
        return Prefs.f26429du.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: i */
    public final void mo30006i() {
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isLightTheme() {
        return ((ThemeState) Prefs.f26417di.get()).isLightTheme();
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public boolean isSkuInUse() {
        return StringUtils.m26057a(Prefs.f26429du.get(), ((JSONStoreCallScreenThemeItem) this.f23266a).getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: j */
    public /* synthetic */ void mo30005j() {
        DownloaderCardViewHandler.DownloaderCardEvents._CC.$default$j(this);
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        PlayerView playerView = this.f23295f;
        if (playerView != null && playerView.getVisibility() == 0) {
            this.f23295f.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CallScreenThemeDownloaderActivity.this.f23295f.setVisibility(8);
                    CallScreenThemeDownloaderActivity.this.f23301m.setVisibility(8);
                }
            }).start();
        }
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23269d = intent.getStringExtra(Payload.SOURCE);
        }
        AnalyticsManager.get().mo28441b(Constants.CALL_SCREEN_THEME_DOWNLOAD_ACTIVITY);
        AnalyticsManager.get().mo28444a(Constants.STORE, "Enter to call screens page", (String) null, 0.0d, Payload.SOURCE, this.f23269d);
        this.f23294e = CallAppExoPlayerFactory.m26899a();
        this.f23308t = AnimationUtils.loadAnimation(getApplicationContext(), 2130772005);
        PlayerView playerView = (PlayerView) findViewById(2131363524);
        this.f23295f = playerView;
        playerView.setShutterBackgroundColor(0);
        View findViewById = findViewById(2131363504);
        this.f23298j = (ImageView) findViewById(2131364517);
        this.f23310v = findViewById(2131362187);
        ProgressBar progressBar = (ProgressBar) findViewById(2131363574);
        this.f23309u = progressBar;
        Drawable mutate = progressBar.getIndeterminateDrawable().mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.f23309u.setIndeterminateDrawable(mutate);
        this.f23309u.setIndeterminate(true);
        CallIncomingIndicatorView callIncomingIndicatorView = (CallIncomingIndicatorView) findViewById(2131362025);
        CallIncomingIndicatorView callIncomingIndicatorView2 = (CallIncomingIndicatorView) findViewById(2131362026);
        CallIncomingIndicatorView callIncomingIndicatorView3 = (CallIncomingIndicatorView) findViewById(2131362023);
        CallIncomingIndicatorView callIncomingIndicatorView4 = (CallIncomingIndicatorView) findViewById(2131362024);
        if (Prefs.f26493fE.get().booleanValue()) {
            callIncomingIndicatorView3.setVisibility(8);
            callIncomingIndicatorView.setVisibility(8);
            this.f23305q = callIncomingIndicatorView4;
            this.f23306r = callIncomingIndicatorView2;
        } else {
            callIncomingIndicatorView4.setVisibility(8);
            callIncomingIndicatorView2.setVisibility(8);
            this.f23305q = callIncomingIndicatorView3;
            this.f23306r = callIncomingIndicatorView;
        }
        this.f23295f.setResizeMode(4);
        this.f23301m = (ImageView) findViewById(2131362950);
        this.f23294e.mo21167a(this);
        this.f23295f.setPlayer(this.f23294e);
        View findViewById2 = findViewById(2131362188);
        this.f23307s = findViewById2;
        findViewById2.setVisibility(8);
        this.f23302n = (ImageView) findViewById(2131362152);
        this.f23304p = (ImageView) findViewById(2131362159);
        this.f23303o = (ImageView) findViewById(2131362168);
        findViewById.setVisibility(0);
        this.f23295f.setVisibility(8);
        this.f23305q.setVisibility(8);
        this.f23306r.setVisibility(8);
        this.f23302n.setVisibility(8);
        this.f23304p.setVisibility(8);
        this.f23303o.setVisibility(8);
        mo29993d();
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().mo28444a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_SCREEN_THEME_DOWNLOAD_ACTIVITY, 0.0d, Payload.SOURCE, this.f23269d);
        AbstractC11168m abstractC11168m = this.f23294e;
        if (abstractC11168m != null) {
            abstractC11168m.mo21144b(this);
            this.f23294e.mo21113w();
            this.f23294e = null;
        }
        View view = this.f23307s;
        if (view != null) {
            view.clearAnimation();
            this.f23307s = null;
        }
        ImageView imageView = this.f23303o;
        if (imageView != null) {
            imageView.clearAnimation();
        }
        ImageView imageView2 = this.f23302n;
        if (imageView2 != null) {
            imageView2.clearAnimation();
        }
        PlayerView playerView = this.f23295f;
        if (playerView != null && playerView.f37964a != null) {
            this.f23295f.f37964a.removeAllViews();
        }
        RecyclerView recyclerView = this.f23297h;
        if (recyclerView != null) {
            recyclerView.setAdapter(null);
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AbstractC11168m abstractC11168m = this.f23294e;
        if (abstractC11168m != null) {
            abstractC11168m.mo21934e();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f23266a == 0 || this.f23294e.mo21115u()) {
            return;
        }
        this.f23295f.setVisibility(0);
        this.f23301m.setVisibility(0);
        AbstractC11168m abstractC11168m = this.f23294e;
        if (abstractC11168m == null) {
            return;
        }
        abstractC11168m.mo21127j();
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

    protected void setRightIconState(ButtonSet buttonSet) {
        if (this.f23266a != 0 && ((JSONStoreCallScreenThemeItem) this.f23266a).isPurchased()) {
            if (buttonSet == Prefs.f26433dy.get()) {
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                if (StringUtils.m26024h(PersonalStoreItemDataManager.Companion.m28910c(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                    getProgressCardView().setRightButtonText(Activities.getString(2131887027));
                }
            }
            getProgressCardView().setRightButtonText(Activities.getString(2131888124));
            getProgressCardView().m26669a(false);
        }
        Prefs.f26433dy.set(buttonSet);
    }
}

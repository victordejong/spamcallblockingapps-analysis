package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoResultListener;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.TopBarUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0003\u0018�� S2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001SB\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020)H\u0014J\b\u0010+\u001a\u00020,H\u0016J\b\u0010-\u001a\u0004\u0018\u00010.J\n\u0010/\u001a\u0004\u0018\u000100H\u0016J\b\u00101\u001a\u00020)H\u0014J\b\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u000203H\u0016J\u0010\u00105\u001a\u0002032\u0006\u00106\u001a\u00020\u0006H\u0016J\u0012\u00107\u001a\u0002032\b\u00108\u001a\u0004\u0018\u000109H\u0014J\b\u0010:\u001a\u000203H\u0016J\b\u0010;\u001a\u000203H\u0016J\u0010\u0010<\u001a\u0002032\u0006\u0010=\u001a\u00020)H\u0014J\u0016\u0010>\u001a\u0002032\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J\u0010\u0010@\u001a\u0002032\u0006\u0010A\u001a\u00020\u001fH\u0017J \u0010B\u001a\u0002032\u0006\u0010C\u001a\u00020)2\u0006\u0010D\u001a\u00020)2\u0006\u0010E\u001a\u00020FH\u0016J\u0012\u0010G\u001a\u0002032\b\u0010H\u001a\u0004\u0018\u00010IH\u0016J\b\u0010J\u001a\u000203H\u0014J\u0010\u0010K\u001a\u0002032\u0006\u0010L\u001a\u00020%H\u0002J\u0010\u0010M\u001a\u0002032\u0006\u0010N\u001a\u00020%H\u0002J\u0012\u0010O\u001a\u0002032\b\u0010P\u001a\u0004\u0018\u00010QH\u0016J\b\u0010R\u001a\u00020%H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006T"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/CoverDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;", "()V", "addCustomFrame", "Landroid/view/View;", "getAddCustomFrame", "()Landroid/view/View;", "setAddCustomFrame", "(Landroid/view/View;)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "personalCoverFragment", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "getPersonalCoverFragment", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "setPersonalCoverFragment", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V", "personalCoverImage", "Landroid/widget/ImageView;", "getPersonalCoverImage", "()Landroid/widget/ImageView;", "setPersonalCoverImage", "(Landroid/widget/ImageView;)V", "personalCoverUrlDataList", "", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "getPersonalCoverUrlDataList", "()Ljava/util/List;", "setPersonalCoverUrlDataList", "(Ljava/util/List;)V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "getItemType", "", "getLayoutResourceId", "getLeftButtonPrefixText", "", "getPriceText", "Landroid/text/SpannableString;", "getPurchasePref", "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "getStatusBarColor", "onBackPressed", "", "onBackToDefaultButtonClicked", "onChildViewAttachedToWindow", "view", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDownloadButtonClicked", "onDownloadedFinished", "onItemStoreAvailable", "timePassed", "onPersonalStoreItemDataChanged", "personalStoreItemUrlDataList", "onPersonalStoreItemItemSelected", "personalStoreItemUrlData", "onResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onUseButtonClicked", "storeItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;", "setActionBarCustomView", "setActionBarView", "isPersonalCoverExist", "setChooseImageButton", "isAnyVideoRingtone", "setTitle", "title", "", "showBackToDefaultButton", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity.class */
public final class PersonalCoverThemeDownloaderActivity extends CoverDownloaderActivity implements AssignVideoResultListener, PersonalStoreItemFragmentDelegate {

    /* renamed from: f */
    public static final Companion f23478f = new Companion(null);

    /* renamed from: e */
    public View f23479e;

    /* renamed from: g */
    private PersonalStoreItemFragment f23480g = PersonalStoreItemFragment.Companion.m29862a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER);

    /* renamed from: h */
    private List<? extends PersonalStoreItemUrlData> f23481h;

    /* renamed from: j */
    private GestureDetector f23482j;

    /* renamed from: k */
    private ImageView f23483k;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ<\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b¨\u0006\u0010"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion;", "", "()V", "createPersonalIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, "", "show", "", "returnPrevious", "Ljava/lang/Class;", "chooseCoverOnStart", "Landroid/net/Uri;", Payload.SOURCE, "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCoverThemeDownloaderActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static Intent m30051a(Context context, String str) {
            Intent intent = new Intent(context, PersonalCoverThemeDownloaderActivity.class);
            intent.putExtra("EXTRA_ITEM_ID", str);
            return intent;
        }

        /* renamed from: a */
        public static void m30050a(Context context, String str, Class<?> cls, String str2) {
            C18524p.m3840d(context, "context");
            Intent m30051a = m30051a(context, str);
            m30051a.putExtra("ACTIVITY_SOURCE", context.getClass().getSimpleName());
            if (cls != null) {
                m30051a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
            }
            m30051a.putExtra("EXTRA_START_CHOOSE", (Parcelable) null);
            m30051a.putExtra(Payload.SOURCE, str2);
            Activities.m27656b(context, m30051a);
        }
    }

    public PersonalCoverThemeDownloaderActivity() {
        PersonalStoreItemFragment.Companion companion = PersonalStoreItemFragment.f23745b;
    }

    private final void setActionBarView(boolean z) {
        View mo46235b;
        View mo46235b2;
        if (!z) {
            TopBarUtils.m27365a(this, getSupportActionBar(), getTopBarTitleType(), 2131558429);
            return;
        }
        final ActionBar m27365a = TopBarUtils.m27365a(this, getSupportActionBar(), getTopBarTitleType(), 2131558430);
        JSONStoreItemCover jSONStoreItemCover = (JSONStoreItemCover) this.f23266a;
        if (jSONStoreItemCover == null) {
            return;
        }
        View findViewById = (m27365a == null || (mo46235b2 = m27365a.mo46235b()) == null) ? null : mo46235b2.findViewById(2131361943);
        ImageView imageView = (m27365a == null || (mo46235b = m27365a.mo46235b()) == null) ? null : (ImageView) mo46235b.findViewById(2131361941);
        if (jSONStoreItemCover.isPurchased()) {
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (imageView != null) {
                imageView.setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
            }
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            if (imageView == null) {
                return;
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Icon clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER) + ", screen - Add personal store item  from top bar icon");
                    PersonalStoreItemFragment.m29877a(PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment(), true, null, null, 0, false, 22);
                }
            });
            return;
        }
        if (findViewById != null) {
            findViewById.setVisibility(0);
        }
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        TextView textView = null;
        if (m27365a != null) {
            View mo46235b3 = m27365a.mo46235b();
            textView = null;
            if (mo46235b3 != null) {
                textView = (TextView) mo46235b3.findViewById(2131363555);
            }
        }
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100093));
        }
        if (textView != null) {
            textView.setText(getPriceText());
        }
        if (findViewById == null) {
            return;
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProgressCardView progressCardView;
                View upperView;
                ProgressCardView progressCardView2;
                DownloaderCardViewHandler cardView = PersonalCoverThemeDownloaderActivity.this.getCardView();
                if (cardView != null && (progressCardView2 = cardView.getProgressCardView()) != null) {
                    progressCardView2.m26671a();
                }
                DownloaderCardViewHandler cardView2 = PersonalCoverThemeDownloaderActivity.this.getCardView();
                if (cardView2 == null || (progressCardView = cardView2.getProgressCardView()) == null || (upperView = progressCardView.getUpperView()) == null) {
                    return;
                }
                upperView.setVisibility(8);
            }
        });
    }

    private final void setChooseImageButton(boolean z) {
        DefaultInterfaceImplUtils.ClickListener clickListener;
        View view = this.f23479e;
        if (view == null) {
            C18524p.m3848a("addCustomFrame");
        }
        View findViewById = view.findViewById(2131361980);
        View view2 = this.f23479e;
        if (view2 == null) {
            C18524p.m3848a("addCustomFrame");
        }
        TextView textViewContainer = (TextView) view2.findViewById(2131361979);
        View view3 = this.f23479e;
        if (view3 == null) {
            C18524p.m3848a("addCustomFrame");
        }
        ImageView plusIcon = (ImageView) view3.findViewById(2131363526);
        C18524p.m3843b(plusIcon, "plusIcon");
        plusIcon.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
        if (!z) {
            plusIcon.setImageResource(2131231417);
            C18524p.m3843b(textViewContainer, "textViewContainer");
            textViewContainer.setVisibility(0);
            textViewContainer.setText(Activities.getString(2131886216));
            clickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity$setChooseImageButton$1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view4) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Button clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER) + ", screen - Add personal store item button");
                    PersonalStoreItemFragment.m29877a(PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment(), true, null, null, 0, false, 22);
                }
            };
        } else {
            plusIcon.setImageResource(2131231865);
            C18524p.m3843b(textViewContainer, "textViewContainer");
            textViewContainer.setVisibility(8);
            clickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity$setChooseImageButton$2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view4) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "Button clicked", PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER) + ", - edit personal store item button");
                    String selectedItemUrl = PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment().getSelectedItemUrl();
                    if (StringUtils.m26024h(selectedItemUrl)) {
                        PersonalStoreItemFragment.m29877a(PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment(), false, null, null, 2, false, 22);
                        return;
                    }
                    PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment().setCoverFilePath(selectedItemUrl);
                    PersonalStoreItemFragment.m29877a(PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment(), false, null, null, 3, true, 6);
                }
            };
        }
        findViewById.setOnClickListener(clickListener);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    /* renamed from: a */
    public final void mo30003a() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        if (!this.f23480g.isAdded()) {
            getSupportFragmentManager().m43765a().m43535b(2131364518, this.f23480g, "PersonalStoreItemFragment").mo43536b();
        }
        Boolean bool = Prefs.f26385dC.get();
        C18524p.m3843b(bool, "Prefs.personalCoverScreenFirstTime.get()");
        if (bool.booleanValue()) {
            JSONStoreItemCover jSONStoreItemCover = (JSONStoreItemCover) this.f23266a;
            if (jSONStoreItemCover != null && jSONStoreItemCover.isPurchased()) {
                Prefs.f26384dB.set(Boolean.TRUE);
            }
            PersonalStoreItemHelper personalStoreItemHelper = PersonalStoreItemHelper.f23491a;
            String string = Activities.getString(2131886267);
            C18524p.m3843b(string, "Activities.getString(R.s…assign_description_cover)");
            PersonalStoreItemHelper.m30048a(this, string, 2131232000);
            Prefs.f26385dC.set(Boolean.FALSE);
        }
        super.mo30002a(i);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoResultListener
    /* renamed from: a */
    public final void mo29898a(int i, Intent data) {
        C18524p.m3840d(data, "data");
        this.f23480g.onActivityResult(i, -1, data);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    /* renamed from: a */
    public final void mo29861a(View view) {
        C18524p.m3840d(view, "view");
        PersonalStoreItemUrlData selectedStoreItemUrlData = this.f23480g.getSelectedStoreItemUrlData();
        if (selectedStoreItemUrlData != null) {
            mo29860a(selectedStoreItemUrlData);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity
    /* renamed from: a */
    public final void mo30052a(JSONStoreItemCover jSONStoreItemCover) {
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    /* renamed from: a */
    public final void mo29860a(PersonalStoreItemUrlData personalStoreItemUrlData) {
        C18524p.m3840d(personalStoreItemUrlData, "personalStoreItemUrlData");
        int type = personalStoreItemUrlData.getType();
        if (type == Integer.MIN_VALUE || type == 100) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23483k, personalStoreItemUrlData.getPersonalStoreItemUrl(), this);
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
            setChooseImageButton(false);
        } else if (type == Integer.MAX_VALUE || type == 0 || type == 1) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.f23483k, personalStoreItemUrlData.getPersonalStoreItemUrl(), this);
            glideRequestBuilder2.f28251q = true;
            glideRequestBuilder2.f28253s = true;
            glideRequestBuilder2.m27013d();
            setChooseImageButton(true);
        } else {
            ImageView imageView = this.f23483k;
            JsonStoreItem storeItem = this.f23266a;
            C18524p.m3843b(storeItem, "storeItem");
            GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(imageView, ((JSONStoreItemCover) storeItem).getUrl(), this);
            glideRequestBuilder3.f28251q = true;
            glideRequestBuilder3.m27013d();
            setChooseImageButton(false);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    /* renamed from: b */
    public final void mo29859b(List<? extends PersonalStoreItemUrlData> personalStoreItemUrlDataList) {
        ProgressCardView progressCardView;
        ProgressCardView progressCardView2;
        C18524p.m3840d(personalStoreItemUrlDataList, "personalStoreItemUrlDataList");
        this.f23481h = personalStoreItemUrlDataList;
        List<? extends PersonalStoreItemUrlData> list = personalStoreItemUrlDataList;
        if (!list.isEmpty()) {
            DownloaderCardViewHandler cardView = getCardView();
            if (cardView != null && (progressCardView2 = cardView.getProgressCardView()) != null) {
                progressCardView2.setVisibility(8);
            }
            PersonalStoreItemUrlData selectedStoreItemUrlData = this.f23480g.getSelectedStoreItemUrlData();
            if (selectedStoreItemUrlData != null) {
                mo29860a(selectedStoreItemUrlData);
            }
        } else {
            JSONStoreItemCover jSONStoreItemCover = (JSONStoreItemCover) this.f23266a;
            if (jSONStoreItemCover != null) {
                mo29860a(new PersonalStoreItemUrlData(jSONStoreItemCover.getUrl(), VastError.ERROR_CODE_GENERAL_WRAPPER, PersonalStoreItemUrlData.PersonalStoreItemType.COVER));
                DownloaderCardViewHandler cardView2 = getCardView();
                if (cardView2 != null && (progressCardView = cardView2.getProgressCardView()) != null) {
                    progressCardView.setVisibility(0);
                }
            }
        }
        setActionBarView(!list.isEmpty());
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo30011d(JSONStoreItemCover jSONStoreItemCover) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        if (motionEvent != null && (gestureDetector = this.f23482j) != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: e */
    public final void mo30010e() {
        ProgressCardView progressCardView;
        setActionBarView(false);
        DownloaderCardViewHandler cardView = getCardView();
        if (cardView != null && (progressCardView = cardView.getProgressCardView()) != null) {
            progressCardView.setVisibility(0);
        }
        super.mo30010e();
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: f */
    public final void mo30009f() {
        super.mo30009f();
        List<? extends PersonalStoreItemUrlData> list = this.f23481h;
        if (list != null) {
            mo29859b(list);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: g */
    public final void mo30008g() {
        Prefs.f26396dN.set(null);
        FeedbackManager.get().m28669a(Activities.m27697a(2131887637, Activities.getString(2131886673)), (Integer) null);
        m30153o_();
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final int getItemType() {
        return DownloaderCardViewHandler.StoreItemType.PERSONAL_COVER.ordinal();
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 2131558459;
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final String getLeftButtonPrefixText() {
        String string = Activities.getString(2131886815);
        C18524p.m3843b(string, "Activities.getString(R.string.enable_for)");
        return string;
    }

    public final PersonalStoreItemFragment getPersonalCoverFragment() {
        return this.f23480g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.f26351cV.get().intValue() <= 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.text.SpannableString getPriceText() {
        /*
            r6 = this;
            r0 = r6
            JsonStoreItem extends com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance r0 = r0.f23266a
            com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover r0 = (com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto Lce
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26344cO
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L39
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26351cV
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L39
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26342cM
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 <= 0) goto L83
        L39:
            r0 = r6
            JsonStoreItem extends com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance r0 = r0.f23266a
            com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover r0 = (com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover) r0
            float r0 = r0.getPrice()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L83
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26342cM
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L7e
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26345cP
            java.lang.Object r0 = r0.get()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Prefs.allStoreFree.get()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r8
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L7e
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26351cV
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 <= 0) goto L83
        L7e:
            r0 = 1
            r9 = r0
            goto L85
        L83:
            r0 = 0
            r9 = r0
        L85:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.getLeftButtonPrefixText()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.getPriceWithCurrency()
            java.lang.StringBuilder r0 = r0.append(r1)
            android.text.SpannableString r0 = new android.text.SpannableString
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            r1.<init>(r2)
            r7 = r0
            r0 = r9
            if (r0 == 0) goto Lcc
            r0 = r7
            android.text.style.StrikethroughSpan r1 = new android.text.style.StrikethroughSpan
            r2 = r1
            r2.<init>()
            r2 = 0
            r3 = r7
            int r3 = r3.length()
            r4 = 33
            r0.setSpan(r1, r2, r3, r4)
        Lcc:
            r0 = r7
            return r0
        Lce:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity.getPriceText():android.text.SpannableString");
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final BooleanPref getPurchasePref() {
        return Prefs.f26384dB;
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getStatusBarColor() {
        return ThemeUtils.getColor(2131099784);
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    /* renamed from: h */
    public final boolean mo30007h() {
        return false;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        JSONStoreItemCover jSONStoreItemCover = (JSONStoreItemCover) this.f23266a;
        if (jSONStoreItemCover == null) {
            super.onBackPressed();
        } else if (jSONStoreItemCover.isPurchased() || CollectionUtils.m26076a(this.f23481h)) {
            super.onBackPressed();
        } else {
            PersonalStoreItemHelper personalStoreItemHelper = PersonalStoreItemHelper.f23491a;
            PersonalCoverThemeDownloaderActivity personalCoverThemeDownloaderActivity = this;
            DownloaderCardViewHandler cardView = getCardView();
            PersonalStoreItemHelper.m30049a(personalCoverThemeDownloaderActivity, cardView != null ? cardView.getProgressCardView() : null, getPriceText(), PersonalStoreItemUrlData.PersonalStoreItemType.COVER);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CoverDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23269d = intent.getStringExtra(Payload.SOURCE);
        }
        View m27302b = ViewUtils.m27302b(findViewById(2131361989));
        C18524p.m3843b(m27302b, "ViewUtils.inflateViewIfN…d.add_personal_viewstub))");
        this.f23479e = m27302b;
        if (m27302b == null) {
            C18524p.m3848a("addCustomFrame");
        }
        ViewUtils.m27299b(m27302b, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
        this.f23482j = new GestureDetector(this, new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.MEDIUM) { // from class: com.callapp.contacts.activity.marketplace.PersonalCoverThemeDownloaderActivity$onCreate$1
            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: a */
            public final boolean mo26556a(float f) {
                PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment().m29886a();
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: b */
            public final boolean mo26554b(float f) {
                PersonalCoverThemeDownloaderActivity.this.getPersonalCoverFragment().m29873b();
                return true;
            }
        });
        this.f23483k = (ImageView) findViewById(2131363496);
        showActionBar(true);
        android.app.ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.show();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, android.app.Activity
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(Activities.getString(2131887904));
    }
}

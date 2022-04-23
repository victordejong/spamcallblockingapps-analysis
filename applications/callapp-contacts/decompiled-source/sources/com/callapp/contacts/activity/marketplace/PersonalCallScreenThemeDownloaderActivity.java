package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
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
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoResultListener;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate;
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
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.m;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\r\n\u0002\b\u0002\u0018�� R2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001RB\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020&H\u0014J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u0004\u0018\u00010+J\n\u0010,\u001a\u0004\u0018\u00010-H\u0016J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020/H\u0016J\u0012\u00101\u001a\u00020/2\b\u00102\u001a\u0004\u0018\u000103H\u0014J\u0010\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020\u0006H\u0016J\u0012\u00106\u001a\u00020/2\b\u00107\u001a\u0004\u0018\u000108H\u0014J\b\u00109\u001a\u00020/H\u0016J\b\u0010:\u001a\u00020/H\u0016J\u0010\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020&H\u0014J\u0016\u0010=\u001a\u00020/2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016J\u0010\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u0013H\u0017J \u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020&2\u0006\u0010B\u001a\u00020&2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020GH\u0016J\u0012\u0010H\u001a\u00020/2\b\u0010F\u001a\u0004\u0018\u00010GH\u0016J\b\u0010I\u001a\u00020/H\u0014J\u0010\u0010J\u001a\u00020/2\u0006\u0010K\u001a\u00020\"H\u0002J\u0010\u0010L\u001a\u00020/2\u0006\u0010M\u001a\u00020\"H\u0002J\u0010\u0010N\u001a\u00020/2\u0006\u00102\u001a\u000203H\u0014J\u0012\u0010O\u001a\u00020/2\b\u0010P\u001a\u0004\u0018\u00010QH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\b\"\u0004\b\u001a\u0010\nR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006S"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoResultListener;", "()V", "addCustomFrame", "Landroid/view/View;", "getAddCustomFrame", "()Landroid/view/View;", "setAddCustomFrame", "(Landroid/view/View;)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "personalStoreItemUrlDataList", "", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "getPersonalStoreItemUrlDataList", "()Ljava/util/List;", "setPersonalStoreItemUrlDataList", "(Ljava/util/List;)V", "recyclerviewContainer", "getRecyclerviewContainer", "setRecyclerviewContainer", "videoRingtoneFragment", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "getVideoRingtoneFragment", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "setVideoRingtoneFragment", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "getItemType", "", "getLayoutResourceId", "getLeftButtonPrefixText", "", "getPriceText", "Landroid/text/SpannableString;", "getPurchasePref", "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "onBackPressed", "", "onBackToDefaultButtonClicked", "onButtonSetPicked", "buttonSet", "Lcom/callapp/contacts/activity/marketplace/ButtonSet;", "onChildViewAttachedToWindow", "view", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDownloadButtonClicked", "onDownloadedFinished", "onItemStoreAvailable", "timePassed", "onPersonalStoreItemDataChanged", "onPersonalStoreItemItemSelected", "personalStoreItemUrlData", "onResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onStoreItemPurchased", "storeItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;", "onUseButtonClicked", "setActionBarCustomView", "setActionBarView", "isVideoExist", "setChooseImageButton", "isAnyVideoRingtone", "setRightIconState", "setTitle", "title", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity.class */
public final class PersonalCallScreenThemeDownloaderActivity extends CallScreenThemeDownloaderActivity implements AssignVideoResultListener, PersonalStoreItemFragmentDelegate {
    public static final Companion n = new Companion(null);
    public View m;
    private PersonalStoreItemFragment o = PersonalStoreItemFragment.Companion.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
    private List<? extends PersonalStoreItemUrlData> p;
    private GestureDetector q;
    private View r;

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ<\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b¨\u0006\u0010"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;", "", "()V", "createPersonalIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, "", "show", "", "returnPrevious", "Ljava/lang/Class;", "chooseVideoOnStart", "Landroid/net/Uri;", Payload.SOURCE, "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Intent a(Context context, String str) {
            Intent intent = new Intent(context, PersonalCallScreenThemeDownloaderActivity.class);
            intent.putExtra("EXTRA_ITEM_ID", str);
            return intent;
        }

        public static void a(Context context, String str, Class<?> cls, Uri uri, String str2) {
            p.d(context, "context");
            Intent a2 = a(context, str);
            a2.putExtra("ACTIVITY_SOURCE", context.getClass().getSimpleName());
            if (cls != null) {
                a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
            }
            a2.putExtra("EXTRA_START_CHOOSE", uri);
            a2.putExtra(Payload.SOURCE, str2);
            Activities.b(context, a2);
        }
    }

    public PersonalCallScreenThemeDownloaderActivity() {
        PersonalStoreItemFragment.Companion companion = PersonalStoreItemFragment.f13358b;
    }

    private final void setActionBarView(boolean z) {
        View b2;
        View b3;
        if (z) {
            final ActionBar a2 = TopBarUtils.a(this, getSupportActionBar(), getTopBarTitleType(), 2131558430);
            JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
            if (jSONStoreCallScreenThemeItem != null) {
                View findViewById = (a2 == null || (b3 = a2.b()) == null) ? null : b3.findViewById(2131361943);
                ImageView imageView = (a2 == null || (b2 = a2.b()) == null) ? null : (ImageView) b2.findViewById(2131361941);
                if (jSONStoreCallScreenThemeItem.isPurchased()) {
                    if (imageView != null) {
                        imageView.setVisibility(0);
                    }
                    if (imageView != null) {
                        imageView.setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
                    }
                    if (findViewById != null) {
                        findViewById.setVisibility(8);
                    }
                    if (imageView != null) {
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                AnalyticsManager analyticsManager = AnalyticsManager.get();
                                analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Icon clicked", PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", Add personal store item  from top bar icon");
                                PersonalStoreItemFragment.a(PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment(), true, null, null, 0, false, 22);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
                TextView textView = null;
                if (a2 != null) {
                    View b4 = a2.b();
                    textView = null;
                    if (b4 != null) {
                        textView = (TextView) b4.findViewById(2131363555);
                    }
                }
                if (textView != null) {
                    textView.setTextColor(ThemeUtils.getColor(2131100093));
                }
                if (textView != null) {
                    textView.setText(getPriceText());
                }
                if (findViewById != null) {
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ProgressCardView progressCardView;
                            View upperView;
                            ProgressCardView progressCardView2;
                            DownloaderCardViewHandler cardView = PersonalCallScreenThemeDownloaderActivity.this.getCardView();
                            if (!(cardView == null || (progressCardView2 = cardView.getProgressCardView()) == null)) {
                                progressCardView2.a();
                            }
                            DownloaderCardViewHandler cardView2 = PersonalCallScreenThemeDownloaderActivity.this.getCardView();
                            if (cardView2 != null && (progressCardView = cardView2.getProgressCardView()) != null && (upperView = progressCardView.getUpperView()) != null) {
                                upperView.setVisibility(8);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        TopBarUtils.a(this, getSupportActionBar(), getTopBarTitleType(), 2131558429);
    }

    private final void setChooseImageButton(boolean z) {
        DefaultInterfaceImplUtils.ClickListener clickListener;
        View view = this.m;
        if (view == null) {
            p.a("addCustomFrame");
        }
        View findViewById = view.findViewById(2131361980);
        View view2 = this.m;
        if (view2 == null) {
            p.a("addCustomFrame");
        }
        TextView textViewContainer = (TextView) view2.findViewById(2131361979);
        View view3 = this.m;
        if (view3 == null) {
            p.a("addCustomFrame");
        }
        ImageView plusIcon = (ImageView) view3.findViewById(2131363526);
        p.b(plusIcon, "plusIcon");
        plusIcon.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN));
        if (!z) {
            plusIcon.setImageResource(2131231417);
            p.b(textViewContainer, "textViewContainer");
            textViewContainer.setVisibility(0);
            textViewContainer.setText(Activities.getString(2131886217));
            clickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view4) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Button clicked", PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", Add personal store item button");
                    PersonalStoreItemFragment.a(PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment(), true, null, null, 0, false, 22);
                }
            };
        } else {
            plusIcon.setImageResource(2131231865);
            p.b(textViewContainer, "textViewContainer");
            textViewContainer.setVisibility(8);
            clickListener = new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$setChooseImageButton$2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view4) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "Button clicked", PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + "edit personal store item button");
                    Uri selectedItemUri = PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment().getSelectedItemUri();
                    String str = null;
                    if (StringUtils.h(selectedItemUri != null ? selectedItemUri.toString() : null)) {
                        PersonalStoreItemFragment.a(PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment(), false, null, null, 2, false, 22);
                        return;
                    }
                    PersonalStoreItemFragment videoRingtoneFragment = PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment();
                    if (selectedItemUri != null) {
                        str = selectedItemUri.getLastPathSegment();
                    }
                    PersonalStoreItemFragment.a(videoRingtoneFragment, false, str, null, 3, false, 20);
                }
            };
        }
        findViewById.setOnClickListener(clickListener);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    public final void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public final void a(int i) {
        if (!this.o.isAdded()) {
            getSupportFragmentManager().a().b(2131364518, this.o, "PersonalStoreItemFragment").b();
        }
        Boolean bool = Prefs.dt.get();
        p.b(bool, "Prefs.personalCallScreenFirstTime.get()");
        if (bool.booleanValue()) {
            JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
            if (jSONStoreCallScreenThemeItem != null && jSONStoreCallScreenThemeItem.isPurchased()) {
                Prefs.dv.set(Boolean.TRUE);
            }
            PersonalStoreItemHelper personalStoreItemHelper = PersonalStoreItemHelper.f13195a;
            String string = Activities.getString(2131886266);
            p.b(string, "Activities.getString(R.string.assign_description)");
            PersonalStoreItemHelper.a(this, string, 2131231999);
            Prefs.dt.set(Boolean.FALSE);
        }
        super.a(i);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignVideoResultListener
    public final void a(int i, Intent data) {
        p.d(data, "data");
        this.o.onActivityResult(i, -1, data);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    public final void a(View view) {
        p.d(view, "view");
        PersonalStoreItemUrlData selectedStoreItemUrlData = this.o.getSelectedStoreItemUrlData();
        if (selectedStoreItemUrlData != null) {
            a(selectedStoreItemUrlData);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void a(ButtonSet buttonSet) {
        a(buttonSet, true);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void a(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    public final void a(PersonalStoreItemUrlData personalStoreItemUrlData) {
        p.d(personalStoreItemUrlData, "personalStoreItemUrlData");
        int type = personalStoreItemUrlData.getType();
        if (type == Integer.MIN_VALUE || type == 100) {
            a(false, this.k);
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.j, personalStoreItemUrlData.getPersonalStoreItemUrl(), this);
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
        } else if (type == Integer.MAX_VALUE || type == 0 || type == 1) {
            m mVar = this.e;
            if (mVar != null) {
                mVar.b(VideoCacheManager.get().a(personalStoreItemUrlData.getPersonalStoreItemUrl()));
            }
            m mVar2 = this.e;
            if (mVar2 != null) {
                mVar2.q();
            }
            setChooseImageButton(true);
            return;
        } else {
            m mVar3 = this.e;
            if (mVar3 != null) {
                VideoCacheManager videoCacheManager = VideoCacheManager.get();
                JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
                mVar3.b(videoCacheManager.a(jSONStoreCallScreenThemeItem != null ? jSONStoreCallScreenThemeItem.getThemeDownloadUrl() : null));
            }
            m mVar4 = this.e;
            if (mVar4 != null) {
                mVar4.q();
            }
        }
        setChooseImageButton(false);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void b(JSONStoreCallScreenThemeItem storeItem) {
        String str;
        p.d(storeItem, "storeItem");
        super.b(storeItem);
        if (CollectionUtils.b(this.p)) {
            str = PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", - Enable button - after Add personal store item";
        } else {
            str = PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) + ", - Enable button - before Add personal store item";
        }
        AnalyticsManager.get().a(Constants.PERSONAL_STORE_ITEM, "Button clicked", str);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragmentDelegate
    public final void b(List<? extends PersonalStoreItemUrlData> personalStoreItemUrlDataList) {
        ProgressCardView progressCardView;
        ProgressCardView progressCardView2;
        p.d(personalStoreItemUrlDataList, "personalStoreItemUrlDataList");
        this.p = personalStoreItemUrlDataList;
        List<? extends PersonalStoreItemUrlData> list = personalStoreItemUrlDataList;
        if (!list.isEmpty()) {
            DownloaderCardViewHandler cardView = getCardView();
            if (!(cardView == null || (progressCardView2 = cardView.getProgressCardView()) == null)) {
                progressCardView2.setVisibility(8);
            }
            PersonalStoreItemUrlData selectedStoreItemUrlData = this.o.getSelectedStoreItemUrlData();
            if (selectedStoreItemUrlData != null) {
                a(selectedStoreItemUrlData);
            }
        } else {
            JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
            if (jSONStoreCallScreenThemeItem != null) {
                a(new PersonalStoreItemUrlData(jSONStoreCallScreenThemeItem.getThemeDownloadUrl(), VastError.ERROR_CODE_GENERAL_WRAPPER, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE));
                DownloaderCardViewHandler cardView2 = getCardView();
                if (!(cardView2 == null || (progressCardView = cardView2.getProgressCardView()) == null)) {
                    progressCardView.setVisibility(0);
                }
            }
        }
        setActionBarView(!list.isEmpty());
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final /* bridge */ /* synthetic */ void d(JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        if (motionEvent != null) {
            float y = motionEvent.getY();
            View view = this.r;
            if (!(view == null || y >= view.getY() + view.getHeight() || (gestureDetector = this.q) == null)) {
                gestureDetector.onTouchEvent(motionEvent);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final void e() {
        ProgressCardView progressCardView;
        setActionBarView(false);
        DownloaderCardViewHandler cardView = getCardView();
        if (!(cardView == null || (progressCardView = cardView.getProgressCardView()) == null)) {
            progressCardView.setVisibility(0);
        }
        super.e();
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final void f() {
        super.f();
        List<? extends PersonalStoreItemUrlData> list = this.p;
        if (list != null) {
            b(list);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final void g() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final int getItemType() {
        return DownloaderCardViewHandler.StoreItemType.VIDEO_RINGTONE.ordinal();
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 2131558458;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final String getLeftButtonPrefixText() {
        String string = Activities.getString(2131886815);
        p.b(string, "Activities.getString(R.string.enable_for)");
        return string;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x007b, code lost:
        if (com.callapp.contacts.manager.preferences.Prefs.cU.get().intValue() <= 0) goto L_0x0083;
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
            JsonStoreItem extends com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance r0 = r0.f13040a
            com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem r0 = (com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00ce
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cO
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x0039
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cU
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x0039
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cM
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0083
        L_0x0039:
            r0 = r6
            JsonStoreItem extends com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance r0 = r0.f13040a
            com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem r0 = (com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem) r0
            float r0 = r0.getPrice()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0083
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cM
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x007e
            com.callapp.contacts.manager.preferences.prefs.BooleanPref r0 = com.callapp.contacts.manager.preferences.Prefs.cP
            java.lang.Object r0 = r0.get()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Prefs.allStoreFree.get()"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r8
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x007e
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.cU
            java.lang.Object r0 = r0.get()
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0083
        L_0x007e:
            r0 = 1
            r9 = r0
            goto L_0x0085
        L_0x0083:
            r0 = 0
            r9 = r0
        L_0x0085:
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
            if (r0 == 0) goto L_0x00cc
            r0 = r7
            android.text.style.StrikethroughSpan r1 = new android.text.style.StrikethroughSpan
            r2 = r1
            r2.<init>()
            r2 = 0
            r3 = r7
            int r3 = r3.length()
            r4 = 33
            r0.setSpan(r1, r2, r3, r4)
        L_0x00cc:
            r0 = r7
            return r0
        L_0x00ce:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity.getPriceText():android.text.SpannableString");
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final BooleanPref getPurchasePref() {
        return Prefs.dv;
    }

    public final PersonalStoreItemFragment getVideoRingtoneFragment() {
        return this.o;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
        if (jSONStoreCallScreenThemeItem == null) {
            super.onBackPressed();
        } else if (jSONStoreCallScreenThemeItem.isPurchased() || CollectionUtils.a(this.p)) {
            super.onBackPressed();
        } else {
            PersonalStoreItemHelper personalStoreItemHelper = PersonalStoreItemHelper.f13195a;
            PersonalCallScreenThemeDownloaderActivity personalCallScreenThemeDownloaderActivity = this;
            DownloaderCardViewHandler cardView = getCardView();
            PersonalStoreItemHelper.a(personalCallScreenThemeDownloaderActivity, cardView != null ? cardView.getProgressCardView() : null, getPriceText(), PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.f13043d = intent.getStringExtra(Payload.SOURCE);
        }
        View b2 = ViewUtils.b(findViewById(2131361989));
        p.b(b2, "ViewUtils.inflateViewIfN…d.add_personal_viewstub))");
        this.m = b2;
        if (b2 == null) {
            p.a("addCustomFrame");
        }
        ViewUtils.b(b2, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
        this.o.setContactIdChooseVideoOnStart(intent.getStringExtra("EXTRA_CONTACT_ID"));
        Parcelable parcelableExtra = intent.getParcelableExtra("EXTRA_START_CHOOSE");
        Parcelable parcelable = parcelableExtra;
        if (!(parcelableExtra instanceof Uri)) {
            parcelable = null;
        }
        Uri uri = (Uri) parcelable;
        if (uri != null) {
            this.o.setChooseVideoOnStart(uri);
        }
        final SwipeGestureListener.Sensitivity sensitivity = SwipeGestureListener.Sensitivity.MEDIUM;
        this.q = new GestureDetector(this, new SwipeGestureListener(false, sensitivity) { // from class: com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity$onCreate$2
            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean a(float f) {
                PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment().a();
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean b(float f) {
                PersonalCallScreenThemeDownloaderActivity.this.getVideoRingtoneFragment().b();
                return true;
            }
        });
        this.r = findViewById(2131363651);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    protected final void setRightIconState(ButtonSet buttonSet) {
        ProgressCardView progressCardView;
        p.d(buttonSet, "buttonSet");
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) this.f13040a;
        if (!(jSONStoreCallScreenThemeItem == null || !jSONStoreCallScreenThemeItem.isPurchased() || (progressCardView = getProgressCardView()) == null)) {
            new PersonalCallScreenThemeDownloaderActivity$setRightIconState$1$1$1(progressCardView);
        }
        Prefs.dy.set(buttonSet);
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, android.app.Activity
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(Activities.getString(2131887904));
    }
}

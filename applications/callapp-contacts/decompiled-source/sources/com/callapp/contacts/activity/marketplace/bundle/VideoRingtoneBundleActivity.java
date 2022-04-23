package com.callapp.contacts.activity.marketplace.bundle;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.s;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.i;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleFragment;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBundle;
import com.callapp.contacts.databinding.ActivityVideoRingtoneBundleBinding;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.ArrayPref;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.TopBarUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.m;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� Z2\u00020\u00012\u00020\u0002:\u0001ZB\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J \u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104J\u0012\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108H\u0014J\b\u00109\u001a\u000200H\u0014J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020.H\u0014J\b\u0010?\u001a\u00020.H\u0014J\u0010\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020BH\u0016J\u0012\u0010C\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010EH\u0014J\u0010\u0010F\u001a\u00020.2\u0006\u0010G\u001a\u000200H\u0014J\u0018\u0010H\u001a\u00020.2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0014J\u0018\u0010I\u001a\u00020.2\u0006\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u000200H\u0016J\u0010\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u000200H\u0016J\u0018\u0010N\u001a\u00020.2\u0006\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u000200H\u0016J\b\u0010O\u001a\u00020.H\u0014J \u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u00101\u001a\u0002022\u0006\u0010T\u001a\u00020*H\u0002J\u0010\u0010U\u001a\u00020.2\u0006\u0010V\u001a\u00020WH\u0014J\b\u0010X\u001a\u00020.H\u0002J\b\u0010Y\u001a\u00020.H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086.¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006["}, d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;", "Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleInterface;", "()V", "binding", "Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;", "getBinding", "()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;", "setBinding", "(Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;)V", "callScreenData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "getCallScreenData", "()Ljava/util/ArrayList;", "setCallScreenData", "(Ljava/util/ArrayList;)V", "currentBundleData", "getCurrentBundleData", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "setCurrentBundleData", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "getPurchases", "()Ljava/util/List;", "setPurchases", "(Ljava/util/List;)V", "videoRingtoneBundleFragment", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "getVideoRingtoneBundleFragment", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "setVideoRingtoneBundleFragment", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;)V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "drawDiscount", "", "discount", "", "textView", "Landroid/widget/TextView;", "scaleType", "Landroid/widget/ImageView$ScaleType;", "extractStoreItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;", "catalogAttributes", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "getLayoutResourceId", "getPromotionType", "Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;", "getViewBinder", "Landroidx/viewbinding/ViewBinding;", "initButtonSetList", "initProgressCardView", "onChildViewAttachedToWindow", "view", "Landroid/view/View;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onItemStoreAvailable", "timePassed", "onItemsPurchasesUpdated", "onPlayerStateChanged", "playWhenReady", "playbackState", "onVideoRingtoneBundleItemSelected", "position", "playerStateChanged", "setActionBarCustomView", "setButtonString", "Landroid/text/SpannableStringBuilder;", "skuDetails", "Lcom/android/billingclient/api/SkuDetails;", "isButtonAndTextNotTheSame", "setRightIconState", "buttonSet", "Lcom/callapp/contacts/activity/marketplace/ButtonSet;", "setStoreItemTitle", "updateStoreItemIsPurchased", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity.class */
public final class VideoRingtoneBundleActivity extends CallScreenThemeDownloaderActivity implements VideoRingtoneBundleInterface {
    public static final Companion o = new Companion(null);
    public VideoRingtoneBundleFragment m;
    public ActivityVideoRingtoneBundleBinding n;
    private ArrayList<VideoRingtoneBundleData> p;
    private GestureDetector q;
    private VideoRingtoneBundleData r;
    private List<i> s;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004J0\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion;", "", "()V", "VIDEO_RINGTONE_BUNDLE_FRAGMENT_TAG", "", "createBundleIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, "show", "", "activity", "Landroid/app/Activity;", "returnPrevious", "Ljava/lang/Class;", Payload.SOURCE, "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static Intent a(Context context, String str) {
            Intent intent = new Intent(context, VideoRingtoneBundleActivity.class);
            intent.putExtra("EXTRA_ITEM_ID", str);
            return intent;
        }

        public static void a(Activity activity, String str, Class<?> cls, String str2) {
            p.d(activity, "activity");
            Intent a2 = a(activity, str);
            a2.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
            if (cls != null) {
                a2.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
            }
            a2.putExtra(Payload.SOURCE, str2);
            activity.startActivity(a2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.text.DecimalFormat] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [double] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ android.text.SpannableStringBuilder a(com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity r7, com.android.billingclient.api.k r8, android.widget.TextView r9) {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity.a(com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity, com.android.billingclient.api.k, android.widget.TextView):android.text.SpannableStringBuilder");
    }

    public static final /* synthetic */ JSONStoreCallScreenThemeItem a(VideoRingtoneBundleActivity videoRingtoneBundleActivity) {
        return (JSONStoreCallScreenThemeItem) videoRingtoneBundleActivity.f13040a;
    }

    private final void k() {
        List<i> list = this.s;
        if (!(list == null || list.isEmpty())) {
            List<i> list2 = this.s;
            p.a(list2);
            Iterator<i> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((JSONStoreCallScreenThemeItem) this.f13040a).containsSku(it2.next().b())) {
                        JsonStoreItem storeItem = this.f13040a;
                        p.b(storeItem, "storeItem");
                        ((JSONStoreCallScreenThemeItem) storeItem).setPurchased(true);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        JsonStoreItem storeItem2 = this.f13040a;
        p.b(storeItem2, "storeItem");
        if (!((JSONStoreCallScreenThemeItem) storeItem2).isPurchased()) {
            JsonStoreItem storeItem3 = this.f13040a;
            p.b(storeItem3, "storeItem");
            JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) storeItem3;
            ArrayPref arrayPref = Prefs.cW;
            p.b(arrayPref, "Prefs.storeItemAwardedAsGift");
            boolean z = false;
            if (arrayPref.isNotNull()) {
                String[] strArr = Prefs.cW.get();
                p.b(strArr, "Prefs.storeItemAwardedAsGift.get()");
                Set m = kotlin.a.i.m(strArr);
                JsonStoreItem storeItem4 = this.f13040a;
                p.b(storeItem4, "storeItem");
                z = false;
                if (CollectionUtils.a(m, ((JSONStoreCallScreenThemeItem) storeItem4).getSku())) {
                    z = true;
                }
            }
            jSONStoreCallScreenThemeItem.setPurchased(z);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    public final void a() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public final void a(int i) {
        if (((JSONStoreCallScreenThemeItem) this.f13040a) != null) {
            JsonStoreItem storeItem = this.f13040a;
            p.b(storeItem, "storeItem");
            String title = ((JSONStoreCallScreenThemeItem) storeItem).getTitle();
            String str = title;
            if (StringUtils.a((CharSequence) title)) {
                JsonStoreItem storeItem2 = this.f13040a;
                p.b(storeItem2, "storeItem");
                str = ((JSONStoreCallScreenThemeItem) storeItem2).getTitle();
            }
            JsonStoreItem storeItem3 = this.f13040a;
            p.b(storeItem3, "storeItem");
            String description = ((JSONStoreCallScreenThemeItem) storeItem3).getDescription();
            String str2 = description;
            if (StringUtils.a((CharSequence) description)) {
                JsonStoreItem storeItem4 = this.f13040a;
                p.b(storeItem4, "storeItem");
                str2 = ((JSONStoreCallScreenThemeItem) storeItem4).getDescription();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(org.apache.commons.lang3.StringUtils.LF + str2);
            SpannableString spannableString = new SpannableString(sb.toString());
            spannableString.setSpan(new StyleSpan(1), 0, str.length(), 33);
            TopBarUtils.a(getSupportActionBar(), spannableString);
        }
        k();
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.m;
        if (videoRingtoneBundleFragment == null) {
            p.a("videoRingtoneBundleFragment");
        }
        if (!videoRingtoneBundleFragment.isAdded()) {
            s a2 = getSupportFragmentManager().a();
            VideoRingtoneBundleFragment videoRingtoneBundleFragment2 = this.m;
            if (videoRingtoneBundleFragment2 == null) {
                p.a("videoRingtoneBundleFragment");
            }
            a2.b(2131364518, videoRingtoneBundleFragment2, "VideoRingtoneBundleActivity").b();
        }
        BillingManager billingManager = this.f13041b;
        JsonStoreItem storeItem5 = this.f13040a;
        p.b(storeItem5, "storeItem");
        billingManager.a("inapp", n.c(((JSONStoreCallScreenThemeItem) storeItem5).getSku()), new VideoRingtoneBundleActivity$onItemStoreAvailable$1(this));
        super.a(i);
    }

    @Override // com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleInterface
    public final void a(View view) {
        p.d(view, "view");
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.m;
        if (videoRingtoneBundleFragment == null) {
            p.a("videoRingtoneBundleFragment");
        }
        c(videoRingtoneBundleFragment.getSelectedIndex());
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public final void a(List<i> list) {
        this.s = list;
        super.a(list);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void a(boolean z, int i) {
        VideoRingtoneBundleData videoRingtoneBundleData = this.r;
        if (videoRingtoneBundleData != null && videoRingtoneBundleData.getType() == 0) {
            super.a(true, i);
        } else {
            super.a(false, this.l);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    /* renamed from: b */
    public final JSONStoreCallScreenThemeItem a(CatalogManager.CatalogAttributes catalogAttributes) {
        p.a(catalogAttributes);
        JSONStoreItemBundle bundle = catalogAttributes.getBundle();
        p.b(bundle, "catalogAttributes!!.bundle");
        VideoRingtoneBundleData[] freeSkus = bundle.getFreeSkus();
        ArrayList<VideoRingtoneBundleData> arrayList = freeSkus != null ? (ArrayList) kotlin.a.i.b((Object[]) freeSkus, new ArrayList()) : null;
        this.p = arrayList;
        if (arrayList != null) {
            VideoRingtoneBundleFragment.Companion companion = VideoRingtoneBundleFragment.f13243d;
            this.m = VideoRingtoneBundleFragment.Companion.a(arrayList);
            c(0);
        }
        JSONStoreItemBundle bundle2 = catalogAttributes.getBundle();
        p.b(bundle2, "catalogAttributes.bundle");
        return bundle2;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    public final void b() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.google.android.exoplayer2.ac.a
    public final void b(boolean z, int i) {
        VideoRingtoneBundleData videoRingtoneBundleData = this.r;
        if (videoRingtoneBundleData != null && videoRingtoneBundleData.getType() == 0) {
            super.a(z, i);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleInterface
    public final void c(int i) {
        ArrayList<VideoRingtoneBundleData> arrayList = this.p;
        Integer num = null;
        this.r = arrayList != null ? arrayList.get(i) : null;
        ImageView imageView = this.j;
        VideoRingtoneBundleData videoRingtoneBundleData = this.r;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, videoRingtoneBundleData != null ? videoRingtoneBundleData.getVideoPlaceHolder() : null, this);
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
        m mVar = this.e;
        if (mVar != null) {
            VideoCacheManager videoCacheManager = VideoCacheManager.get();
            VideoRingtoneBundleData videoRingtoneBundleData2 = this.r;
            mVar.b(videoCacheManager.a(videoRingtoneBundleData2 != null ? videoRingtoneBundleData2.getVideoUrl() : null));
        }
        m mVar2 = this.e;
        if (mVar2 != null) {
            mVar2.q();
        }
        VideoRingtoneBundleData videoRingtoneBundleData3 = this.r;
        if (videoRingtoneBundleData3 != null) {
            num = Integer.valueOf(videoRingtoneBundleData3.getType());
        }
        if (num != null && num.intValue() == 0) {
            ImageView callerIdHeaderImage = getCallerIdHeaderImage();
            p.b(callerIdHeaderImage, "callerIdHeaderImage");
            callerIdHeaderImage.setVisibility(0);
            View buttonSetContainer = getButtonSetContainer();
            p.b(buttonSetContainer, "buttonSetContainer");
            buttonSetContainer.setVisibility(0);
            CallIncomingIndicatorView arrowAnswer = getArrowAnswer();
            p.b(arrowAnswer, "arrowAnswer");
            arrowAnswer.setVisibility(0);
            CallIncomingIndicatorView arrowHang = getArrowHang();
            p.b(arrowHang, "arrowHang");
            arrowHang.setVisibility(0);
        } else if (num != null && num.intValue() == 1) {
            ImageView callerIdHeaderImage2 = getCallerIdHeaderImage();
            p.b(callerIdHeaderImage2, "callerIdHeaderImage");
            callerIdHeaderImage2.setVisibility(8);
            View buttonSetContainer2 = getButtonSetContainer();
            p.b(buttonSetContainer2, "buttonSetContainer");
            buttonSetContainer2.setVisibility(8);
            CallIncomingIndicatorView arrowAnswer2 = getArrowAnswer();
            p.b(arrowAnswer2, "arrowAnswer");
            arrowAnswer2.setVisibility(8);
            CallIncomingIndicatorView arrowHang2 = getArrowHang();
            p.b(arrowHang2, "arrowHang");
            arrowHang2.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void d() {
        a((ButtonSet) Prefs.dy.get());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        if (!(motionEvent == null || (gestureDetector = this.q) == null)) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final ActivityVideoRingtoneBundleBinding getBinding() {
        ActivityVideoRingtoneBundleBinding activityVideoRingtoneBundleBinding = this.n;
        if (activityVideoRingtoneBundleBinding == null) {
            p.a("binding");
        }
        return activityVideoRingtoneBundleBinding;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.DownloaderCardEvents
    public final Promotion.ProductType getPromotionType() {
        return Promotion.ProductType.BUNDLE;
    }

    public final VideoRingtoneBundleFragment getVideoRingtoneBundleFragment() {
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.m;
        if (videoRingtoneBundleFragment == null) {
            p.a("videoRingtoneBundleFragment");
        }
        return videoRingtoneBundleFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public final a getViewBinder() {
        ActivityVideoRingtoneBundleBinding activityVideoRingtoneBundleBinding = this.n;
        if (activityVideoRingtoneBundleBinding == null) {
            p.a("binding");
        }
        return activityVideoRingtoneBundleBinding;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ProgressCardView progressCardView;
        View upperView;
        ActivityVideoRingtoneBundleBinding a2 = ActivityVideoRingtoneBundleBinding.a(getLayoutInflater());
        p.b(a2, "ActivityVideoRingtoneBun…g.inflate(layoutInflater)");
        this.n = a2;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.f13043d = intent.getStringExtra(Payload.SOURCE);
        }
        TopBarUtils.a(this, getSupportActionBar(), TopBarUtils.TopBarTitle.TITLE_TOP_BAR_SMALL, 2131558428);
        DownloaderCardViewHandler cardView = getCardView();
        if (!(cardView == null || (progressCardView = cardView.getProgressCardView()) == null || (upperView = progressCardView.getUpperView()) == null)) {
            upperView.setVisibility(8);
        }
        final SwipeGestureListener.Sensitivity sensitivity = SwipeGestureListener.Sensitivity.MEDIUM;
        this.q = new GestureDetector(this, new SwipeGestureListener(false, sensitivity) { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity$onCreate$1
            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean a(float f) {
                VideoRingtoneBundleFragment videoRingtoneBundleFragment = VideoRingtoneBundleActivity.this.getVideoRingtoneBundleFragment();
                int i = VideoRingtoneBundleFragment.f13242c + 1;
                VideoRingtoneBundleAdapter videoRingtoneBundleAdapter = videoRingtoneBundleFragment.f13245b;
                Integer valueOf = videoRingtoneBundleAdapter != null ? Integer.valueOf(videoRingtoneBundleAdapter.getItemCount()) : null;
                p.a(valueOf);
                if (i >= valueOf.intValue()) {
                    return true;
                }
                RecyclerView recyclerView = videoRingtoneBundleFragment.f13244a;
                if (recyclerView == null) {
                    p.a("recyclerView");
                }
                recyclerView.d(i);
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            public final boolean b(float f) {
                VideoRingtoneBundleFragment videoRingtoneBundleFragment = VideoRingtoneBundleActivity.this.getVideoRingtoneBundleFragment();
                if (VideoRingtoneBundleFragment.f13242c - 1 < 0) {
                    return true;
                }
                RecyclerView recyclerView = videoRingtoneBundleFragment.f13244a;
                if (recyclerView == null) {
                    p.a("recyclerView");
                }
                recyclerView.d(VideoRingtoneBundleFragment.f13242c - 1);
                return true;
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void setRightIconState(ButtonSet buttonSet) {
        p.d(buttonSet, "buttonSet");
    }
}

package com.callapp.contacts.activity.marketplace.bundle;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.AbstractC1121s;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
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
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.TopBarUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.AbstractC11168m;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� Z2\u00020\u00012\u00020\u0002:\u0001ZB\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J \u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u000104J\u0012\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108H\u0014J\b\u00109\u001a\u000200H\u0014J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020.H\u0014J\b\u0010?\u001a\u00020.H\u0014J\u0010\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020BH\u0016J\u0012\u0010C\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010EH\u0014J\u0010\u0010F\u001a\u00020.2\u0006\u0010G\u001a\u000200H\u0014J\u0018\u0010H\u001a\u00020.2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0014J\u0018\u0010I\u001a\u00020.2\u0006\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u000200H\u0016J\u0010\u0010L\u001a\u00020.2\u0006\u0010M\u001a\u000200H\u0016J\u0018\u0010N\u001a\u00020.2\u0006\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u000200H\u0016J\b\u0010O\u001a\u00020.H\u0014J \u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u00101\u001a\u0002022\u0006\u0010T\u001a\u00020*H\u0002J\u0010\u0010U\u001a\u00020.2\u0006\u0010V\u001a\u00020WH\u0014J\b\u0010X\u001a\u00020.H\u0002J\b\u0010Y\u001a\u00020.H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086.¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006["}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;", "Lcom/callapp/contacts/activity/marketplace/CallScreenThemeDownloaderActivity;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleInterface;", "()V", "binding", "Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;", "getBinding", "()Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;", "setBinding", "(Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;)V", "callScreenData", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "getCallScreenData", "()Ljava/util/ArrayList;", "setCallScreenData", "(Ljava/util/ArrayList;)V", "currentBundleData", "getCurrentBundleData", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "setCurrentBundleData", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "getPurchases", "()Ljava/util/List;", "setPurchases", "(Ljava/util/List;)V", "videoRingtoneBundleFragment", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "getVideoRingtoneBundleFragment", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "setVideoRingtoneBundleFragment", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;)V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "drawDiscount", "", "discount", "", "textView", "Landroid/widget/TextView;", "scaleType", "Landroid/widget/ImageView$ScaleType;", "extractStoreItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;", "catalogAttributes", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "getLayoutResourceId", "getPromotionType", "Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;", "getViewBinder", "Landroidx/viewbinding/ViewBinding;", "initButtonSetList", "initProgressCardView", "onChildViewAttachedToWindow", "view", "Landroid/view/View;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onItemStoreAvailable", "timePassed", "onItemsPurchasesUpdated", "onPlayerStateChanged", "playWhenReady", "playbackState", "onVideoRingtoneBundleItemSelected", "position", "playerStateChanged", "setActionBarCustomView", "setButtonString", "Landroid/text/SpannableStringBuilder;", "skuDetails", "Lcom/android/billingclient/api/SkuDetails;", "isButtonAndTextNotTheSame", "setRightIconState", "buttonSet", "Lcom/callapp/contacts/activity/marketplace/ButtonSet;", "setStoreItemTitle", "updateStoreItemIsPurchased", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity.class */
public final class VideoRingtoneBundleActivity extends CallScreenThemeDownloaderActivity implements VideoRingtoneBundleInterface {

    /* renamed from: o */
    public static final Companion f23542o = new Companion(null);

    /* renamed from: m */
    public VideoRingtoneBundleFragment f23543m;

    /* renamed from: n */
    public ActivityVideoRingtoneBundleBinding f23544n;

    /* renamed from: p */
    private ArrayList<VideoRingtoneBundleData> f23545p;

    /* renamed from: q */
    private GestureDetector f23546q;

    /* renamed from: r */
    private VideoRingtoneBundleData f23547r;

    /* renamed from: s */
    private List<C3344i> f23548s;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004J0\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\u00042\f\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion;", "", "()V", "VIDEO_RINGTONE_BUNDLE_FRAGMENT_TAG", "", "createBundleIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID, "show", "", "activity", "Landroid/app/Activity;", "returnPrevious", "Ljava/lang/Class;", Payload.SOURCE, "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static Intent m29990a(Context context, String str) {
            Intent intent = new Intent(context, VideoRingtoneBundleActivity.class);
            intent.putExtra("EXTRA_ITEM_ID", str);
            return intent;
        }

        /* renamed from: a */
        public static void m29991a(Activity activity, String str, Class<?> cls, String str2) {
            C18524p.m3840d(activity, "activity");
            Intent m29990a = m29990a(activity, str);
            m29990a.putExtra("ACTIVITY_SOURCE", activity.getClass().getSimpleName());
            if (cls != null) {
                m29990a.putExtra("RETURN_TO_PREVIOUS_CLASS", cls);
            }
            m29990a.putExtra(Payload.SOURCE, str2);
            activity.startActivity(m29990a);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /* JADX WARN: Type inference failed for: r0v97, types: [double] */
    /* renamed from: a */
    public static final /* synthetic */ SpannableStringBuilder m30000a(VideoRingtoneBundleActivity videoRingtoneBundleActivity, C3347k c3347k, TextView textView) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String m38179f = c3347k.m38179f();
        C18524p.m3843b(m38179f, "skuDetails.description");
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        String m38184a = c3347k.m38184a();
        C18524p.m3843b(m38184a, "skuDetails.sku");
        Currency currency = Currency.getInstance(c3347k.m38181d());
        int a = C18425p.m3940a((CharSequence) m38179f, "#", 0, false, 6);
        boolean z = a >= 0;
        ?? m38182c = c3347k.m38182c() / 1000000.0d;
        int color = ThemeUtils.getColor(2131100228);
        char c = m38182c;
        if (StringUtils.m26030e(m38184a, "yearly")) {
            c = m38182c / 12.0d;
        }
        StringBuilder sb = new StringBuilder();
        C18524p.m3843b(currency, "currency");
        sb.append(currency.getSymbol());
        sb.append(decimalFormat.format((double) c));
        String sb2 = sb.toString();
        if (!z) {
            a = m38179f.length();
        }
        Objects.requireNonNull(m38179f, "null cannot be cast to non-null type java.lang.String");
        String substring = m38179f.substring(0, a);
        C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (z) {
            String m26052a = StringUtils.m26052a(m38179f, "#@", "@#");
            C18524p.m3843b(m26052a, "StringUtils.extractStrin…(description, \"#@\", \"@#\")");
            int parseInt = Integer.parseInt(m26052a);
            double d = (100.0d - parseInt) / 100.0d;
            String str = currency.getSymbol() + decimalFormat.format(c / d);
            SpannableString spannableString = new SpannableString(str);
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            spannableString.setSpan(new ForegroundColorSpan(callAppApplication.getResources().getColor(2131099692)), 0, str.length(), 33);
            spannableString.setSpan(new StrikethroughSpan(), 0, str.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.SPACE);
            ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
            C18524p.m3840d(textView, "textView");
            ViewParent parent = textView.getParent();
            if (parent instanceof RelativeLayout) {
                Bitmap m27521b = ImageUtils.m27521b(org.apache.commons.lang3.StringUtils.SPACE + parseInt + '%');
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                ImageView imageView = new ImageView(CallAppApplication.get());
                imageView.setImageBitmap(m27521b);
                imageView.setScaleType(scaleType);
                ((RelativeLayout) parent).addView(imageView, layoutParams);
            }
        }
        SpannableString spannableString2 = new SpannableString(sb2);
        spannableString2.setSpan(new ForegroundColorSpan(color), 0, sb2.length(), 33);
        spannableString2.setSpan(new RelativeSizeSpan(1.2f), 0, sb2.length(), 0);
        spannableString2.setSpan(new StyleSpan(1), 0, sb2.length(), 0);
        spannableStringBuilder.append((CharSequence) spannableString2);
        SpannableString spannableString3 = new SpannableString(substring);
        spannableString3.setSpan(new RelativeSizeSpan(0.8f), 0, substring.length(), 0);
        spannableStringBuilder.append((CharSequence) spannableString3);
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public static final /* synthetic */ JSONStoreCallScreenThemeItem m30001a(VideoRingtoneBundleActivity videoRingtoneBundleActivity) {
        return (JSONStoreCallScreenThemeItem) videoRingtoneBundleActivity.f23266a;
    }

    /* renamed from: k */
    private final void m29992k() {
        List<C3344i> list = this.f23548s;
        if (!(list == null || list.isEmpty())) {
            List<C3344i> list2 = this.f23548s;
            C18524p.m3851a(list2);
            Iterator<C3344i> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((JSONStoreCallScreenThemeItem) this.f23266a).containsSku(it2.next().m38188b())) {
                        JsonStoreItem storeItem = this.f23266a;
                        C18524p.m3843b(storeItem, "storeItem");
                        ((JSONStoreCallScreenThemeItem) storeItem).setPurchased(true);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        JsonStoreItem storeItem2 = this.f23266a;
        C18524p.m3843b(storeItem2, "storeItem");
        if (!((JSONStoreCallScreenThemeItem) storeItem2).isPurchased()) {
            JsonStoreItem storeItem3 = this.f23266a;
            C18524p.m3843b(storeItem3, "storeItem");
            JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem = (JSONStoreCallScreenThemeItem) storeItem3;
            ArrayPref arrayPref = Prefs.f26352cW;
            C18524p.m3843b(arrayPref, "Prefs.storeItemAwardedAsGift");
            boolean z = false;
            if (arrayPref.isNotNull()) {
                String[] strArr = Prefs.f26352cW.get();
                C18524p.m3843b(strArr, "Prefs.storeItemAwardedAsGift.get()");
                Set m = C18273i.m4179m(strArr);
                JsonStoreItem storeItem4 = this.f23266a;
                C18524p.m3843b(storeItem4, "storeItem");
                z = false;
                if (CollectionUtils.m26073a(m, ((JSONStoreCallScreenThemeItem) storeItem4).getSku())) {
                    z = true;
                }
            }
            jSONStoreCallScreenThemeItem.setPurchased(z);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    /* renamed from: a */
    public final void mo30003a() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo30002a(int i) {
        if (((JSONStoreCallScreenThemeItem) this.f23266a) != null) {
            JsonStoreItem storeItem = this.f23266a;
            C18524p.m3843b(storeItem, "storeItem");
            String title = ((JSONStoreCallScreenThemeItem) storeItem).getTitle();
            String str = title;
            if (StringUtils.m26059a((CharSequence) title)) {
                JsonStoreItem storeItem2 = this.f23266a;
                C18524p.m3843b(storeItem2, "storeItem");
                str = ((JSONStoreCallScreenThemeItem) storeItem2).getTitle();
            }
            JsonStoreItem storeItem3 = this.f23266a;
            C18524p.m3843b(storeItem3, "storeItem");
            String description = ((JSONStoreCallScreenThemeItem) storeItem3).getDescription();
            String str2 = description;
            if (StringUtils.m26059a((CharSequence) description)) {
                JsonStoreItem storeItem4 = this.f23266a;
                C18524p.m3843b(storeItem4, "storeItem");
                str2 = ((JSONStoreCallScreenThemeItem) storeItem4).getDescription();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(org.apache.commons.lang3.StringUtils.f67179LF + str2);
            SpannableString spannableString = new SpannableString(sb.toString());
            spannableString.setSpan(new StyleSpan(1), 0, str.length(), 33);
            TopBarUtils.m27364a(getSupportActionBar(), spannableString);
        }
        m29992k();
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.f23543m;
        if (videoRingtoneBundleFragment == null) {
            C18524p.m3848a("videoRingtoneBundleFragment");
        }
        if (!videoRingtoneBundleFragment.isAdded()) {
            AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
            VideoRingtoneBundleFragment videoRingtoneBundleFragment2 = this.f23543m;
            if (videoRingtoneBundleFragment2 == null) {
                C18524p.m3848a("videoRingtoneBundleFragment");
            }
            m43765a.m43535b(2131364518, videoRingtoneBundleFragment2, "VideoRingtoneBundleActivity").mo43536b();
        }
        BillingManager billingManager = this.f23267b;
        JsonStoreItem storeItem5 = this.f23266a;
        C18524p.m3843b(storeItem5, "storeItem");
        billingManager.m28292a("inapp", C18282n.m4166c(((JSONStoreCallScreenThemeItem) storeItem5).getSku()), new VideoRingtoneBundleActivity$onItemStoreAvailable$1(this));
        super.mo30002a(i);
    }

    @Override // com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleInterface
    /* renamed from: a */
    public final void mo29986a(View view) {
        C18524p.m3840d(view, "view");
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.f23543m;
        if (videoRingtoneBundleFragment == null) {
            C18524p.m3848a("videoRingtoneBundleFragment");
        }
        mo29985c(videoRingtoneBundleFragment.getSelectedIndex());
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: a */
    public final void mo29998a(List<C3344i> list) {
        this.f23548s = list;
        super.mo29998a(list);
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    /* renamed from: a */
    public final void mo29997a(boolean z, int i) {
        VideoRingtoneBundleData videoRingtoneBundleData = this.f23547r;
        if (videoRingtoneBundleData != null && videoRingtoneBundleData.getType() == 0) {
            super.mo29997a(true, i);
        } else {
            super.mo29997a(false, this.f23300l);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    /* renamed from: b */
    public final JSONStoreCallScreenThemeItem mo29999a(CatalogManager.CatalogAttributes catalogAttributes) {
        C18524p.m3851a(catalogAttributes);
        JSONStoreItemBundle bundle = catalogAttributes.getBundle();
        C18524p.m3843b(bundle, "catalogAttributes!!.bundle");
        VideoRingtoneBundleData[] freeSkus = bundle.getFreeSkus();
        ArrayList<VideoRingtoneBundleData> arrayList = freeSkus != null ? (ArrayList) C18273i.m4191b((Object[]) freeSkus, new ArrayList()) : null;
        this.f23545p = arrayList;
        if (arrayList != null) {
            VideoRingtoneBundleFragment.Companion companion = VideoRingtoneBundleFragment.f23556d;
            this.f23543m = VideoRingtoneBundleFragment.Companion.m29987a(arrayList);
            mo29985c(0);
        }
        JSONStoreItemBundle bundle2 = catalogAttributes.getBundle();
        C18524p.m3843b(bundle2, "catalogAttributes.bundle");
        return bundle2;
    }

    @Override // com.callapp.contacts.activity.marketplace.BaseDownloaderActivity
    /* renamed from: b */
    public final void mo29996b() {
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
    /* renamed from: b */
    public final void mo20302b(boolean z, int i) {
        VideoRingtoneBundleData videoRingtoneBundleData = this.f23547r;
        if (videoRingtoneBundleData == null || videoRingtoneBundleData.getType() != 0) {
            return;
        }
        super.mo29997a(z, i);
    }

    @Override // com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleInterface
    /* renamed from: c */
    public final void mo29985c(int i) {
        ArrayList<VideoRingtoneBundleData> arrayList = this.f23545p;
        this.f23547r = arrayList != null ? arrayList.get(i) : null;
        ImageView imageView = this.f23298j;
        VideoRingtoneBundleData videoRingtoneBundleData = this.f23547r;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, videoRingtoneBundleData != null ? videoRingtoneBundleData.getVideoPlaceHolder() : null, this);
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
        AbstractC11168m abstractC11168m = this.f23294e;
        if (abstractC11168m != null) {
            VideoCacheManager videoCacheManager = VideoCacheManager.get();
            VideoRingtoneBundleData videoRingtoneBundleData2 = this.f23547r;
            abstractC11168m.mo21142b(videoCacheManager.m26892a(videoRingtoneBundleData2 != null ? videoRingtoneBundleData2.getVideoUrl() : null));
        }
        AbstractC11168m abstractC11168m2 = this.f23294e;
        if (abstractC11168m2 != null) {
            abstractC11168m2.mo21119q();
        }
        VideoRingtoneBundleData videoRingtoneBundleData3 = this.f23547r;
        Integer num = null;
        if (videoRingtoneBundleData3 != null) {
            num = Integer.valueOf(videoRingtoneBundleData3.getType());
        }
        if (num != null && num.intValue() == 0) {
            ImageView callerIdHeaderImage = getCallerIdHeaderImage();
            C18524p.m3843b(callerIdHeaderImage, "callerIdHeaderImage");
            callerIdHeaderImage.setVisibility(0);
            View buttonSetContainer = getButtonSetContainer();
            C18524p.m3843b(buttonSetContainer, "buttonSetContainer");
            buttonSetContainer.setVisibility(0);
            CallIncomingIndicatorView arrowAnswer = getArrowAnswer();
            C18524p.m3843b(arrowAnswer, "arrowAnswer");
            arrowAnswer.setVisibility(0);
            CallIncomingIndicatorView arrowHang = getArrowHang();
            C18524p.m3843b(arrowHang, "arrowHang");
            arrowHang.setVisibility(0);
        } else if (num == null || num.intValue() != 1) {
        } else {
            ImageView callerIdHeaderImage2 = getCallerIdHeaderImage();
            C18524p.m3843b(callerIdHeaderImage2, "callerIdHeaderImage");
            callerIdHeaderImage2.setVisibility(8);
            View buttonSetContainer2 = getButtonSetContainer();
            C18524p.m3843b(buttonSetContainer2, "buttonSetContainer");
            buttonSetContainer2.setVisibility(8);
            CallIncomingIndicatorView arrowAnswer2 = getArrowAnswer();
            C18524p.m3843b(arrowAnswer2, "arrowAnswer");
            arrowAnswer2.setVisibility(8);
            CallIncomingIndicatorView arrowHang2 = getArrowHang();
            C18524p.m3843b(arrowHang2, "arrowHang");
            arrowHang2.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    /* renamed from: d */
    public final void mo29993d() {
        mo30057a((ButtonSet) Prefs.f26433dy.get());
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector;
        if (motionEvent != null && (gestureDetector = this.f23546q) != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final ActivityVideoRingtoneBundleBinding getBinding() {
        ActivityVideoRingtoneBundleBinding activityVideoRingtoneBundleBinding = this.f23544n;
        if (activityVideoRingtoneBundleBinding == null) {
            C18524p.m3848a("binding");
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
        VideoRingtoneBundleFragment videoRingtoneBundleFragment = this.f23543m;
        if (videoRingtoneBundleFragment == null) {
            C18524p.m3848a("videoRingtoneBundleFragment");
        }
        return videoRingtoneBundleFragment;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public final AbstractC1286a getViewBinder() {
        ActivityVideoRingtoneBundleBinding activityVideoRingtoneBundleBinding = this.f23544n;
        if (activityVideoRingtoneBundleBinding == null) {
            C18524p.m3848a("binding");
        }
        return activityVideoRingtoneBundleBinding;
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity, com.callapp.contacts.activity.marketplace.BaseDownloaderActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ProgressCardView progressCardView;
        View upperView;
        ActivityVideoRingtoneBundleBinding m29076a = ActivityVideoRingtoneBundleBinding.m29076a(getLayoutInflater());
        C18524p.m3843b(m29076a, "ActivityVideoRingtoneBun…g.inflate(layoutInflater)");
        this.f23544n = m29076a;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f23269d = intent.getStringExtra(Payload.SOURCE);
        }
        TopBarUtils.m27365a(this, getSupportActionBar(), TopBarUtils.TopBarTitle.TITLE_TOP_BAR_SMALL, 2131558428);
        DownloaderCardViewHandler cardView = getCardView();
        if (cardView != null && (progressCardView = cardView.getProgressCardView()) != null && (upperView = progressCardView.getUpperView()) != null) {
            upperView.setVisibility(8);
        }
        this.f23546q = new GestureDetector(this, new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.MEDIUM) { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleActivity$onCreate$1
            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: a */
            public final boolean mo26556a(float f) {
                VideoRingtoneBundleFragment videoRingtoneBundleFragment = VideoRingtoneBundleActivity.this.getVideoRingtoneBundleFragment();
                int i = VideoRingtoneBundleFragment.f23555c + 1;
                VideoRingtoneBundleAdapter videoRingtoneBundleAdapter = videoRingtoneBundleFragment.f23558b;
                Integer valueOf = videoRingtoneBundleAdapter != null ? Integer.valueOf(videoRingtoneBundleAdapter.getItemCount()) : null;
                C18524p.m3851a(valueOf);
                if (i < valueOf.intValue()) {
                    RecyclerView recyclerView = videoRingtoneBundleFragment.f23557a;
                    if (recyclerView == null) {
                        C18524p.m3848a("recyclerView");
                    }
                    recyclerView.m40449d(i);
                    return true;
                }
                return true;
            }

            @Override // com.callapp.contacts.widget.SwipeGestureListener
            /* renamed from: b */
            public final boolean mo26554b(float f) {
                VideoRingtoneBundleFragment videoRingtoneBundleFragment = VideoRingtoneBundleActivity.this.getVideoRingtoneBundleFragment();
                if (VideoRingtoneBundleFragment.f23555c - 1 >= 0) {
                    RecyclerView recyclerView = videoRingtoneBundleFragment.f23557a;
                    if (recyclerView == null) {
                        C18524p.m3848a("recyclerView");
                    }
                    recyclerView.m40449d(VideoRingtoneBundleFragment.f23555c - 1);
                    return true;
                }
                return true;
            }
        });
    }

    @Override // com.callapp.contacts.activity.marketplace.CallScreenThemeDownloaderActivity
    public final void setRightIconState(ButtonSet buttonSet) {
        C18524p.m3840d(buttonSet, "buttonSet");
    }
}

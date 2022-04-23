package com.callapp.contacts.activity.marketplace;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.util.SparseIntArray;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemAppAppearance;
import com.callapp.contacts.activity.marketplace.catalog.StoreUtils;
import com.callapp.contacts.manager.PromotionManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProgressCardView;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler.class */
public class DownloaderCardViewHandler<T extends JSONStoreItemAppAppearance> {

    /* renamed from: a  reason: collision with root package name */
    Task f13102a;

    /* renamed from: b  reason: collision with root package name */
    Runnable f13103b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<BaseDownloaderActivity> f13104c;

    /* renamed from: d  reason: collision with root package name */
    private final ProgressCardView f13105d;
    private final T e;
    private final DownloaderCardEvents f;
    private BillingManager g;
    private int h;
    private int i;
    private String j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3.class */
    public class AnonymousClass3 implements Runnable {

        /* renamed from: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$3$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1.class */
        class AnonymousClass1 extends Task {
            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a(int i, int i2) {
                AnonymousClass3.this.setProgressBarInDelay(i, i2);
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String[] c2 = DownloaderCardViewHandler.this.f.c(DownloaderCardViewHandler.this.e);
                int i = 0;
                if (c2 != null) {
                    i = 0;
                    if (c2.length > 0) {
                        final int length = c2.length;
                        for (final int i2 = 0; i2 < length; i2++) {
                            new Task() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.1.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    int i3 = i2;
                                    String[] strArr = c2;
                                    if (i3 < strArr.length) {
                                        String str = strArr[i3];
                                        if (StringUtils.b((CharSequence) str)) {
                                            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                                            glideRequestBuilder.e = CallAppApplication.get();
                                            glideRequestBuilder.b();
                                        }
                                    }
                                }
                            }.setDoneListener(new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$DownloaderCardViewHandler$3$1$xXZxLD6kh9s1N9iT8xXbpI8zi_o
                                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                                public final void onDone() {
                                    DownloaderCardViewHandler.AnonymousClass3.AnonymousClass1.this.a(i2, length);
                                }
                            }).execute();
                        }
                        return;
                    }
                }
                while (i < 5) {
                    AnonymousClass3.this.setProgressBarInDelay(i, 5);
                    i++;
                }
            }
        }

        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProgressBarInDelay(final int i, final int i2) {
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.2
                @Override // java.lang.Runnable
                public void run() {
                    ProgressCardView progressCardView = DownloaderCardViewHandler.this.f13105d;
                    progressCardView.m += Math.min(100 / (i2 + 1), 100);
                    progressCardView.setProgressProgress(progressCardView.m);
                    progressCardView.setProgressPercentText(progressCardView.m + "%");
                    if (i == i2 - 1) {
                        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DownloaderCardViewHandler.h(DownloaderCardViewHandler.this);
                            }
                        }, 500L);
                    }
                }
            }, i * 500);
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressCardView progressCardView = DownloaderCardViewHandler.this.f13105d;
            progressCardView.l.setVisibility(8);
            progressCardView.h.setVisibility(0);
            progressCardView.i.setVisibility(0);
            progressCardView.j.setVisibility(0);
            progressCardView.k.setVisibility(0);
            progressCardView.k.setProgress(0);
            DownloaderCardViewHandler.this.f13105d.setProgressPercentText("0%");
            DownloaderCardViewHandler.this.f13105d.getContext();
            DownloaderCardViewHandler.this.f13102a = new AnonymousClass1().execute();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents.class */
    public interface DownloaderCardEvents<T extends JSONStoreItem> {

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(DownloaderCardEvents downloaderCardEvents, JSONStoreItem jSONStoreItem, ProgressCardView progressCardView) {
            }

            public static void $default$b(DownloaderCardEvents downloaderCardEvents, JSONStoreItem jSONStoreItem) {
            }

            public static boolean $default$c(DownloaderCardEvents downloaderCardEvents) {
                return Prefs.cO.get().intValue() > 0 || Prefs.cK.get().booleanValue() || Prefs.cM.get().intValue() > 0 || PromotionManager.b(downloaderCardEvents.getPromotionType());
            }

            public static String $default$getLeftButtonPrefixText(DownloaderCardEvents downloaderCardEvents) {
                return null;
            }

            public static BooleanPref $default$getPurchasePref(DownloaderCardEvents downloaderCardEvents) {
                return null;
            }

            public static void $default$j(DownloaderCardEvents downloaderCardEvents) {
                if (downloaderCardEvents.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal() && Prefs.cU.get().intValue() > 0) {
                    Prefs.cU.b(-1);
                } else if (downloaderCardEvents.getItemType() == StoreItemType.CALL_SCREEN.ordinal() && Prefs.cT.get().intValue() > 0) {
                    Prefs.cT.b(-1);
                } else if (!Prefs.cL.get().booleanValue() || Prefs.cM.get().intValue() <= 0) {
                    Prefs.cO.b(-1);
                    Prefs.cP.set(Boolean.FALSE);
                } else {
                    Prefs.cM.b(-1);
                    if (Prefs.cM.get().intValue() == 0) {
                        Prefs.cL.set(Boolean.FALSE);
                        downloaderCardEvents.i();
                    }
                }
            }
        }

        void a(T t, ProgressCardView progressCardView);

        boolean a(T t);

        void b(T t);

        boolean c();

        String[] c(T t);

        void d(T t);

        void e();

        void f();

        void g();

        int getItemType();

        String getLeftButtonPrefixText();

        Promotion.ProductType getPromotionType();

        BooleanPref getPurchasePref();

        boolean h();

        void i();

        boolean isLightTheme();

        boolean isSkuInUse();

        void j();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType.class */
    public enum StoreItemType {
        VIDEO_RINGTONE,
        CALL_SCREEN,
        PERSONAL_COVER,
        KEYPAD,
        THEME,
        COVER,
        OTHER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloaderCardViewHandler(BaseDownloaderActivity baseDownloaderActivity, ProgressCardView progressCardView, T t, DownloaderCardEvents downloaderCardEvents, String str) {
        this.f = downloaderCardEvents;
        this.e = t;
        this.f13104c = new WeakReference<>(baseDownloaderActivity);
        this.f13105d = progressCardView;
        SparseIntArray a2 = ThemeUtils.a(downloaderCardEvents == null || downloaderCardEvents.isLightTheme(), 2131099784, 2131099686);
        this.h = a2.get(2131099784);
        this.i = a2.get(2131099686);
        this.j = str;
        progressCardView.setVisibility(0);
        progressCardView.setCardBackgroundColor(ThemeUtils.getColor(2131099686));
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1
            @Override // java.lang.Runnable
            public void run() {
                final String imageUrl = DownloaderCardViewHandler.this.e.getImageUrl(0);
                if (StringUtils.b((CharSequence) imageUrl)) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloaderCardViewHandler.this.f13105d.setImageBackgroundUrl(imageUrl);
                        }
                    });
                } else {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloaderCardViewHandler.this.f13105d.setImageBackgroundColor(DownloaderCardViewHandler.this.e.getColor());
                        }
                    });
                }
            }
        });
        progressCardView.setTitle(t.getTitle());
        progressCardView.setDescription(t.getDescription());
        a();
        progressCardView.setListener(new ProgressCardView.SimpleCardViewEvents() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.2
            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            public final void a() {
                AnalyticsManager.get().a(Constants.STORE, "User pressed back to default", (String) null, 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.j);
                DownloaderCardViewHandler.this.a();
                if (DownloaderCardViewHandler.this.f != null) {
                    DownloaderCardViewHandler.this.f.g();
                }
                DownloaderCardViewHandler.this.a();
            }

            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            public final void b() {
                if (DownloaderCardViewHandler.this.e.isPurchased()) {
                    AnalyticsManager.get().a(Constants.STORE, "User pressed use it", DownloaderCardViewHandler.this.e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.j);
                    if (DownloaderCardViewHandler.this.f != null) {
                        DownloaderCardViewHandler.this.f.d(DownloaderCardViewHandler.this.e);
                    }
                    if (DownloaderCardViewHandler.this.f.getPurchasePref() != null) {
                        DownloaderCardViewHandler.this.f.getPurchasePref().set(Boolean.TRUE);
                    }
                    if (!DownloaderCardViewHandler.this.e.isNotValidForPromotion()) {
                        PromotionManager.c(DownloaderCardViewHandler.this.f.getPromotionType());
                    }
                } else if (DownloaderCardViewHandler.this.e.getPrice() <= BitmapDescriptorFactory.HUE_RED) {
                    if (!DownloaderCardViewHandler.this.e.isNotValidForPromotion()) {
                        PromotionManager.c(DownloaderCardViewHandler.this.f.getPromotionType());
                    }
                    AnalyticsManager.get().a(Constants.STORE, "User pressed use on free item", DownloaderCardViewHandler.this.e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.j);
                    DownloaderCardViewHandler.this.b();
                } else if (!DownloaderCardViewHandler.this.e.needDefaultDialer() || PhoneManager.get().isDefaultSystemPhoneApp()) {
                    AnalyticsManager.get().a(Constants.STORE, "User pressed buy item", DownloaderCardViewHandler.this.e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.j);
                    if (DownloaderCardViewHandler.this.f.a(DownloaderCardViewHandler.this.e)) {
                        DownloaderCardViewHandler.this.f.j();
                        AnalyticsManager.get().a(Constants.STORE, "Bought item with free store item", DownloaderCardViewHandler.this.e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.j);
                        DownloaderCardViewHandler.this.e.setPurchased(true);
                        if (DownloaderCardViewHandler.this.f.getPurchasePref() != null) {
                            DownloaderCardViewHandler.this.f.getPurchasePref().set(Boolean.TRUE);
                        }
                        if (!Prefs.n.get().booleanValue() && DownloaderCardViewHandler.this.e.getDaysOfFreeSubscription() > 0) {
                            Prefs.cN.set(DateUtils.a(DownloaderCardViewHandler.this.e.getDaysOfFreeSubscription(), 5).getTime());
                        }
                        DownloaderCardViewHandler.this.f.b(DownloaderCardViewHandler.this.e);
                        String[] strArr = Prefs.cW.get();
                        ArrayList arrayList = ArrayUtils.a(strArr) ? new ArrayList() : new ArrayList(Arrays.asList(strArr));
                        arrayList.add(DownloaderCardViewHandler.this.e.getSku());
                        Prefs.cW.set(arrayList.toArray(new String[arrayList.size()]));
                        DownloaderCardViewHandler.this.b();
                        return;
                    }
                    DownloaderCardViewHandler.this.g = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.2.1
                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public final void a() {
                            if (DownloaderCardViewHandler.this.f13104c != null && DownloaderCardViewHandler.this.g != null) {
                                DownloaderCardViewHandler.this.g.a((Activity) DownloaderCardViewHandler.this.f13104c.get(), DownloaderCardViewHandler.this.e.getSku(), "inapp");
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public /* synthetic */ void a(g gVar, List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public final void a(List<i> list) {
                            if (CollectionUtils.b(list)) {
                                Iterator<i> it2 = list.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    } else if (StringUtils.b((Object) it2.next().b(), (Object) DownloaderCardViewHandler.this.e.getSku())) {
                                        DownloaderCardViewHandler.this.e.setPurchased(true);
                                        if (DownloaderCardViewHandler.this.f.getPurchasePref() != null) {
                                            DownloaderCardViewHandler.this.f.getPurchasePref().set(Boolean.TRUE);
                                        }
                                        DownloaderCardViewHandler.this.e.setNotValidForPromotion(true);
                                        if (DownloaderCardViewHandler.this.e.getDaysOfFreeSubscription() > 0) {
                                            Prefs.cN.set(DateUtils.a(DownloaderCardViewHandler.this.e.getDaysOfFreeSubscription(), 5).getTime());
                                        }
                                        ((BaseDownloaderActivity) DownloaderCardViewHandler.this.f13104c.get()).setUserBuyProduct(true);
                                        DownloaderCardViewHandler.this.f.b(DownloaderCardViewHandler.this.e);
                                        PromotionManager.a(DownloaderCardViewHandler.this.f.getPromotionType());
                                        DownloaderCardViewHandler.this.b();
                                    }
                                }
                            }
                            DownloaderCardViewHandler.this.g.b();
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public /* synthetic */ void b(List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                        }
                    });
                } else {
                    PopupManager.get().a((Context) DownloaderCardViewHandler.this.f13104c.get(), new DefaultDialerDialogPopup(Activities.getString(2131887087), Activities.getString(2131887086), 2131232033));
                }
            }

            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            public final void c() {
                DownloaderCardViewHandler.this.f13102a.cancel();
                DownloaderCardViewHandler.this.f13105d.setProgressContainerVisibility(8);
                DownloaderCardViewHandler.this.a();
            }
        });
    }

    private SpannableString a(int i) {
        SpannableString spannableString;
        Currency instance;
        String priceCurrencyCode = this.e.getPriceCurrencyCode();
        String str = "";
        if (StringUtils.b((CharSequence) priceCurrencyCode)) {
            str = "";
            if (Currency.getInstance(priceCurrencyCode) != null) {
                str = "" + instance.getSymbol();
            }
        }
        float price = (this.e.getPrice() * 100.0f) / (100.0f - i);
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMinimumFractionDigits(2);
        numberInstance.setMaximumFractionDigits(2);
        String str2 = str + numberInstance.format(price);
        StringBuilder sb = new StringBuilder();
        if (CallAppApplication.get().getResources().getConfiguration().getLayoutDirection() == 1) {
            sb.append(Activities.getString(2131887445));
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            sb.append(i + "%");
            sb.append(" / ");
            sb.append(str2);
            int indexOf = sb.indexOf("/");
            if (indexOf >= 0) {
                spannableString = new SpannableString(sb);
                int i2 = indexOf - 1;
                spannableString.setSpan(new StyleSpan(1), 0, i2, 33);
                spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100093)), 0, i2, 33);
                spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), 0, i2, 33);
                int i3 = indexOf + 2;
                spannableString.setSpan(new TypefaceSpan("sans-serif-light"), i3, sb.length(), 33);
                spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100108)), i3, sb.length(), 33);
                spannableString.setSpan(new StrikethroughSpan(), i3, sb.length(), 33);
            }
            spannableString = null;
        } else {
            sb.append(str2);
            sb.append(" / ");
            sb.append(i + "%");
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            sb.append(Activities.getString(2131887445));
            int indexOf2 = sb.indexOf("/");
            if (indexOf2 >= 0) {
                spannableString = new SpannableString(sb);
                int i4 = indexOf2 - 1;
                spannableString.setSpan(new StrikethroughSpan(), 0, i4, 33);
                spannableString.setSpan(new TypefaceSpan("sans-serif-light"), 0, i4, 33);
                spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100108)), 0, indexOf2 + 1, 33);
                int i5 = indexOf2 + 2;
                spannableString.setSpan(new TypefaceSpan("sans-serif-medium"), i5, sb.length(), 33);
                spannableString.setSpan(new StyleSpan(1), i5, sb.length(), 33);
                spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131100093)), i5, sb.length(), 33);
            }
            spannableString = null;
        }
        if (spannableString != null) {
            this.f13105d.setLeftText(spannableString);
        }
        this.f13105d.setLeftTextVisibility(0);
        return spannableString;
    }

    private void c() {
        DownloaderCardEvents downloaderCardEvents = this.f;
        if (downloaderCardEvents == null || !(downloaderCardEvents.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal() || this.f.getItemType() == StoreItemType.PERSONAL_COVER.ordinal())) {
            DownloaderCardEvents downloaderCardEvents2 = this.f;
            int i = (downloaderCardEvents2 == null || !downloaderCardEvents2.isSkuInUse()) ? 2131888124 : 2131887027;
            ProgressCardView progressCardView = this.f13105d;
            int i2 = this.h;
            progressCardView.setRightButtonStyle(i2, i2, -1, new SpannableString(Activities.getString(i)));
            ProgressCardView progressCardView2 = this.f13105d;
            int i3 = this.i;
            int i4 = this.h;
            progressCardView2.setLeftButtonStyle(i3, i4, i4, Activities.getString(2131886289));
            DownloaderCardEvents downloaderCardEvents3 = this.f;
            if (downloaderCardEvents3 == null || !downloaderCardEvents3.h()) {
                this.f13105d.setLeftButtonVisibility(4);
            } else {
                this.f13105d.setLeftButtonVisibility(0);
            }
        } else {
            this.f13105d.setRightButtonStyle(ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131100211), ThemeUtils.getColor(2131100211), new SpannableString(Activities.getString(2131887487)));
        }
        this.f13105d.setLeftTextVisibility(8);
    }

    private void d() {
        DownloaderCardEvents downloaderCardEvents = this.f;
        setRightButtonStyle(downloaderCardEvents != null ? downloaderCardEvents.getLeftButtonPrefixText() : null);
        DownloaderCardEvents downloaderCardEvents2 = this.f;
        if (downloaderCardEvents2 != null && downloaderCardEvents2.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal()) {
            this.f13105d.setLeftButtonVisibility(8);
            if (StoreUtils.a(this.e)) {
                a(this.e.getPromotionPercent());
            } else {
                this.f13105d.setLeftTextVisibility(8);
            }
        } else if (StoreUtils.a(this.e)) {
            this.f13105d.setLeftButtonVisibility(8);
            a(this.e.getPromotionPercent());
        } else {
            this.f13105d.setLeftButtonVisibility(4);
            this.f13105d.setLeftTextVisibility(8);
        }
    }

    static /* synthetic */ void h(DownloaderCardViewHandler downloaderCardViewHandler) {
        downloaderCardViewHandler.a();
        DownloaderCardEvents downloaderCardEvents = downloaderCardViewHandler.f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.f();
        }
    }

    private void setRightButtonStyle(String str) {
        String str2;
        if (StringUtils.b((CharSequence) str)) {
            str2 = str + org.apache.commons.lang3.StringUtils.SPACE + this.e.getPriceWithCurrency();
        } else {
            str2 = this.e.getPriceWithCurrency();
        }
        SpannableString spannableString = new SpannableString(str2);
        if (this.f.a(this.e)) {
            spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
        }
        ProgressCardView progressCardView = this.f13105d;
        int i = this.h;
        progressCardView.setRightButtonStyle(i, i, this.i, spannableString);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        this.f13105d.setButtonsContainerVisibility(0);
        this.f13105d.setProgressContainerVisibility(8);
        if (this.e.isPurchased()) {
            c();
        } else {
            d();
        }
        DownloaderCardEvents downloaderCardEvents = this.f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.a(this.e, this.f13105d);
        }
    }

    public final void b() {
        DownloaderCardEvents downloaderCardEvents = this.f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.e();
        }
        this.f13105d.setButtonsContainerVisibility(8);
        ProgressCardView progressCardView = this.f13105d;
        progressCardView.f = ViewUtils.b(progressCardView.f);
        progressCardView.l = (TextView) progressCardView.f.findViewById(2131362630);
        progressCardView.h = (TextView) progressCardView.f.findViewById(2131362008);
        progressCardView.i = (TextView) progressCardView.f.findViewById(2131363492);
        progressCardView.j = (ImageView) progressCardView.f.findViewById(2131363998);
        progressCardView.j.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
        progressCardView.k = (ProgressBar) progressCardView.f.findViewById(2131363575);
        Drawable progressDrawable = progressCardView.k.getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        }
        progressCardView.l.setText(Activities.getString(2131886788));
        progressCardView.l.setTextColor(ProgressCardView.e);
        progressCardView.h.setTextColor(ProgressCardView.e);
        progressCardView.i.setTextColor(ProgressCardView.e);
        progressCardView.j.setOnClickListener(progressCardView.n);
        this.f13103b = new AnonymousClass3();
        CallAppApplication.get().a(this.f13103b, 1000L);
    }

    public ProgressCardView getProgressCardView() {
        return this.f13105d;
    }
}

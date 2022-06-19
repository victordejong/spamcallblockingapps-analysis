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
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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

    /* renamed from: a */
    Task f23365a;

    /* renamed from: b */
    Runnable f23366b;

    /* renamed from: c */
    private final WeakReference<BaseDownloaderActivity> f23367c;

    /* renamed from: d */
    private final ProgressCardView f23368d;

    /* renamed from: e */
    private final T f23369e;

    /* renamed from: f */
    private final DownloaderCardEvents f23370f;

    /* renamed from: g */
    private BillingManager f23371g;

    /* renamed from: h */
    private int f23372h;

    /* renamed from: i */
    private int f23373i;

    /* renamed from: j */
    private String f23374j;

    /* renamed from: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3.class */
    public class RunnableC66933 implements Runnable {

        /* renamed from: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler$3$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3$1.class */
        public class C66941 extends Task {
            C66941() {
                RunnableC66933.this = r4;
            }

            /* renamed from: a */
            public /* synthetic */ void m30103a(int i, int i2) {
                RunnableC66933.this.setProgressBarInDelay(i, i2);
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final String[] mo30012c = DownloaderCardViewHandler.this.f23370f.mo30012c(DownloaderCardViewHandler.this.f23369e);
                int i = 0;
                if (mo30012c != null) {
                    i = 0;
                    if (mo30012c.length > 0) {
                        final int length = mo30012c.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            final int i3 = i2;
                            final int i4 = i2;
                            new Task() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.1.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    int i5 = i3;
                                    String[] strArr = mo30012c;
                                    if (i5 < strArr.length) {
                                        String str = strArr[i5];
                                        if (!StringUtils.m26045b((CharSequence) str)) {
                                            return;
                                        }
                                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                                        glideRequestBuilder.f28239e = CallAppApplication.get();
                                        glideRequestBuilder.m27019b();
                                    }
                                }
                            }.setDoneListener(new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace._$$Lambda$DownloaderCardViewHandler$3$1$xXZxLD6kh9s1N9iT8xXbpI8zi_o
                                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                                public final void onDone() {
                                    DownloaderCardViewHandler.RunnableC66933.C66941.this.m30103a(i4, length);
                                }
                            }).execute();
                        }
                        return;
                    }
                }
                while (i < 5) {
                    RunnableC66933.this.setProgressBarInDelay(i, 5);
                    i++;
                }
            }
        }

        RunnableC66933() {
            DownloaderCardViewHandler.this = r4;
        }

        public void setProgressBarInDelay(final int i, final int i2) {
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.2
                @Override // java.lang.Runnable
                public void run() {
                    ProgressCardView progressCardView = DownloaderCardViewHandler.this.f23368d;
                    progressCardView.f28825m += Math.min(100 / (i2 + 1), 100);
                    progressCardView.setProgressProgress(progressCardView.f28825m);
                    progressCardView.setProgressPercentText(progressCardView.f28825m + "%");
                    if (i == i2 - 1) {
                        CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.3.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DownloaderCardViewHandler.m30105h(DownloaderCardViewHandler.this);
                            }
                        }, 500L);
                    }
                }
            }, i * 500);
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressCardView progressCardView = DownloaderCardViewHandler.this.f23368d;
            progressCardView.f28824l.setVisibility(8);
            progressCardView.f28820h.setVisibility(0);
            progressCardView.f28821i.setVisibility(0);
            progressCardView.f28822j.setVisibility(0);
            progressCardView.f28823k.setVisibility(0);
            progressCardView.f28823k.setProgress(0);
            DownloaderCardViewHandler.this.f23368d.setProgressPercentText("0%");
            DownloaderCardViewHandler.this.f23368d.getContext();
            DownloaderCardViewHandler.this.f23365a = new C66941().execute();
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
                return Prefs.f26344cO.get().intValue() > 0 || Prefs.f26340cK.get().booleanValue() || Prefs.f26342cM.get().intValue() > 0 || PromotionManager.m28514b(downloaderCardEvents.getPromotionType());
            }

            public static String $default$getLeftButtonPrefixText(DownloaderCardEvents downloaderCardEvents) {
                return null;
            }

            public static BooleanPref $default$getPurchasePref(DownloaderCardEvents downloaderCardEvents) {
                return null;
            }

            public static void $default$j(DownloaderCardEvents downloaderCardEvents) {
                if (downloaderCardEvents.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal() && Prefs.f26350cU.get().intValue() > 0) {
                    Prefs.f26350cU.m28169b(-1);
                } else if (downloaderCardEvents.getItemType() == StoreItemType.CALL_SCREEN.ordinal() && Prefs.f26349cT.get().intValue() > 0) {
                    Prefs.f26349cT.m28169b(-1);
                } else if (!Prefs.f26341cL.get().booleanValue() || Prefs.f26342cM.get().intValue() <= 0) {
                    Prefs.f26344cO.m28169b(-1);
                    Prefs.f26345cP.set(Boolean.FALSE);
                } else {
                    Prefs.f26342cM.m28169b(-1);
                    if (Prefs.f26342cM.get().intValue() != 0) {
                        return;
                    }
                    Prefs.f26341cL.set(Boolean.FALSE);
                    downloaderCardEvents.mo30006i();
                }
            }
        }

        /* renamed from: a */
        void mo30015a(T t, ProgressCardView progressCardView);

        /* renamed from: a */
        boolean mo30016a(T t);

        /* renamed from: b */
        void mo30014b(T t);

        /* renamed from: c */
        boolean mo30013c();

        /* renamed from: c */
        String[] mo30012c(T t);

        /* renamed from: d */
        void mo30011d(T t);

        /* renamed from: e */
        void mo30010e();

        /* renamed from: f */
        void mo30009f();

        /* renamed from: g */
        void mo30008g();

        int getItemType();

        String getLeftButtonPrefixText();

        Promotion.ProductType getPromotionType();

        BooleanPref getPurchasePref();

        /* renamed from: h */
        boolean mo30007h();

        /* renamed from: i */
        void mo30006i();

        boolean isLightTheme();

        boolean isSkuInUse();

        /* renamed from: j */
        void mo30005j();
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

    public DownloaderCardViewHandler(BaseDownloaderActivity baseDownloaderActivity, ProgressCardView progressCardView, T t, DownloaderCardEvents downloaderCardEvents, String str) {
        this.f23370f = downloaderCardEvents;
        this.f23369e = t;
        this.f23367c = new WeakReference<>(baseDownloaderActivity);
        this.f23368d = progressCardView;
        SparseIntArray m27379a = ThemeUtils.m27379a(downloaderCardEvents == null || downloaderCardEvents.isLightTheme(), 2131099784, 2131099686);
        this.f23372h = m27379a.get(2131099784);
        this.f23373i = m27379a.get(2131099686);
        this.f23374j = str;
        progressCardView.setVisibility(0);
        progressCardView.setCardBackgroundColor(ThemeUtils.getColor(2131099686));
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1
            @Override // java.lang.Runnable
            public void run() {
                final String imageUrl = DownloaderCardViewHandler.this.f23369e.getImageUrl(0);
                if (StringUtils.m26045b((CharSequence) imageUrl)) {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloaderCardViewHandler.this.f23368d.setImageBackgroundUrl(imageUrl);
                        }
                    });
                } else {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloaderCardViewHandler.this.f23368d.setImageBackgroundColor(DownloaderCardViewHandler.this.f23369e.getColor());
                        }
                    });
                }
            }
        });
        progressCardView.setTitle(t.getTitle());
        progressCardView.setDescription(t.getDescription());
        m30120a();
        progressCardView.setListener(new ProgressCardView.SimpleCardViewEvents() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.2
            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            /* renamed from: a */
            public final void mo26667a() {
                AnalyticsManager.get().mo28444a(Constants.STORE, "User pressed back to default", (String) null, 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.f23374j);
                DownloaderCardViewHandler.this.m30120a();
                if (DownloaderCardViewHandler.this.f23370f != null) {
                    DownloaderCardViewHandler.this.f23370f.mo30008g();
                }
                DownloaderCardViewHandler.this.m30120a();
            }

            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            /* renamed from: b */
            public final void mo26666b() {
                if (DownloaderCardViewHandler.this.f23369e.isPurchased()) {
                    AnalyticsManager.get().mo28444a(Constants.STORE, "User pressed use it", DownloaderCardViewHandler.this.f23369e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.f23374j);
                    if (DownloaderCardViewHandler.this.f23370f != null) {
                        DownloaderCardViewHandler.this.f23370f.mo30011d(DownloaderCardViewHandler.this.f23369e);
                    }
                    if (DownloaderCardViewHandler.this.f23370f.getPurchasePref() != null) {
                        DownloaderCardViewHandler.this.f23370f.getPurchasePref().set(Boolean.TRUE);
                    }
                    if (DownloaderCardViewHandler.this.f23369e.isNotValidForPromotion()) {
                        return;
                    }
                    PromotionManager.m28513c(DownloaderCardViewHandler.this.f23370f.getPromotionType());
                } else if (DownloaderCardViewHandler.this.f23369e.getPrice() <= BitmapDescriptorFactory.HUE_RED) {
                    if (!DownloaderCardViewHandler.this.f23369e.isNotValidForPromotion()) {
                        PromotionManager.m28513c(DownloaderCardViewHandler.this.f23370f.getPromotionType());
                    }
                    AnalyticsManager.get().mo28444a(Constants.STORE, "User pressed use on free item", DownloaderCardViewHandler.this.f23369e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.f23374j);
                    DownloaderCardViewHandler.this.m30114b();
                } else if (DownloaderCardViewHandler.this.f23369e.needDefaultDialer() && !PhoneManager.get().isDefaultSystemPhoneApp()) {
                    PopupManager.get().m28209a((Context) DownloaderCardViewHandler.this.f23367c.get(), new DefaultDialerDialogPopup(Activities.getString(2131887087), Activities.getString(2131887086), 2131232033));
                } else {
                    AnalyticsManager.get().mo28444a(Constants.STORE, "User pressed buy item", DownloaderCardViewHandler.this.f23369e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.f23374j);
                    if (!DownloaderCardViewHandler.this.f23370f.mo30016a(DownloaderCardViewHandler.this.f23369e)) {
                        DownloaderCardViewHandler.this.f23371g = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.DownloaderCardViewHandler.2.1
                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                            /* renamed from: a */
                            public final void mo26177a() {
                                if (DownloaderCardViewHandler.this.f23367c == null || DownloaderCardViewHandler.this.f23371g == null) {
                                    return;
                                }
                                DownloaderCardViewHandler.this.f23371g.m28297a((Activity) DownloaderCardViewHandler.this.f23367c.get(), DownloaderCardViewHandler.this.f23369e.getSku(), "inapp");
                            }

                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                            /* renamed from: a */
                            public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                                BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
                            }

                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                            /* renamed from: a */
                            public final void mo26175a(List<C3344i> list) {
                                if (CollectionUtils.m26068b(list)) {
                                    Iterator<C3344i> it2 = list.iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        } else if (StringUtils.m26044b((Object) it2.next().m38188b(), (Object) DownloaderCardViewHandler.this.f23369e.getSku())) {
                                            DownloaderCardViewHandler.this.f23369e.setPurchased(true);
                                            if (DownloaderCardViewHandler.this.f23370f.getPurchasePref() != null) {
                                                DownloaderCardViewHandler.this.f23370f.getPurchasePref().set(Boolean.TRUE);
                                            }
                                            DownloaderCardViewHandler.this.f23369e.setNotValidForPromotion(true);
                                            if (DownloaderCardViewHandler.this.f23369e.getDaysOfFreeSubscription() > 0) {
                                                Prefs.f26343cN.set(DateUtils.m27136a(DownloaderCardViewHandler.this.f23369e.getDaysOfFreeSubscription(), 5).getTime());
                                            }
                                            ((BaseDownloaderActivity) DownloaderCardViewHandler.this.f23367c.get()).setUserBuyProduct(true);
                                            DownloaderCardViewHandler.this.f23370f.mo30014b(DownloaderCardViewHandler.this.f23369e);
                                            PromotionManager.m28515a(DownloaderCardViewHandler.this.f23370f.getPromotionType());
                                            DownloaderCardViewHandler.this.m30114b();
                                        }
                                    }
                                }
                                DownloaderCardViewHandler.this.f23371g.m28290b();
                            }

                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                            /* renamed from: b */
                            public /* synthetic */ void mo26174b(List list) {
                                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                            }
                        });
                        return;
                    }
                    DownloaderCardViewHandler.this.f23370f.mo30005j();
                    AnalyticsManager.get().mo28444a(Constants.STORE, "Bought item with free store item", DownloaderCardViewHandler.this.f23369e.getSku(), 0.0d, Payload.SOURCE, DownloaderCardViewHandler.this.f23374j);
                    DownloaderCardViewHandler.this.f23369e.setPurchased(true);
                    if (DownloaderCardViewHandler.this.f23370f.getPurchasePref() != null) {
                        DownloaderCardViewHandler.this.f23370f.getPurchasePref().set(Boolean.TRUE);
                    }
                    if (!Prefs.f26657n.get().booleanValue() && DownloaderCardViewHandler.this.f23369e.getDaysOfFreeSubscription() > 0) {
                        Prefs.f26343cN.set(DateUtils.m27136a(DownloaderCardViewHandler.this.f23369e.getDaysOfFreeSubscription(), 5).getTime());
                    }
                    DownloaderCardViewHandler.this.f23370f.mo30014b(DownloaderCardViewHandler.this.f23369e);
                    String[] strArr = Prefs.f26352cW.get();
                    ArrayList arrayList = ArrayUtils.m27616a(strArr) ? new ArrayList() : new ArrayList(Arrays.asList(strArr));
                    arrayList.add(DownloaderCardViewHandler.this.f23369e.getSku());
                    Prefs.f26352cW.set(arrayList.toArray(new String[arrayList.size()]));
                    DownloaderCardViewHandler.this.m30114b();
                }
            }

            @Override // com.callapp.contacts.widget.ProgressCardView.SimpleCardViewEvents
            /* renamed from: c */
            public final void mo26665c() {
                DownloaderCardViewHandler.this.f23365a.cancel();
                DownloaderCardViewHandler.this.f23368d.setProgressContainerVisibility(8);
                DownloaderCardViewHandler.this.m30120a();
            }
        });
    }

    /* renamed from: a */
    private SpannableString m30119a(int i) {
        SpannableString spannableString;
        Currency currency;
        String priceCurrencyCode = this.f23369e.getPriceCurrencyCode();
        String str = "";
        if (StringUtils.m26045b((CharSequence) priceCurrencyCode)) {
            str = "";
            if (Currency.getInstance(priceCurrencyCode) != null) {
                str = "" + currency.getSymbol();
            }
        }
        float price = (this.f23369e.getPrice() * 100.0f) / (100.0f - i);
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
            this.f23368d.setLeftText(spannableString);
        }
        this.f23368d.setLeftTextVisibility(0);
        return spannableString;
    }

    /* renamed from: c */
    private void m30112c() {
        DownloaderCardEvents downloaderCardEvents = this.f23370f;
        if (downloaderCardEvents == null || !(downloaderCardEvents.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal() || this.f23370f.getItemType() == StoreItemType.PERSONAL_COVER.ordinal())) {
            DownloaderCardEvents downloaderCardEvents2 = this.f23370f;
            int i = (downloaderCardEvents2 == null || !downloaderCardEvents2.isSkuInUse()) ? 2131888124 : 2131887027;
            ProgressCardView progressCardView = this.f23368d;
            int i2 = this.f23372h;
            progressCardView.setRightButtonStyle(i2, i2, -1, new SpannableString(Activities.getString(i)));
            ProgressCardView progressCardView2 = this.f23368d;
            int i3 = this.f23373i;
            int i4 = this.f23372h;
            progressCardView2.setLeftButtonStyle(i3, i4, i4, Activities.getString(2131886289));
            DownloaderCardEvents downloaderCardEvents3 = this.f23370f;
            if (downloaderCardEvents3 == null || !downloaderCardEvents3.mo30007h()) {
                this.f23368d.setLeftButtonVisibility(4);
            } else {
                this.f23368d.setLeftButtonVisibility(0);
            }
        } else {
            this.f23368d.setRightButtonStyle(ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131100211), ThemeUtils.getColor(2131100211), new SpannableString(Activities.getString(2131887487)));
        }
        this.f23368d.setLeftTextVisibility(8);
    }

    /* renamed from: d */
    private void m30110d() {
        DownloaderCardEvents downloaderCardEvents = this.f23370f;
        setRightButtonStyle(downloaderCardEvents != null ? downloaderCardEvents.getLeftButtonPrefixText() : null);
        DownloaderCardEvents downloaderCardEvents2 = this.f23370f;
        if (downloaderCardEvents2 != null && downloaderCardEvents2.getItemType() == StoreItemType.VIDEO_RINGTONE.ordinal()) {
            this.f23368d.setLeftButtonVisibility(8);
            if (StoreUtils.m29951a(this.f23369e)) {
                m30119a(this.f23369e.getPromotionPercent());
            } else {
                this.f23368d.setLeftTextVisibility(8);
            }
        } else if (StoreUtils.m29951a(this.f23369e)) {
            this.f23368d.setLeftButtonVisibility(8);
            m30119a(this.f23369e.getPromotionPercent());
        } else {
            this.f23368d.setLeftButtonVisibility(4);
            this.f23368d.setLeftTextVisibility(8);
        }
    }

    /* renamed from: h */
    static /* synthetic */ void m30105h(DownloaderCardViewHandler downloaderCardViewHandler) {
        downloaderCardViewHandler.m30120a();
        DownloaderCardEvents downloaderCardEvents = downloaderCardViewHandler.f23370f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.mo30009f();
        }
    }

    private void setRightButtonStyle(String str) {
        String str2;
        if (StringUtils.m26045b((CharSequence) str)) {
            str2 = str + org.apache.commons.lang3.StringUtils.SPACE + this.f23369e.getPriceWithCurrency();
        } else {
            str2 = this.f23369e.getPriceWithCurrency();
        }
        SpannableString spannableString = new SpannableString(str2);
        if (this.f23370f.mo30016a(this.f23369e)) {
            spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
        }
        ProgressCardView progressCardView = this.f23368d;
        int i = this.f23372h;
        progressCardView.setRightButtonStyle(i, i, this.f23373i, spannableString);
    }

    /* renamed from: a */
    public final void m30120a() {
        this.f23368d.setButtonsContainerVisibility(0);
        this.f23368d.setProgressContainerVisibility(8);
        if (this.f23369e.isPurchased()) {
            m30112c();
        } else {
            m30110d();
        }
        DownloaderCardEvents downloaderCardEvents = this.f23370f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.mo30015a(this.f23369e, this.f23368d);
        }
    }

    /* renamed from: b */
    public final void m30114b() {
        DownloaderCardEvents downloaderCardEvents = this.f23370f;
        if (downloaderCardEvents != null) {
            downloaderCardEvents.mo30010e();
        }
        this.f23368d.setButtonsContainerVisibility(8);
        ProgressCardView progressCardView = this.f23368d;
        progressCardView.f28818f = ViewUtils.m27302b(progressCardView.f28818f);
        progressCardView.f28824l = (TextView) progressCardView.f28818f.findViewById(2131362630);
        progressCardView.f28820h = (TextView) progressCardView.f28818f.findViewById(2131362008);
        progressCardView.f28821i = (TextView) progressCardView.f28818f.findViewById(2131363492);
        progressCardView.f28822j = (ImageView) progressCardView.f28818f.findViewById(2131363998);
        progressCardView.f28822j.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
        progressCardView.f28823k = (ProgressBar) progressCardView.f28818f.findViewById(2131363575);
        Drawable progressDrawable = progressCardView.f28823k.getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        }
        progressCardView.f28824l.setText(Activities.getString(2131886788));
        progressCardView.f28824l.setTextColor(ProgressCardView.f28817e);
        progressCardView.f28820h.setTextColor(ProgressCardView.f28817e);
        progressCardView.f28821i.setTextColor(ProgressCardView.f28817e);
        progressCardView.f28822j.setOnClickListener(progressCardView.f28826n);
        this.f23366b = new RunnableC66933();
        CallAppApplication.get().m31869a(this.f23366b, 1000L);
    }

    public ProgressCardView getProgressCardView() {
        return this.f23368d;
    }
}

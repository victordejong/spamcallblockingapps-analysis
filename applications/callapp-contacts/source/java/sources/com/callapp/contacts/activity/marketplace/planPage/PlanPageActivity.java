package com.callapp.contacts.activity.marketplace.planPage;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0790b;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity.class */
public class PlanPageActivity extends BaseActivity {

    /* renamed from: a */
    public static long f23625a = 4000;

    /* renamed from: b */
    public static long f23626b = 2000;

    /* renamed from: A */
    private TextView f23627A;

    /* renamed from: B */
    private AbstractFutureC3598c<Bitmap> f23628B;

    /* renamed from: E */
    private String f23631E;

    /* renamed from: c */
    private SimpleProgressDialog f23635c;

    /* renamed from: d */
    private BillingManager f23636d;

    /* renamed from: e */
    private BillingManager f23637e;

    /* renamed from: f */
    private BillingManager f23638f;

    /* renamed from: g */
    private JsonPlanPageConfig f23639g;

    /* renamed from: k */
    private RelativeLayout f23642k;

    /* renamed from: l */
    private RelativeLayout f23643l;

    /* renamed from: m */
    private RelativeLayout f23644m;

    /* renamed from: n */
    private RelativeLayout f23645n;

    /* renamed from: o */
    private RelativeLayout f23646o;

    /* renamed from: p */
    private LinearLayout f23647p;

    /* renamed from: q */
    private LinearLayout f23648q;

    /* renamed from: r */
    private TextView f23649r;

    /* renamed from: s */
    private TextView f23650s;

    /* renamed from: t */
    private TextView f23651t;

    /* renamed from: u */
    private TextView f23652u;

    /* renamed from: v */
    private TextView f23653v;

    /* renamed from: w */
    private TextView f23654w;

    /* renamed from: x */
    private TextView f23655x;

    /* renamed from: y */
    private TextView f23656y;

    /* renamed from: z */
    private TextView f23657z;

    /* renamed from: h */
    private final HashMap<String, View> f23640h = new HashMap<>();

    /* renamed from: j */
    private final HashMap<String, SkuData> f23641j = new HashMap<>();

    /* renamed from: C */
    private Bitmap f23629C = null;

    /* renamed from: D */
    private boolean f23630D = true;

    /* renamed from: F */
    private boolean f23632F = true;

    /* renamed from: G */
    private boolean f23633G = false;

    /* renamed from: H */
    private boolean f23634H = false;

    /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2.class */
    public class RunnableC67962 implements Runnable {

        /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1.class */
        public class C67971 implements BillingManager.BillingUpdatesListener {

            /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1$1 */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1.class */
            public class C67981 implements AbstractC3350m {
                C67981() {
                    C67971.this = r4;
                }

                @Override // com.android.billingclient.api.AbstractC3350m
                /* renamed from: b */
                public final void mo28284b(C3341g c3341g, List<C3347k> list) {
                    SimpleProgressDialog.m27939a(PlanPageActivity.this.f23635c);
                    PlanPageActivity.this.f23633G = true;
                    if (CollectionUtils.m26068b(list)) {
                        PlanPageActivity.this.f23632F = false;
                        for (final C3347k c3347k : list) {
                            TextView textView = (TextView) PlanPageActivity.this.f23640h.get(c3347k.m38184a());
                            if (textView != null) {
                                PlanPageActivity.this.setButtonText(c3347k);
                                final ViewGroup viewGroup = (ViewGroup) textView.getParent();
                                viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.1.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        viewGroup.setEnabled(false);
                                        viewGroup.setClickable(false);
                                        PlanPageActivity.this.f23637e = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.1.1.1
                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26177a() {
                                                PlanPageActivity.this.f23637e.m28297a(PlanPageActivity.this, c3347k.m38184a(), "inapp");
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26176a(C3341g c3341g2, List<C3344i> list2) {
                                                viewGroup.setEnabled(true);
                                                viewGroup.setClickable(true);
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26175a(List<C3344i> list2) {
                                                Iterator<C3344i> it2 = list2.iterator();
                                                if (!it2.hasNext() || !StringUtils.m26035c(it2.next().m38188b(), "premium_recommended_05_2020", "premium_recommended", "callapp_premium_2_05_2020", "callapp_premium_2", "2016onetime", "2016onetime_05_2020")) {
                                                    return;
                                                }
                                                Prefs.f26342cM.set(2);
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: b */
                                            public final void mo26174b(List<C3344i> list2) {
                                                PlanPageActivity.this.m29936a();
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    }
                    PlanPageActivity.m29911j(PlanPageActivity.this);
                }
            }

            /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1$2 */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2.class */
            public class C68012 implements AbstractC3350m {
                C68012() {
                    C67971.this = r4;
                }

                @Override // com.android.billingclient.api.AbstractC3350m
                /* renamed from: b */
                public final void mo28284b(C3341g c3341g, List<C3347k> list) {
                    SimpleProgressDialog.m27939a(PlanPageActivity.this.f23635c);
                    PlanPageActivity.this.f23634H = true;
                    if (CollectionUtils.m26068b(list)) {
                        PlanPageActivity.this.f23632F = false;
                        for (final C3347k c3347k : list) {
                            TextView textView = (TextView) PlanPageActivity.this.f23640h.get(c3347k.m38184a());
                            if (textView != null) {
                                PlanPageActivity.this.setButtonText(c3347k);
                                final ViewGroup viewGroup = (ViewGroup) textView.getParent();
                                viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.2.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        viewGroup.setEnabled(false);
                                        viewGroup.setClickable(false);
                                        PlanPageActivity.this.f23637e = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.2.1.1
                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26177a() {
                                                PlanPageActivity.this.f23637e.m28297a(PlanPageActivity.this, c3347k.m38184a(), "subs");
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26176a(C3341g c3341g2, List<C3344i> list2) {
                                                viewGroup.setEnabled(true);
                                                viewGroup.setClickable(true);
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: a */
                                            public final void mo26175a(List<C3344i> list2) {
                                                Iterator<C3344i> it2 = list2.iterator();
                                                if (it2.hasNext()) {
                                                    C3344i next = it2.next();
                                                    if (!next.m38188b().equals("monthly_03_05_2020") && !next.m38188b().equals("yearly_03") && !next.m38188b().equalsIgnoreCase("yearly_recommended_05_2020") && !next.m38188b().equalsIgnoreCase("monthly_recommended_05_2020") && !next.m38188b().equals("monthly_03") && !next.m38188b().equalsIgnoreCase("yearly_recommended") && !next.m38188b().equalsIgnoreCase("monthly_recommended")) {
                                                        return;
                                                    }
                                                    Prefs.f26342cM.set(5);
                                                }
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            /* renamed from: b */
                                            public final void mo26174b(List<C3344i> list2) {
                                                PlanPageActivity.this.m29936a();
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    }
                    PlanPageActivity.m29911j(PlanPageActivity.this);
                }
            }

            C67971() {
                RunnableC67962.this = r4;
            }

            /* renamed from: a */
            public /* synthetic */ void m29905a(List list, CatalogManager.CatalogAttributes catalogAttributes) {
                PlanPageActivity.this.f23636d.m28292a("inapp", list, new C67981());
                PlanPageActivity.this.f23636d.m28292a("subs", list, new C68012());
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                if (PlanPageActivity.this.f23636d != null) {
                    PlanPageActivity.this.f23636d.m28298a();
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26175a(List<C3344i> list) {
                final ArrayList arrayList = new ArrayList();
                for (SkuData skuData : PlanPageActivity.this.f23639g.getSkuInformation()) {
                    arrayList.add(skuData.getSkuId());
                }
                CatalogManager.get().m29979a(PlanPageActivity.this.f23636d, list).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public final void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        PlanPageActivity.RunnableC67962.C67971.this.m29905a(arrayList, catalogAttributes);
                    }
                });
                String m29921a = PlanPageActivity.m29921a(list);
                if (StringUtils.m26045b((CharSequence) m29921a)) {
                    PlanPageActivity.this.setPremiumWhenPurchaseSuccess(m29921a);
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        }

        RunnableC67962() {
            PlanPageActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            PlanPageActivity.this.f23636d = new BillingManager(new C67971());
        }
    }

    /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4.class */
    public class C68054 implements BillingManager.BillingUpdatesListener {
        C68054() {
            PlanPageActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m29904a(Activity activity) {
            AndroidUtils.m27633a(PlanPageActivity.this, Activities.getString(2131887415));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26177a() {
            if (PlanPageActivity.this.f23638f != null) {
                PlanPageActivity.this.f23638f.m28298a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26175a(List<C3344i> list) {
            PlanPageActivity.this.f23638f.m28290b();
            PlanPageActivity.this.f23638f = null;
            DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131887427), Activities.getString(2131887426), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$4$5jvYYfQ5qSiSbCLqVBjMTvOhPyY
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    PlanPageActivity.C68054.this.m29904a(activity);
                }
            }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.4.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                /* renamed from: a */
                public final void mo26209a(DialogPopup dialogPopup) {
                    AndroidUtils.m27633a(PlanPageActivity.this, Activities.getString(2131887415));
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                /* renamed from: b */
                public final void mo26208b(DialogPopup dialogPopup) {
                    AndroidUtils.m27633a(PlanPageActivity.this, Activities.getString(2131887415));
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                }
            });
            dialogSimpleMessage.setCancelable(false);
            PopupManager.get().m28209a(PlanPageActivity.this, dialogSimpleMessage);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: b */
        public /* synthetic */ void mo26174b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    /* renamed from: a */
    private SpannableStringBuilder m29932a(C3347k c3347k) {
        return m29931a(c3347k, (TextView) this.f23640h.get(c3347k.m38184a()), this.f23641j.get(c3347k.m38184a()));
    }

    /* JADX WARN: Type inference failed for: r0v104, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* renamed from: a */
    private SpannableStringBuilder m29931a(C3347k c3347k, TextView textView, SkuData skuData) {
        char c;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String m38179f = c3347k.m38179f();
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        String m38184a = c3347k.m38184a();
        Currency currency = Currency.getInstance(c3347k.m38181d());
        int indexOf = m38179f.indexOf("#");
        boolean z = indexOf >= 0;
        char m38182c = c3347k.m38182c() / 1000000.0d;
        textView.setTextSize(0, skuData.getPriceSize());
        if (StringUtils.m26030e(m38184a, "yearly")) {
            c = m38182c;
            m38182c /= 0;
        } else {
            c = 0;
        }
        String str = currency.getSymbol() + decimalFormat.format((double) m38182c);
        if (!z) {
            indexOf = m38179f.length();
        }
        String substring = m38179f.substring(0, indexOf);
        if (z) {
            int parseInt = Integer.parseInt(StringUtils.m26052a(m38179f, "#@", "@#"));
            double d = (100.0d - parseInt) / 100.0d;
            String str2 = currency.getSymbol() + decimalFormat.format(m38182c / d);
            if (skuData.isStrike()) {
                SpannableString spannableString = new SpannableString(str2);
                if (StringUtils.m26045b((CharSequence) str2)) {
                    spannableString.setSpan(new RelativeSizeSpan(1.1f), 0, str2.length(), 0);
                    spannableString.setSpan(new StrikethroughSpan(), 0, str2.length(), 33);
                    if (StringUtils.m26045b((CharSequence) skuData.getPriceBeforeColor())) {
                        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(skuData.getPriceBeforeColor())), 0, str2.length(), 33);
                    }
                    spannableStringBuilder.append((CharSequence) spannableString);
                    spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.SPACE).append((CharSequence) org.apache.commons.lang3.StringUtils.SPACE);
                }
            }
            m29935a(parseInt, textView, ImageView.ScaleType.FIT_XY);
        }
        SpannableString spannableString2 = new SpannableString(str);
        if (StringUtils.m26045b((CharSequence) str)) {
            spannableString2.setSpan(new RelativeSizeSpan(1.1f), 0, str.length(), 0);
            spannableString2.setSpan(new StyleSpan(1), 0, str.length(), 0);
            if (StringUtils.m26045b((CharSequence) skuData.getPriceColor())) {
                spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor(skuData.getPriceColor())), 0, str.length(), 33);
            }
            spannableStringBuilder.append((CharSequence) spannableString2);
        }
        SpannableString spannableString3 = new SpannableString(substring);
        if (StringUtils.m26045b((CharSequence) substring)) {
            spannableString3.setSpan(new RelativeSizeSpan(0.7f), 0, substring.length(), 0);
            if (StringUtils.m26045b((CharSequence) skuData.getPriceColor())) {
                spannableString3.setSpan(new ForegroundColorSpan(Color.parseColor(skuData.getPriceColor())), 0, substring.length(), 33);
            }
            spannableStringBuilder.append((CharSequence) spannableString3);
        }
        if (StringUtils.m26030e(m38184a, "yearly") && StringUtils.m26045b(spannableString3)) {
            SpannableString spannableString4 = new SpannableString(org.apache.commons.lang3.StringUtils.SPACE + currency.getSymbol() + decimalFormat.format((double) c));
            if (StringUtils.m26045b((CharSequence) skuData.getPriceColor()) && StringUtils.m26045b(spannableString4)) {
                spannableString4.setSpan(new ForegroundColorSpan(Color.parseColor(skuData.getPriceColor())), 0, spannableString4.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString4);
            }
        }
        return spannableStringBuilder;
    }

    /* renamed from: a */
    private static JsonPlanPageConfig m29922a(String str) {
        String string = str.equals("default") ? CallAppApplication.get().getString(2131886714) : CallAppRemoteConfigManager.get().m28703a(str);
        if (StringUtils.m26045b((CharSequence) string)) {
            try {
                JSONPlanPageItem jSONPlanPageItem = (JSONPlanPageItem) Parser.m26917a(string, new TypeReference<JSONPlanPageItem>() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.6
                });
                if (jSONPlanPageItem == null) {
                    return null;
                }
                return jSONPlanPageItem.getJsonPlanPageConfig();
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.String m29921a(java.util.List r3) {
        /*
            r0 = r3
            boolean r0 = com.callapp.framework.util.CollectionUtils.m26068b(r0)
            if (r0 == 0) goto L4a
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r3 = r0
        Le:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L4a
            r0 = r3
            java.lang.Object r0 = r0.next()
            com.android.billingclient.api.i r0 = (com.android.billingclient.api.C3344i) r0
            r4 = r0
            java.lang.String r0 = "subs"
            java.util.List r0 = com.callapp.contacts.manager.inAppBilling.BillingManager.m28293a(r0)
            r1 = r4
            java.lang.String r1 = r1.m38188b()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L45
            java.lang.String r0 = "inapp"
            java.util.List r0 = com.callapp.contacts.manager.inAppBilling.BillingManager.m28293a(r0)
            r1 = r4
            java.lang.String r1 = r1.m38188b()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto Le
        L45:
            r0 = r4
            java.lang.String r0 = r0.m38188b()
            return r0
        L4a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.m29921a(java.util.List):java.lang.String");
    }

    /* renamed from: a */
    public void m29936a() {
        this.f23638f = new BillingManager(new C68054());
    }

    /* renamed from: a */
    private void m29935a(final int i, TextView textView, final ImageView.ScaleType scaleType) {
        ViewParent parent = textView.getParent();
        if (parent instanceof RelativeLayout) {
            final RelativeLayout relativeLayout = (RelativeLayout) parent;
            final String badge = this.f23639g.getBadge();
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    PlanPageActivity.this.f23628B = GlideUtils.m27037a(badge);
                    if (PlanPageActivity.this.f23628B != null) {
                        try {
                            PlanPageActivity planPageActivity = PlanPageActivity.this;
                            planPageActivity.f23629C = (Bitmap) planPageActivity.f23628B.get();
                            if (PlanPageActivity.this.f23629C == null) {
                                return;
                            }
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Bitmap bitmap = PlanPageActivity.this.f23629C;
                                    Bitmap m27534a = ImageUtils.m27534a(bitmap, org.apache.commons.lang3.StringUtils.SPACE + i + "%");
                                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                                    layoutParams.addRule(PlanPageActivity.this.f23639g.getBadgePosition().equals("RIGHT") ? 11 : 9);
                                    ImageView imageView = new ImageView(CallAppApplication.get());
                                    imageView.setImageBitmap(m27534a);
                                    imageView.setScaleType(scaleType);
                                    relativeLayout.addView(imageView, layoutParams);
                                }
                            });
                        } catch (InterruptedException | ExecutionException e) {
                            CLog.m27609a(PlanPageActivity.class, e);
                        }
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private void m29933a(ConstraintLayout constraintLayout) {
        ImageView imageView = (ImageView) constraintLayout.findViewById(2131364172);
        final ImageView imageView2 = (ImageView) constraintLayout.findViewById(2131363280);
        final RelativeLayout relativeLayout = (RelativeLayout) constraintLayout.findViewById(2131363896);
        ImageView imageView3 = (ImageView) constraintLayout.findViewById(2131362052);
        LinearLayout linearLayout = (LinearLayout) constraintLayout.findViewById(2131364505);
        LinearLayout linearLayout2 = (LinearLayout) constraintLayout.findViewById(2131362979);
        this.f23642k = (RelativeLayout) constraintLayout.findViewById(2131363883);
        this.f23643l = (RelativeLayout) constraintLayout.findViewById(2131363890);
        this.f23644m = (RelativeLayout) constraintLayout.findViewById(2131363894);
        this.f23645n = (RelativeLayout) constraintLayout.findViewById(2131363881);
        this.f23646o = (RelativeLayout) constraintLayout.findViewById(2131363888);
        this.f23647p = (LinearLayout) constraintLayout.findViewById(2131363882);
        this.f23648q = (LinearLayout) constraintLayout.findViewById(2131363889);
        this.f23649r = (TextView) constraintLayout.findViewById(2131363885);
        this.f23650s = (TextView) constraintLayout.findViewById(2131363892);
        this.f23651t = (TextView) constraintLayout.findViewById(2131363895);
        this.f23652u = (TextView) constraintLayout.findViewById(2131363884);
        this.f23653v = (TextView) constraintLayout.findViewById(2131363891);
        this.f23654w = (TextView) constraintLayout.findViewById(2131363880);
        this.f23655x = (TextView) constraintLayout.findViewById(2131363887);
        this.f23656y = (TextView) constraintLayout.findViewById(2131363893);
        this.f23657z = (TextView) constraintLayout.findViewById(2131363879);
        this.f23627A = (TextView) constraintLayout.findViewById(2131363886);
        final ScrollView scrollView = (ScrollView) constraintLayout.findViewById(2131363746);
        JsonPlanPageConfig jsonPlanPageConfig = this.f23639g;
        if (jsonPlanPageConfig != null) {
            if (!jsonPlanPageConfig.getShowTopBackground()) {
                imageView.setVisibility(8);
            } else if (StringUtils.m26045b((CharSequence) this.f23639g.getTopBackground())) {
                imageView.setVisibility(0);
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, this.f23639g.getTopBackground(), this);
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.m27013d();
            }
            if (StringUtils.m26045b((CharSequence) this.f23639g.getMiddleBackground())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(imageView2, this.f23639g.getMiddleBackground(), this);
                glideRequestBuilder2.f28251q = true;
                glideRequestBuilder2.m27013d();
            }
            if (StringUtils.m26045b((CharSequence) this.f23639g.getBottomBackground())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this, this.f23639g.getBottomBackground(), relativeLayout, new GlideUtils.CustomViewListener() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$7YAb3Wq4OeRYi1fgAA5A50khb5A
                    @Override // com.callapp.contacts.util.glide.GlideUtils.CustomViewListener
                    public final void onResourceReady(Drawable drawable, AbstractC3595d abstractC3595d) {
                        relativeLayout.setBackground(drawable);
                    }
                });
                glideRequestBuilder3.f28251q = true;
                glideRequestBuilder3.m27013d();
            } else if (StringUtils.m26045b((CharSequence) this.f23639g.getBottomBackgroundColor())) {
                relativeLayout.setBackgroundColor(Color.parseColor(this.f23639g.getBottomBackgroundColor()));
            }
            if (this.f23639g.getBottomBackgroundAlpha() > BitmapDescriptorFactory.HUE_RED && relativeLayout.getBackground() != null) {
                relativeLayout.getBackground().setAlpha(this.f23639g.getBottomBackgroundAlpha());
            }
            if (StringUtils.m26045b((CharSequence) this.f23639g.getContainerBackground())) {
                imageView3.setVisibility(0);
                GlideUtils.GlideRequestBuilder glideRequestBuilder4 = new GlideUtils.GlideRequestBuilder(imageView3, this.f23639g.getContainerBackground(), this);
                glideRequestBuilder4.f28251q = true;
                glideRequestBuilder4.m27013d();
            } else if (StringUtils.m26045b((CharSequence) this.f23639g.getContainerBackgroundColor())) {
                imageView3.setVisibility(0);
                imageView3.setBackgroundColor(Color.parseColor(this.f23639g.getContainerBackgroundColor()));
            } else {
                imageView3.setVisibility(8);
            }
            if (!StringUtils.m26045b((CharSequence) this.f23639g.getViewType()) || !this.f23639g.getViewType().equals("VERTICAL")) {
                linearLayout2.setVisibility(0);
                linearLayout.setVisibility(8);
            } else {
                linearLayout.setVisibility(0);
                linearLayout2.setVisibility(8);
            }
            for (SkuData skuData : this.f23639g.getSkuInformation()) {
                this.f23641j.put(skuData.getSkuId(), skuData);
                if (skuData.getSkuLocation() == 1) {
                    if (!StringUtils.m26045b((CharSequence) this.f23639g.getViewType()) || !this.f23639g.getViewType().equals("VERTICAL")) {
                        this.f23645n.setVisibility(0);
                        this.f23647p.setVisibility(0);
                        this.f23640h.put(skuData.getSkuId(), this.f23652u);
                        m29923a(this.f23641j.get(skuData.getSkuId()), this.f23639g.getShape(), this.f23645n);
                    } else {
                        this.f23642k.setVisibility(0);
                        this.f23640h.put(skuData.getSkuId(), this.f23649r);
                        m29923a(this.f23641j.get(skuData.getSkuId()), this.f23639g.getShape(), this.f23642k);
                    }
                }
                if (skuData.getSkuLocation() == 2) {
                    if (!StringUtils.m26045b((CharSequence) this.f23639g.getViewType()) || !this.f23639g.getViewType().equals("VERTICAL")) {
                        this.f23646o.setVisibility(0);
                        this.f23648q.setVisibility(0);
                        this.f23640h.put(skuData.getSkuId(), this.f23653v);
                        m29923a(this.f23641j.get(skuData.getSkuId()), this.f23639g.getShape(), this.f23646o);
                    } else {
                        this.f23643l.setVisibility(0);
                        this.f23640h.put(skuData.getSkuId(), this.f23650s);
                        m29923a(this.f23641j.get(skuData.getSkuId()), this.f23639g.getShape(), this.f23643l);
                    }
                }
                if (skuData.getSkuLocation() == 3 && StringUtils.m26045b((CharSequence) this.f23639g.getViewType()) && this.f23639g.getViewType().equals("VERTICAL")) {
                    this.f23644m.setVisibility(0);
                    this.f23640h.put(skuData.getSkuId(), this.f23651t);
                    m29923a(this.f23641j.get(skuData.getSkuId()), this.f23639g.getShape(), this.f23644m);
                }
            }
            for (String str : this.f23641j.keySet()) {
                boolean isMarkWithStar = this.f23641j.get(str).isMarkWithStar();
                TextView textView = (TextView) this.f23640h.get(str);
                if (textView != null && isMarkWithStar) {
                    textView.setCompoundDrawablesWithIntrinsicBounds(2131231906, 0, 0, 0);
                    textView.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165649));
                }
            }
            if (imageView2 == null) {
                return;
            }
            scrollView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (PlanPageActivity.this.f23630D) {
                        ObjectAnimator.ofInt(scrollView, "scrollY", imageView2.getHeight()).setDuration(2000L).start();
                        scrollView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (PlanPageActivity.this.f23630D) {
                                    ObjectAnimator.ofInt(scrollView, "scrollY", 0).setDuration(1000L).start();
                                }
                            }
                        }, PlanPageActivity.f23626b);
                    }
                }
            }, f23625a);
        }
    }

    /* renamed from: a */
    public static void m29924a(SkuData skuData, TextView textView) {
        if (skuData == null || !skuData.showDisclaimer || textView == null) {
            return;
        }
        textView.setVisibility(0);
        textView.setText(skuData.getDisclaimer());
        if (StringUtils.m26045b((CharSequence) skuData.getDisclaimerColor())) {
            textView.setTextColor(Color.parseColor(skuData.getDisclaimerColor()));
        }
        textView.setTextSize(0, skuData.getDisclaimerSize());
    }

    /* renamed from: a */
    public static void m29923a(SkuData skuData, String str, View view) {
        if (skuData == null || str == null) {
            return;
        }
        ViewUtils.m27299b(view, str.equals("ROUNDED") ? 2131232154 : 2131232153, Color.parseColor(StringUtils.m26045b((CharSequence) skuData.getFillColor()) ? skuData.getFillColor() : "#FFFFFF"), Color.parseColor(StringUtils.m26045b((CharSequence) skuData.getOutlineColor()) ? skuData.getOutlineColor() : "#1DA03F"), 4);
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        view.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
    }

    /* renamed from: j */
    static /* synthetic */ void m29911j(PlanPageActivity planPageActivity) {
        if (!planPageActivity.f23632F || !planPageActivity.f23633G || !planPageActivity.f23634H) {
            return;
        }
        PopupManager.get().m28209a(planPageActivity, new DialogSimpleMessage(Activities.getString(2131888107), Activities.getString(2131888108), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                PlanPageActivity.this.finish();
            }
        }, null));
    }

    public void setButtonText(C3347k c3347k) {
        switch (this.f23640h.get(c3347k.m38184a()).getId()) {
            case 2131363884:
                TextView textView = this.f23652u;
                if (textView == null) {
                    return;
                }
                textView.setText(m29932a(c3347k));
                m29924a(this.f23641j.get(c3347k.m38184a()), this.f23657z);
                return;
            case 2131363885:
                TextView textView2 = this.f23649r;
                if (textView2 == null) {
                    return;
                }
                textView2.setText(m29932a(c3347k));
                m29924a(this.f23641j.get(c3347k.m38184a()), this.f23654w);
                return;
            case 2131363891:
                TextView textView3 = this.f23653v;
                if (textView3 == null) {
                    return;
                }
                textView3.setText(m29932a(c3347k));
                m29924a(this.f23641j.get(c3347k.m38184a()), this.f23627A);
                return;
            case 2131363892:
                TextView textView4 = this.f23650s;
                if (textView4 == null) {
                    return;
                }
                textView4.setText(m29932a(c3347k));
                m29924a(this.f23641j.get(c3347k.m38184a()), this.f23655x);
                return;
            case 2131363895:
                TextView textView5 = this.f23651t;
                if (textView5 == null) {
                    return;
                }
                textView5.setText(m29932a(c3347k));
                m29924a(this.f23641j.get(c3347k.m38184a()), this.f23656y);
                return;
            default:
                return;
        }
    }

    public void setPremiumWhenPurchaseSuccess(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            Prefs.f26339cJ.set(Boolean.TRUE);
            m29936a();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.f23630D = false;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558462;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        showActionBar(false);
        if (getIntent() != null && getIntent().getExtras() != null) {
            this.f23631E = getIntent().getExtras().getString("PLAN_PAGE_SOURCE");
            this.f23639g = m29922a(this.f23631E + "PremiumConfig");
        }
        if (this.f23639g == null) {
            this.f23639g = m29922a("default");
        }
        AnalyticsManager.get().m28449a(Constants.PLAN_PAGE, Constants.PLAN_PAGE_VIEW, this.f23631E);
        m29933a((ConstraintLayout) findViewById(2131363706));
        CallAppApplication.get().m31864b(new RunnableC67962());
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f23635c = simpleProgressDialog;
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        PopupManager.get().m28209a(this, this.f23635c);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        SimpleProgressDialog.m27939a(this.f23635c);
        this.f23635c = null;
        BillingManager billingManager = this.f23636d;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        BillingManager billingManager2 = this.f23637e;
        if (billingManager2 != null) {
            billingManager2.m28290b();
        }
        AbstractFutureC3598c<Bitmap> abstractFutureC3598c = this.f23628B;
        if (abstractFutureC3598c != null) {
            abstractFutureC3598c.cancel(false);
            GlideUtils.m27035b(CallAppApplication.get()).m37548a((AbstractC3585j<?>) this.f23628B);
        }
        super.onDestroy();
    }
}

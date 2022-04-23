package com.callapp.contacts.activity.marketplace.planPage;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
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
import androidx.core.content.b;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.android.billingclient.api.k;
import com.android.billingclient.api.m;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.b.d;
import com.bumptech.glide.e.c;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity.class */
public class PlanPageActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    public static long f13290a = 4000;

    /* renamed from: b  reason: collision with root package name */
    public static long f13291b = 2000;
    private TextView A;
    private c<Bitmap> B;
    private String E;

    /* renamed from: c  reason: collision with root package name */
    private SimpleProgressDialog f13292c;

    /* renamed from: d  reason: collision with root package name */
    private BillingManager f13293d;
    private BillingManager e;
    private BillingManager f;
    private JsonPlanPageConfig g;
    private RelativeLayout k;
    private RelativeLayout l;
    private RelativeLayout m;
    private RelativeLayout n;
    private RelativeLayout o;
    private LinearLayout p;
    private LinearLayout q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private TextView z;
    private final HashMap<String, View> h = new HashMap<>();
    private final HashMap<String, SkuData> j = new HashMap<>();
    private Bitmap C = null;
    private boolean D = true;
    private boolean F = true;
    private boolean G = false;
    private boolean H = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2.class */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1.class */
        class AnonymousClass1 implements BillingManager.BillingUpdatesListener {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$1.class */
            public class C02701 implements m {
                C02701() {
                }

                @Override // com.android.billingclient.api.m
                public final void b(g gVar, List<k> list) {
                    SimpleProgressDialog.a(PlanPageActivity.this.f13292c);
                    PlanPageActivity.this.G = true;
                    if (CollectionUtils.b(list)) {
                        PlanPageActivity.this.F = false;
                        for (final k kVar : list) {
                            TextView textView = (TextView) PlanPageActivity.this.h.get(kVar.a());
                            if (textView != null) {
                                PlanPageActivity.this.setButtonText(kVar);
                                final ViewGroup viewGroup = (ViewGroup) textView.getParent();
                                viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.1.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        viewGroup.setEnabled(false);
                                        viewGroup.setClickable(false);
                                        PlanPageActivity.this.e = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.1.1.1
                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a() {
                                                PlanPageActivity.this.e.a(PlanPageActivity.this, kVar.a(), "inapp");
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a(g gVar2, List<i> list2) {
                                                viewGroup.setEnabled(true);
                                                viewGroup.setClickable(true);
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a(List<i> list2) {
                                                Iterator<i> it2 = list2.iterator();
                                                if (it2.hasNext() && StringUtils.c(it2.next().b(), "premium_recommended_05_2020", "premium_recommended", "callapp_premium_2_05_2020", "callapp_premium_2", "2016onetime", "2016onetime_05_2020")) {
                                                    Prefs.cM.set(2);
                                                }
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void b(List<i> list2) {
                                                PlanPageActivity.this.a();
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    }
                    PlanPageActivity.j(PlanPageActivity.this);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$2$1$2  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2.class */
            public class C02732 implements m {
                C02732() {
                }

                @Override // com.android.billingclient.api.m
                public final void b(g gVar, List<k> list) {
                    SimpleProgressDialog.a(PlanPageActivity.this.f13292c);
                    PlanPageActivity.this.H = true;
                    if (CollectionUtils.b(list)) {
                        PlanPageActivity.this.F = false;
                        for (final k kVar : list) {
                            TextView textView = (TextView) PlanPageActivity.this.h.get(kVar.a());
                            if (textView != null) {
                                PlanPageActivity.this.setButtonText(kVar);
                                final ViewGroup viewGroup = (ViewGroup) textView.getParent();
                                viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.2.1
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View view) {
                                        viewGroup.setEnabled(false);
                                        viewGroup.setClickable(false);
                                        PlanPageActivity.this.e = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.2.1.2.1.1
                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a() {
                                                PlanPageActivity.this.e.a(PlanPageActivity.this, kVar.a(), "subs");
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a(g gVar2, List<i> list2) {
                                                viewGroup.setEnabled(true);
                                                viewGroup.setClickable(true);
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void a(List<i> list2) {
                                                Iterator<i> it2 = list2.iterator();
                                                if (it2.hasNext()) {
                                                    i next = it2.next();
                                                    if (next.b().equals("monthly_03_05_2020") || next.b().equals("yearly_03") || next.b().equalsIgnoreCase("yearly_recommended_05_2020") || next.b().equalsIgnoreCase("monthly_recommended_05_2020") || next.b().equals("monthly_03") || next.b().equalsIgnoreCase("yearly_recommended") || next.b().equalsIgnoreCase("monthly_recommended")) {
                                                        Prefs.cM.set(5);
                                                    }
                                                }
                                            }

                                            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                                            public final void b(List<i> list2) {
                                                PlanPageActivity.this.a();
                                            }
                                        });
                                    }
                                });
                            }
                        }
                    }
                    PlanPageActivity.j(PlanPageActivity.this);
                }
            }

            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a(List list, CatalogManager.CatalogAttributes catalogAttributes) {
                PlanPageActivity.this.f13293d.a("inapp", list, new C02701());
                PlanPageActivity.this.f13293d.a("subs", list, new C02732());
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                if (PlanPageActivity.this.f13293d != null) {
                    PlanPageActivity.this.f13293d.a();
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(g gVar, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(List<i> list) {
                final ArrayList arrayList = new ArrayList();
                for (SkuData skuData : PlanPageActivity.this.g.getSkuInformation()) {
                    arrayList.add(skuData.getSkuId());
                }
                CatalogManager.get().a(PlanPageActivity.this.f13293d, list).a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$2$1$GYn31lLRteULs5Brct4PJprMGLw
                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public final void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        PlanPageActivity.AnonymousClass2.AnonymousClass1.this.a(arrayList, catalogAttributes);
                    }
                });
                String a2 = PlanPageActivity.a(list);
                if (StringUtils.b((CharSequence) a2)) {
                    PlanPageActivity.this.setPremiumWhenPurchaseSuccess(a2);
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        }

        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PlanPageActivity.this.f13293d = new BillingManager(new AnonymousClass1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$4.class */
    public class AnonymousClass4 implements BillingManager.BillingUpdatesListener {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Activity activity) {
            AndroidUtils.a(PlanPageActivity.this, Activities.getString(2131887415));
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a() {
            if (PlanPageActivity.this.f != null) {
                PlanPageActivity.this.f.a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void a(g gVar, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public final void a(List<i> list) {
            PlanPageActivity.this.f.b();
            PlanPageActivity.this.f = null;
            DialogSimpleMessage dialogSimpleMessage = new DialogSimpleMessage(Activities.getString(2131887427), Activities.getString(2131887426), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$4$5jvYYfQ5qSiSbCLqVBjMTvOhPyY
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    PlanPageActivity.AnonymousClass4.this.a(activity);
                }
            }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.4.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                public final void a(DialogPopup dialogPopup) {
                    AndroidUtils.a(PlanPageActivity.this, Activities.getString(2131887415));
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                public final void b(DialogPopup dialogPopup) {
                    AndroidUtils.a(PlanPageActivity.this, Activities.getString(2131887415));
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                }
            });
            dialogSimpleMessage.setCancelable(false);
            PopupManager.get().a(PlanPageActivity.this, dialogSimpleMessage);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        public /* synthetic */ void b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    }

    private SpannableStringBuilder a(k kVar) {
        return a(kVar, (TextView) this.h.get(kVar.a()), this.j.get(kVar.a()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [double] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.text.SpannableStringBuilder a(com.android.billingclient.api.k r8, android.widget.TextView r9, com.callapp.contacts.activity.marketplace.planPage.SkuData r10) {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.a(com.android.billingclient.api.k, android.widget.TextView, com.callapp.contacts.activity.marketplace.planPage.SkuData):android.text.SpannableStringBuilder");
    }

    private static JsonPlanPageConfig a(String str) {
        String string = str.equals("default") ? CallAppApplication.get().getString(2131886714) : CallAppRemoteConfigManager.get().a(str);
        if (!StringUtils.b((CharSequence) string)) {
            return null;
        }
        try {
            JSONPlanPageItem jSONPlanPageItem = (JSONPlanPageItem) Parser.a(string, new TypeReference<JSONPlanPageItem>() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.6
            });
            if (jSONPlanPageItem != null) {
                return jSONPlanPageItem.getJsonPlanPageConfig();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.String a(java.util.List r3) {
        /*
            r0 = r3
            boolean r0 = com.callapp.framework.util.CollectionUtils.b(r0)
            if (r0 == 0) goto L_0x004a
            r0 = r3
            java.util.Iterator r0 = r0.iterator()
            r3 = r0
        L_0x000e:
            r0 = r3
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x004a
            r0 = r3
            java.lang.Object r0 = r0.next()
            com.android.billingclient.api.i r0 = (com.android.billingclient.api.i) r0
            r4 = r0
            java.lang.String r0 = "subs"
            java.util.List r0 = com.callapp.contacts.manager.inAppBilling.BillingManager.a(r0)
            r1 = r4
            java.lang.String r1 = r1.b()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0045
            java.lang.String r0 = "inapp"
            java.util.List r0 = com.callapp.contacts.manager.inAppBilling.BillingManager.a(r0)
            r1 = r4
            java.lang.String r1 = r1.b()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x000e
        L_0x0045:
            r0 = r4
            java.lang.String r0 = r0.b()
            return r0
        L_0x004a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.a(java.util.List):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f = new BillingManager(new AnonymousClass4());
    }

    private void a(final int i, TextView textView, final ImageView.ScaleType scaleType) {
        ViewParent parent = textView.getParent();
        if (parent instanceof RelativeLayout) {
            final RelativeLayout relativeLayout = (RelativeLayout) parent;
            final String badge = this.g.getBadge();
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    PlanPageActivity.this.B = GlideUtils.a(badge);
                    if (PlanPageActivity.this.B != null) {
                        try {
                            PlanPageActivity planPageActivity = PlanPageActivity.this;
                            planPageActivity.C = (Bitmap) planPageActivity.B.get();
                            if (PlanPageActivity.this.C != null) {
                                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.5.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Bitmap bitmap = PlanPageActivity.this.C;
                                        Bitmap a2 = ImageUtils.a(bitmap, org.apache.commons.lang3.StringUtils.SPACE + i + "%");
                                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
                                        layoutParams.addRule(PlanPageActivity.this.g.getBadgePosition().equals("RIGHT") ? 11 : 9);
                                        ImageView imageView = new ImageView(CallAppApplication.get());
                                        imageView.setImageBitmap(a2);
                                        imageView.setScaleType(scaleType);
                                        relativeLayout.addView(imageView, layoutParams);
                                    }
                                });
                            }
                        } catch (InterruptedException | ExecutionException e) {
                            CLog.a(PlanPageActivity.class, e);
                        }
                    }
                }
            });
        }
    }

    private void a(ConstraintLayout constraintLayout) {
        ImageView imageView = (ImageView) constraintLayout.findViewById(2131364172);
        final ImageView imageView2 = (ImageView) constraintLayout.findViewById(2131363280);
        final RelativeLayout relativeLayout = (RelativeLayout) constraintLayout.findViewById(2131363896);
        ImageView imageView3 = (ImageView) constraintLayout.findViewById(2131362052);
        LinearLayout linearLayout = (LinearLayout) constraintLayout.findViewById(2131364505);
        LinearLayout linearLayout2 = (LinearLayout) constraintLayout.findViewById(2131362979);
        this.k = (RelativeLayout) constraintLayout.findViewById(2131363883);
        this.l = (RelativeLayout) constraintLayout.findViewById(2131363890);
        this.m = (RelativeLayout) constraintLayout.findViewById(2131363894);
        this.n = (RelativeLayout) constraintLayout.findViewById(2131363881);
        this.o = (RelativeLayout) constraintLayout.findViewById(2131363888);
        this.p = (LinearLayout) constraintLayout.findViewById(2131363882);
        this.q = (LinearLayout) constraintLayout.findViewById(2131363889);
        this.r = (TextView) constraintLayout.findViewById(2131363885);
        this.s = (TextView) constraintLayout.findViewById(2131363892);
        this.t = (TextView) constraintLayout.findViewById(2131363895);
        this.u = (TextView) constraintLayout.findViewById(2131363884);
        this.v = (TextView) constraintLayout.findViewById(2131363891);
        this.w = (TextView) constraintLayout.findViewById(2131363880);
        this.x = (TextView) constraintLayout.findViewById(2131363887);
        this.y = (TextView) constraintLayout.findViewById(2131363893);
        this.z = (TextView) constraintLayout.findViewById(2131363879);
        this.A = (TextView) constraintLayout.findViewById(2131363886);
        final ScrollView scrollView = (ScrollView) constraintLayout.findViewById(2131363746);
        JsonPlanPageConfig jsonPlanPageConfig = this.g;
        if (jsonPlanPageConfig != null) {
            if (!jsonPlanPageConfig.getShowTopBackground()) {
                imageView.setVisibility(8);
            } else if (StringUtils.b((CharSequence) this.g.getTopBackground())) {
                imageView.setVisibility(0);
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, this.g.getTopBackground(), this);
                glideRequestBuilder.q = true;
                glideRequestBuilder.d();
            }
            if (StringUtils.b((CharSequence) this.g.getMiddleBackground())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(imageView2, this.g.getMiddleBackground(), this);
                glideRequestBuilder2.q = true;
                glideRequestBuilder2.d();
            }
            if (StringUtils.b((CharSequence) this.g.getBottomBackground())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder3 = new GlideUtils.GlideRequestBuilder(this, this.g.getBottomBackground(), relativeLayout, new GlideUtils.CustomViewListener() { // from class: com.callapp.contacts.activity.marketplace.planPage._$$Lambda$PlanPageActivity$7YAb3Wq4OeRYi1fgAA5A50khb5A
                    @Override // com.callapp.contacts.util.glide.GlideUtils.CustomViewListener
                    public final void onResourceReady(Drawable drawable, d dVar) {
                        relativeLayout.setBackground(drawable);
                    }
                });
                glideRequestBuilder3.q = true;
                glideRequestBuilder3.d();
            } else if (StringUtils.b((CharSequence) this.g.getBottomBackgroundColor())) {
                relativeLayout.setBackgroundColor(Color.parseColor(this.g.getBottomBackgroundColor()));
            }
            if (this.g.getBottomBackgroundAlpha() > BitmapDescriptorFactory.HUE_RED && relativeLayout.getBackground() != null) {
                relativeLayout.getBackground().setAlpha(this.g.getBottomBackgroundAlpha());
            }
            if (StringUtils.b((CharSequence) this.g.getContainerBackground())) {
                imageView3.setVisibility(0);
                GlideUtils.GlideRequestBuilder glideRequestBuilder4 = new GlideUtils.GlideRequestBuilder(imageView3, this.g.getContainerBackground(), this);
                glideRequestBuilder4.q = true;
                glideRequestBuilder4.d();
            } else if (StringUtils.b((CharSequence) this.g.getContainerBackgroundColor())) {
                imageView3.setVisibility(0);
                imageView3.setBackgroundColor(Color.parseColor(this.g.getContainerBackgroundColor()));
            } else {
                imageView3.setVisibility(8);
            }
            if (!StringUtils.b((CharSequence) this.g.getViewType()) || !this.g.getViewType().equals("VERTICAL")) {
                linearLayout2.setVisibility(0);
                linearLayout.setVisibility(8);
            } else {
                linearLayout.setVisibility(0);
                linearLayout2.setVisibility(8);
            }
            for (SkuData skuData : this.g.getSkuInformation()) {
                this.j.put(skuData.getSkuId(), skuData);
                if (skuData.getSkuLocation() == 1) {
                    if (!StringUtils.b((CharSequence) this.g.getViewType()) || !this.g.getViewType().equals("VERTICAL")) {
                        this.n.setVisibility(0);
                        this.p.setVisibility(0);
                        this.h.put(skuData.getSkuId(), this.u);
                        a(this.j.get(skuData.getSkuId()), this.g.getShape(), this.n);
                    } else {
                        this.k.setVisibility(0);
                        this.h.put(skuData.getSkuId(), this.r);
                        a(this.j.get(skuData.getSkuId()), this.g.getShape(), this.k);
                    }
                }
                if (skuData.getSkuLocation() == 2) {
                    if (!StringUtils.b((CharSequence) this.g.getViewType()) || !this.g.getViewType().equals("VERTICAL")) {
                        this.o.setVisibility(0);
                        this.q.setVisibility(0);
                        this.h.put(skuData.getSkuId(), this.v);
                        a(this.j.get(skuData.getSkuId()), this.g.getShape(), this.o);
                    } else {
                        this.l.setVisibility(0);
                        this.h.put(skuData.getSkuId(), this.s);
                        a(this.j.get(skuData.getSkuId()), this.g.getShape(), this.l);
                    }
                }
                if (skuData.getSkuLocation() == 3 && StringUtils.b((CharSequence) this.g.getViewType()) && this.g.getViewType().equals("VERTICAL")) {
                    this.m.setVisibility(0);
                    this.h.put(skuData.getSkuId(), this.t);
                    a(this.j.get(skuData.getSkuId()), this.g.getShape(), this.m);
                }
            }
            for (String str : this.j.keySet()) {
                boolean isMarkWithStar = this.j.get(str).isMarkWithStar();
                TextView textView = (TextView) this.h.get(str);
                if (textView != null && isMarkWithStar) {
                    textView.setCompoundDrawablesWithIntrinsicBounds(2131231906, 0, 0, 0);
                    textView.setCompoundDrawablePadding(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165649));
                }
            }
            if (imageView2 != null) {
                scrollView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PlanPageActivity.this.D) {
                            ObjectAnimator.ofInt(scrollView, "scrollY", imageView2.getHeight()).setDuration(2000L).start();
                            scrollView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (PlanPageActivity.this.D) {
                                        ObjectAnimator.ofInt(scrollView, "scrollY", 0).setDuration(1000L).start();
                                    }
                                }
                            }, PlanPageActivity.f13291b);
                        }
                    }
                }, f13290a);
            }
        }
    }

    public static void a(SkuData skuData, TextView textView) {
        if (skuData != null && skuData.showDisclaimer && textView != null) {
            textView.setVisibility(0);
            textView.setText(skuData.getDisclaimer());
            if (StringUtils.b((CharSequence) skuData.getDisclaimerColor())) {
                textView.setTextColor(Color.parseColor(skuData.getDisclaimerColor()));
            }
            textView.setTextSize(0, skuData.getDisclaimerSize());
        }
    }

    public static void a(SkuData skuData, String str, View view) {
        if (skuData != null && str != null) {
            ViewUtils.b(view, str.equals("ROUNDED") ? 2131232154 : 2131232153, Color.parseColor(StringUtils.b((CharSequence) skuData.getFillColor()) ? skuData.getFillColor() : "#FFFFFF"), Color.parseColor(StringUtils.b((CharSequence) skuData.getOutlineColor()) ? skuData.getOutlineColor() : "#1DA03F"), 4);
            if (Build.VERSION.SDK_INT >= 23) {
                view.setForeground(b.a(CallAppApplication.get(), 2131230873));
            }
        }
    }

    static /* synthetic */ void j(PlanPageActivity planPageActivity) {
        if (planPageActivity.F && planPageActivity.G && planPageActivity.H) {
            PopupManager.get().a(planPageActivity, new DialogSimpleMessage(Activities.getString(2131888107), Activities.getString(2131888108), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    PlanPageActivity.this.finish();
                }
            }, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setButtonText(k kVar) {
        switch (this.h.get(kVar.a()).getId()) {
            case 2131363884:
                TextView textView = this.u;
                if (textView != null) {
                    textView.setText(a(kVar));
                    a(this.j.get(kVar.a()), this.z);
                    return;
                }
                return;
            case 2131363885:
                TextView textView2 = this.r;
                if (textView2 != null) {
                    textView2.setText(a(kVar));
                    a(this.j.get(kVar.a()), this.w);
                    return;
                }
                return;
            case 2131363891:
                TextView textView3 = this.v;
                if (textView3 != null) {
                    textView3.setText(a(kVar));
                    a(this.j.get(kVar.a()), this.A);
                    return;
                }
                return;
            case 2131363892:
                TextView textView4 = this.s;
                if (textView4 != null) {
                    textView4.setText(a(kVar));
                    a(this.j.get(kVar.a()), this.x);
                    return;
                }
                return;
            case 2131363895:
                TextView textView5 = this.t;
                if (textView5 != null) {
                    textView5.setText(a(kVar));
                    a(this.j.get(kVar.a()), this.y);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPremiumWhenPurchaseSuccess(String str) {
        if (StringUtils.b((CharSequence) str)) {
            Prefs.cJ.set(Boolean.TRUE);
            a();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.D = false;
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
        if (!(getIntent() == null || getIntent().getExtras() == null)) {
            this.E = getIntent().getExtras().getString("PLAN_PAGE_SOURCE");
            this.g = a(this.E + "PremiumConfig");
        }
        if (this.g == null) {
            this.g = a("default");
        }
        AnalyticsManager.get().a(Constants.PLAN_PAGE, Constants.PLAN_PAGE_VIEW, this.E);
        a((ConstraintLayout) findViewById(2131363706));
        CallAppApplication.get().b(new AnonymousClass2());
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f13292c = simpleProgressDialog;
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        PopupManager.get().a(this, this.f13292c);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        SimpleProgressDialog.a(this.f13292c);
        this.f13292c = null;
        BillingManager billingManager = this.f13293d;
        if (billingManager != null) {
            billingManager.b();
        }
        BillingManager billingManager2 = this.e;
        if (billingManager2 != null) {
            billingManager2.b();
        }
        c<Bitmap> cVar = this.B;
        if (cVar != null) {
            cVar.cancel(false);
            GlideUtils.b(CallAppApplication.get()).a((j<?>) this.B);
        }
        super.onDestroy();
    }
}

package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.planPage.JSONPlanPageItem;
import com.callapp.contacts.activity.marketplace.planPage.JsonPlanPageConfig;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.activity.marketplace.planPage.SkuData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import java.text.DecimalFormat;
import java.util.Currency;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0010H\u0002J\n\u0010\"\u001a\u0004\u0018\u00010\bH\u0002J\b\u0010#\u001a\u00020 H\u0014J\b\u0010$\u001a\u00020\u001eH\u0002J\b\u0010%\u001a\u00020\u001eH\u0002J\u0016\u0010&\u001a\u00020\u001e2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(H\u0002J\u0012\u0010*\u001a\u00020\u001e2\b\u0010+\u001a\u0004\u0018\u00010,H\u0014J\b\u0010-\u001a\u00020\u001eH\u0014J\b\u0010.\u001a\u00020\u001eH\u0002J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J \u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u0010!\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u001aH\u0002J\u0010\u00104\u001a\u00020\u001e2\u0006\u00101\u001a\u000202H\u0002J\b\u00105\u001a\u00020\u001eH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0018X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001c0\u0018X\u0082\u0004¢\u0006\u0002\n��¨\u00066"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;", "Lcom/callapp/contacts/util/BaseTransparentActivity;", "()V", "billingManager", "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;", "billingManagerPurchase", "billingManagerUpdateAfterPurchase", "data", "Lcom/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig;", "futureTarget", "Lcom/bumptech/glide/request/FutureTarget;", "Landroid/graphics/Bitmap;", "futureTargetBitmap", EventConstants.PROGRESS, "Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;", "sku1CancelAnyTimeVertical", "Landroid/widget/TextView;", "sku1ContainerVertical", "Landroid/widget/RelativeLayout;", "sku1TextVertical", "sku2CancelAnyTimeVertical", "sku2ContainerVertical", "sku2TextVertical", "skuDataMap", "Ljava/util/HashMap;", "", "Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;", "skuToViewMap", "Landroid/view/View;", "drawDiscount", "", "discount", "", "textView", "getConfiguration", "getLayoutResourceId", "handleBilling", "initViews", "markBoughtSkusAndRestart", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "restartAppWhenPremium", "setButtonString", "Landroid/text/SpannableStringBuilder;", "skuDetails", "Lcom/android/billingclient/api/SkuDetails;", "skuData", "setButtonText", "showPurchaseBackupDialog", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupPlansActivity.class */
public final class BackupPlansActivity extends BaseTransparentActivity {

    /* renamed from: a */
    private SimpleProgressDialog f24681a;

    /* renamed from: b */
    private BillingManager f24682b;

    /* renamed from: c */
    private BillingManager f24683c;

    /* renamed from: d */
    private BillingManager f24684d;

    /* renamed from: e */
    private JsonPlanPageConfig f24685e;

    /* renamed from: f */
    private final HashMap<String, View> f24686f = new HashMap<>();

    /* renamed from: g */
    private final HashMap<String, SkuData> f24687g = new HashMap<>();

    /* renamed from: h */
    private RelativeLayout f24688h;

    /* renamed from: j */
    private RelativeLayout f24689j;

    /* renamed from: k */
    private TextView f24690k;

    /* renamed from: l */
    private TextView f24691l;

    /* renamed from: m */
    private TextView f24692m;

    /* renamed from: n */
    private TextView f24693n;

    /* renamed from: o */
    private AbstractFutureC3598c<Bitmap> f24694o;

    /* renamed from: p */
    private Bitmap f24695p;

    /* renamed from: a */
    private final SpannableStringBuilder m29323a(C3347k c3347k) {
        double m38182c;
        JsonPlanPageConfig jsonPlanPageConfig;
        TextView textView = (TextView) this.f24686f.get(c3347k.m38184a());
        C18524p.m3851a(textView);
        SkuData skuData = this.f24687g.get(c3347k.m38184a());
        C18524p.m3851a(skuData);
        C18524p.m3843b(skuData, "skuDataMap[skuDetails.sku]!!");
        SkuData skuData2 = skuData;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String m38179f = c3347k.m38179f();
        C18524p.m3843b(m38179f, "skuDetails.description");
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        Currency currency = Currency.getInstance(c3347k.m38181d());
        int a = C18425p.m3940a((CharSequence) m38179f, "#", 0, false, 6);
        boolean z = a >= 0;
        textView.setTextSize(0, skuData2.getPriceSize());
        StringBuilder sb = new StringBuilder();
        C18524p.m3843b(currency, "currency");
        sb.append(currency.getSymbol());
        sb.append(decimalFormat.format(c3347k.m38182c() / 1000000.0d));
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
            String str = currency.getSymbol() + decimalFormat.format(m38182c / d);
            if (skuData2.isStrike()) {
                SpannableString spannableString = new SpannableString(str);
                spannableString.setSpan(new RelativeSizeSpan(1.2f), 0, str.length(), 0);
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(skuData2.getPriceBeforeColor())), 0, str.length(), 33);
                spannableString.setSpan(new StrikethroughSpan(), 0, str.length(), 33);
                spannableStringBuilder.append((CharSequence) spannableString);
                spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.SPACE);
            }
            ViewParent parent = textView.getParent();
            if ((parent instanceof RelativeLayout) && (jsonPlanPageConfig = this.f24685e) != null) {
                C18524p.m3851a(jsonPlanPageConfig);
                String badge = jsonPlanPageConfig.getBadge();
                C18524p.m3843b(badge, "data!!.badge");
                CallAppApplication.get().m31870a(new BackupPlansActivity$drawDiscount$1(this, badge, parseInt, parent));
            }
        }
        SpannableString spannableString2 = new SpannableString(sb2);
        spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor(skuData2.getPriceColor())), 0, sb2.length(), 33);
        spannableString2.setSpan(new RelativeSizeSpan(1.2f), 0, sb2.length(), 0);
        spannableString2.setSpan(new StyleSpan(1), 0, sb2.length(), 0);
        spannableStringBuilder.append((CharSequence) spannableString2);
        SpannableString spannableString3 = new SpannableString(substring);
        spannableString3.setSpan(new RelativeSizeSpan(0.8f), 0, substring.length(), 0);
        spannableString3.setSpan(new ForegroundColorSpan(Color.parseColor(skuData2.getPriceColor())), 0, substring.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString3);
        return spannableStringBuilder;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [T, com.callapp.contacts.popup.contact.DialogSimpleMessage] */
    /* renamed from: a */
    public static final /* synthetic */ void m29317a(BackupPlansActivity backupPlansActivity, List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            C3344i c3344i = (C3344i) it2.next();
            if (C18524p.m3850a((Object) "backup_monthly", (Object) c3344i.m38188b())) {
                Prefs.f26611hQ.set(Boolean.TRUE);
                final C18490ab.C18495e c18495e = new C18490ab.C18495e();
                c18495e.f63589a = null;
                c18495e.f63589a = new DialogSimpleMessage(Activities.getString(2131886369), Activities.getString(2131886368), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$showPurchaseBackupDialog$1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        DialogSimpleMessage dialogSimpleMessage = (DialogSimpleMessage) c18495e.f63589a;
                        if (dialogSimpleMessage != null) {
                            dialogSimpleMessage.dismiss();
                        }
                        BackupUtils.m29297a("");
                        BackupPlansActivity.this.finish();
                    }
                }, null);
                ((DialogSimpleMessage) c18495e.f63589a).setCancelable(true);
                PopupManager.get().m28209a(backupPlansActivity, (DialogSimpleMessage) c18495e.f63589a);
            } else if (C18524p.m3850a((Object) "monthly_silver_2.00_no_ads", (Object) c3344i.m38188b())) {
                Prefs.f26339cJ.set(Boolean.TRUE);
                backupPlansActivity.f24684d = new BillingManager(new BackupPlansActivity$restartAppWhenPremium$1(backupPlansActivity));
            }
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ SimpleProgressDialog m29316b(BackupPlansActivity backupPlansActivity) {
        SimpleProgressDialog simpleProgressDialog = backupPlansActivity.f24681a;
        if (simpleProgressDialog == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        return simpleProgressDialog;
    }

    private final JsonPlanPageConfig getConfiguration() {
        String string = CallAppApplication.get().getString(2131886293);
        C18524p.m3843b(string, "CallAppApplication.get()…string.backupPlansConfig)");
        if (StringUtils.m26045b((CharSequence) string)) {
            try {
                JSONPlanPageItem jSONPlanPageItem = (JSONPlanPageItem) Parser.m26917a(string, new TypeReference<JSONPlanPageItem>() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$getConfiguration$jsonPlanPageItem$1
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

    public final void setButtonText(C3347k c3347k) {
        View view = this.f24686f.get(c3347k.m38184a());
        C18524p.m3851a(view);
        C18524p.m3843b(view, "skuToViewMap[skuDetails.sku]!!");
        int id = view.getId();
        if (id == 2131363885) {
            TextView textView = this.f24690k;
            if (textView == null) {
                C18524p.m3848a("sku1TextVertical");
            }
            textView.setText(m29323a(c3347k));
            SkuData skuData = this.f24687g.get(c3347k.m38184a());
            TextView textView2 = this.f24692m;
            if (textView2 == null) {
                C18524p.m3848a("sku1CancelAnyTimeVertical");
            }
            PlanPageActivity.m29924a(skuData, textView2);
        } else if (id != 2131363892) {
        } else {
            TextView textView3 = this.f24691l;
            if (textView3 == null) {
                C18524p.m3848a("sku2TextVertical");
            }
            textView3.setText(m29323a(c3347k));
            SkuData skuData2 = this.f24687g.get(c3347k.m38184a());
            TextView textView4 = this.f24693n;
            if (textView4 == null) {
                C18524p.m3848a("sku2CancelAnyTimeVertical");
            }
            PlanPageActivity.m29924a(skuData2, textView4);
        }
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public final int getLayoutResourceId() {
        return 2131558495;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (BackupUtils.isAllowToRunBackup()) {
            finish();
        }
        this.f24685e = getConfiguration();
        ((ConstraintLayout) findViewById(2131362051)).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.api.helper.backup.BackupPlansActivity$initViews$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackupPlansActivity.this.finish();
            }
        });
        ConstraintLayout foreground = (ConstraintLayout) findViewById(2131362861);
        C18524p.m3843b(foreground, "foreground");
        foreground.setBackground(ThemeUtils.getDialogRoundedCenterBackgroundDrawable());
        View findViewById = findViewById(2131362063);
        C18524p.m3843b(findViewById, "findViewById(R.id.backupUpgradeTitle)");
        TextView textView = (TextView) findViewById;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setText(Activities.getString(2131886307));
        View findViewById2 = findViewById(2131363422);
        C18524p.m3843b(findViewById2, "findViewById(R.id.orText)");
        TextView textView2 = (TextView) findViewById2;
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setText(Activities.getString(2131887366));
        View findViewById3 = findViewById(2131363424);
        C18524p.m3843b(findViewById3, "findViewById(R.id.otherOption)");
        TextView textView3 = (TextView) findViewById3;
        textView3.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setText(Activities.getString(2131887425));
        View findViewById4 = findViewById(2131362062);
        C18524p.m3843b(findViewById4, "findViewById(R.id.backupUpgradeSubTitle)");
        TextView textView4 = (TextView) findViewById4;
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setText(Activities.getString(2131888252));
        View findViewById5 = findViewById(2131362098);
        C18524p.m3843b(findViewById5, "findViewById(R.id.bkUpgradeSubtitle)");
        TextView textView5 = (TextView) findViewById5;
        textView5.setTextColor(ThemeUtils.getColor(2131100140));
        textView5.setText(Activities.getString(2131888256));
        View findViewById6 = findViewById(2131363883);
        C18524p.m3843b(findViewById6, "findViewById(R.id.sku1ContainerVertical)");
        this.f24688h = (RelativeLayout) findViewById6;
        View findViewById7 = findViewById(2131363890);
        C18524p.m3843b(findViewById7, "findViewById(R.id.sku2ContainerVertical)");
        this.f24689j = (RelativeLayout) findViewById7;
        View findViewById8 = findViewById(2131363885);
        C18524p.m3843b(findViewById8, "findViewById(R.id.sku1TextVertical)");
        this.f24690k = (TextView) findViewById8;
        View findViewById9 = findViewById(2131363892);
        C18524p.m3843b(findViewById9, "findViewById(R.id.sku2TextVertical)");
        this.f24691l = (TextView) findViewById9;
        View findViewById10 = findViewById(2131363880);
        C18524p.m3843b(findViewById10, "findViewById(R.id.sku1CancelAnyTimeVertical)");
        this.f24692m = (TextView) findViewById10;
        View findViewById11 = findViewById(2131363887);
        C18524p.m3843b(findViewById11, "findViewById(R.id.sku2CancelAnyTimeVertical)");
        this.f24693n = (TextView) findViewById11;
        JsonPlanPageConfig jsonPlanPageConfig = this.f24685e;
        if (jsonPlanPageConfig != null) {
            C18524p.m3851a(jsonPlanPageConfig);
            for (SkuData item : jsonPlanPageConfig.getSkuInformation()) {
                HashMap<String, SkuData> hashMap = this.f24687g;
                C18524p.m3843b(item, "item");
                String skuId = item.getSkuId();
                C18524p.m3843b(skuId, "item.skuId");
                hashMap.put(skuId, item);
                if (item.getSkuLocation() == 1) {
                    JsonPlanPageConfig jsonPlanPageConfig2 = this.f24685e;
                    C18524p.m3851a(jsonPlanPageConfig2);
                    if (StringUtils.m26045b((CharSequence) jsonPlanPageConfig2.getViewType())) {
                        JsonPlanPageConfig jsonPlanPageConfig3 = this.f24685e;
                        C18524p.m3851a(jsonPlanPageConfig3);
                        if (C18524p.m3850a((Object) jsonPlanPageConfig3.getViewType(), (Object) "VERTICAL")) {
                            HashMap<String, View> hashMap2 = this.f24686f;
                            String skuId2 = item.getSkuId();
                            C18524p.m3843b(skuId2, "item.skuId");
                            TextView textView6 = this.f24690k;
                            if (textView6 == null) {
                                C18524p.m3848a("sku1TextVertical");
                            }
                            hashMap2.put(skuId2, textView6);
                            RelativeLayout relativeLayout = this.f24688h;
                            if (relativeLayout == null) {
                                C18524p.m3848a("sku1ContainerVertical");
                            }
                            ViewUtils.m27299b(relativeLayout, 2131232141, ThemeUtils.getColor(2131099784), 0, 0);
                        }
                    }
                }
                if (item.getSkuLocation() == 2) {
                    JsonPlanPageConfig jsonPlanPageConfig4 = this.f24685e;
                    C18524p.m3851a(jsonPlanPageConfig4);
                    if (StringUtils.m26045b((CharSequence) jsonPlanPageConfig4.getViewType())) {
                        JsonPlanPageConfig jsonPlanPageConfig5 = this.f24685e;
                        C18524p.m3851a(jsonPlanPageConfig5);
                        if (C18524p.m3850a((Object) jsonPlanPageConfig5.getViewType(), (Object) "VERTICAL")) {
                            HashMap<String, View> hashMap3 = this.f24686f;
                            String skuId3 = item.getSkuId();
                            C18524p.m3843b(skuId3, "item.skuId");
                            TextView textView7 = this.f24691l;
                            if (textView7 == null) {
                                C18524p.m3848a("sku2TextVertical");
                            }
                            hashMap3.put(skuId3, textView7);
                            SkuData skuData = this.f24687g.get(item.getSkuId());
                            JsonPlanPageConfig jsonPlanPageConfig6 = this.f24685e;
                            C18524p.m3851a(jsonPlanPageConfig6);
                            String shape = jsonPlanPageConfig6.getShape();
                            RelativeLayout relativeLayout2 = this.f24689j;
                            if (relativeLayout2 == null) {
                                C18524p.m3848a("sku2ContainerVertical");
                            }
                            PlanPageActivity.m29923a(skuData, shape, relativeLayout2);
                        }
                    }
                }
            }
        }
        CallAppApplication.get().m31864b(new BackupPlansActivity$handleBilling$1(this));
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f24681a = simpleProgressDialog;
        if (simpleProgressDialog == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        PopupManager popupManager = PopupManager.get();
        BackupPlansActivity backupPlansActivity = this;
        SimpleProgressDialog simpleProgressDialog2 = this.f24681a;
        if (simpleProgressDialog2 == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        popupManager.m28209a(backupPlansActivity, simpleProgressDialog2);
        AnalyticsManager.get().m28449a(Constants.STORE, Constants.PLAN_PAGE_VIEW, "backup");
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        SimpleProgressDialog simpleProgressDialog = this.f24681a;
        if (simpleProgressDialog == null) {
            C18524p.m3848a(EventConstants.PROGRESS);
        }
        SimpleProgressDialog.m27939a(simpleProgressDialog);
        BillingManager billingManager = this.f24682b;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        BillingManager billingManager2 = this.f24683c;
        if (billingManager2 != null) {
            billingManager2.m28290b();
        }
        AbstractFutureC3598c<Bitmap> abstractFutureC3598c = this.f24694o;
        if (abstractFutureC3598c != null) {
            abstractFutureC3598c.cancel(false);
        }
        super.onDestroy();
    }
}

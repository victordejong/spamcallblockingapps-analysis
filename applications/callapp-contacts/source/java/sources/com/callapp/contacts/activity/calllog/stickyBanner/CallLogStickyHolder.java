package com.callapp.contacts.activity.calllog.stickyBanner;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.calllog.CallLogAdapter;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
import java.util.Date;
import java.util.List;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder.class */
public class CallLogStickyHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    private final int f20808s = 1;

    /* renamed from: t */
    private final int f20809t = 3;

    /* renamed from: u */
    private final int f20810u = 2;

    /* renamed from: v */
    private final int f20811v = 15;

    public CallLogStickyHolder(View view) {
        super(view);
    }

    /* renamed from: a */
    public static JsonStickyData m31295a(List<JsonStickyData> list) {
        if (list != null) {
            for (JsonStickyData jsonStickyData : list) {
                if (jsonStickyData.getOverWrite()) {
                    return jsonStickyData;
                }
            }
            return list.get(new Random().nextInt(list.size()));
        }
        return null;
    }

    /* renamed from: l */
    private static boolean m31294l() {
        if (Prefs.f26540fz.get().booleanValue() || Prefs.f26582go.get().booleanValue()) {
            return false;
        }
        if (Prefs.f26515fa.get().booleanValue()) {
            if (Prefs.f26649ib.get() == null) {
                return true;
            }
            if (Prefs.f26649ib.get() != null && DateUtils.m27118b(Prefs.f26649ib.get(), new Date()) >= 3) {
                return true;
            }
        }
        if (Prefs.f26649ib.get() == null) {
            return true;
        }
        return Prefs.f26649ib.get() != null && DateUtils.m27118b(Prefs.f26649ib.get(), new Date()) >= 15;
    }

    /* renamed from: m */
    private static boolean m31293m() {
        if (BillingManager.isBillingAvailable() && !Prefs.f26339cJ.get().booleanValue() && !Prefs.f26340cK.get().booleanValue() && !AdUtils.m27285a()) {
            if (!Prefs.f26580gm.get().booleanValue() && DateUtils.m27118b(Prefs.f26257ah.get(), new Date()) >= 1) {
                Prefs.f26580gm.set(Boolean.TRUE);
                Prefs.f26583gp.set(new Date());
                return true;
            }
            if (!Prefs.f26581gn.get().booleanValue() && DateUtils.m27118b(new Date(), Prefs.f26583gp.get()) >= 2) {
                Prefs.f26583gp.set(new Date());
                return true;
            } else if (!m31292n() || DateUtils.m27118b(new Date(), Prefs.f26583gp.get()) < 3) {
                return false;
            } else {
                Prefs.f26583gp.set(new Date());
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    private static boolean m31292n() {
        return Prefs.f26581gn.get().booleanValue() && Prefs.f26396dN.get() == null && Prefs.f26397dO.get() == null && Prefs.f26416dh.get() == null;
    }

    /* renamed from: a */
    public final void m31296a(final CallLogAdapter.StickyBannerEvents stickyBannerEvents) {
        final View findViewById = this.itemView.findViewById(2131362231);
        TextView textView = (TextView) findViewById.findViewById(2131362234);
        TextView textView2 = (TextView) findViewById.findViewById(2131362233);
        ImageView imageView = (ImageView) findViewById.findViewById(2131363030);
        final ImageView imageView2 = (ImageView) findViewById.findViewById(2131362371);
        ImageView imageView3 = (ImageView) findViewById.findViewById(2131362232);
        final TextView textView3 = (TextView) findViewById.findViewById(2131362338);
        textView3.setText(Activities.getString(2131886485));
        if (m31294l()) {
            if (!Prefs.f26650ic.get().booleanValue()) {
                AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ViewDefaultDialerStickyBanner");
                Prefs.f26650ic.set(Boolean.TRUE);
            }
            findViewById.setVisibility(0);
            if (ThemeUtils.isThemeLight()) {
                ViewUtils.m27299b(findViewById, 2131232170, ThemeUtils.getColor(2131100126), ThemeUtils.getColor(2131100128), 2);
            } else {
                ViewUtils.m27299b(findViewById, 2131232170, ThemeUtils.getColor(2131100125), ThemeUtils.getColor(2131100127), 2);
            }
            imageView3.setVisibility(8);
            textView3.setVisibility(0);
            imageView2.setVisibility(0);
            ViewUtils.m27294c(textView3, 2131232210, ThemeUtils.getColor(2131099784));
            textView.setText(Activities.getString(2131886487));
            textView2.setText(Activities.getString(2131886486));
            textView3.setText(Activities.getString(2131886485));
            textView3.setTextColor(C0790b.m44492c(findViewById.getContext(), 2131100228));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView2.setTextColor(ThemeUtils.getColor(2131100108));
            imageView2.setColorFilter(ThemeUtils.getColor(2131099917), PorterDuff.Mode.SRC_IN);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(imageView2, 1);
                    AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ClickCloseDefaultDialerStickyBanner");
                    findViewById.setVisibility(8);
                    Prefs.f26648ia.set(new Date());
                    Prefs.f26649ib.set(new Date());
                }
            });
            imageView.setImageResource(2131232019);
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(textView3, 1);
                    if (stickyBannerEvents != null) {
                        findViewById.setVisibility(8);
                        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ClickAllowDefaultDialerStickyBanner");
                        Prefs.f26582go.set(Boolean.TRUE);
                        stickyBannerEvents.mo31350a();
                    }
                }
            });
        } else if (!m31293m()) {
            findViewById.setVisibility(8);
        } else {
            final JsonStickyData m31295a = m31295a(JSONStickyDataObject.getDataFromRemoteConfig("stickyBannerCallLogConfig"));
            if (m31295a == null) {
                findViewById.setVisibility(8);
                return;
            }
            findViewById.setVisibility(0);
            AnalyticsManager.get().m28450a(Constants.IN_APP_PROMOTION, "CreateListStickyBanner");
            imageView2.setVisibility(8);
            if (m31295a.getAction() != null) {
                textView3.setVisibility(0);
                ViewUtils.m27294c(textView3, 2131232210, ThemeUtils.getColor(2131100228));
                textView3.setText(m31295a.getAction().getActionText());
                findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.3
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view) {
                        AndroidUtils.m27630a(textView3, 1);
                        Prefs.f26581gn.set(Boolean.TRUE);
                        findViewById.setVisibility(8);
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(m31295a.getAction().getCta()));
                        intent.setPackage(CallAppApplication.get().getPackageName());
                        AnalyticsManager.get().m28449a(Constants.IN_APP_PROMOTION, "Banner clicked", "List sticky banner");
                        Activities.m27656b(CallAppApplication.get(), intent);
                    }
                });
            } else {
                textView3.setVisibility(8);
            }
            textView.setText(m31295a.getTitle());
            textView2.setText(m31295a.getSubTitle());
            new GlideUtils.GlideRequestBuilder(imageView3, m31295a.getBackground(), findViewById.getContext()).m27024a((int) Activities.m27699a(4.0f), RoundedCornersTransformation.CornerType.ALL).m27013d();
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, m31295a.getImg(), findViewById.getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
        }
    }
}

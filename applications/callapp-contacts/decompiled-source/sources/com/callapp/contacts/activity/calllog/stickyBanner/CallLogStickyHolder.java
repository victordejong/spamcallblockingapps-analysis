package com.callapp.contacts.activity.calllog.stickyBanner;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.b;
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
    private final int s = 1;
    private final int t = 3;
    private final int u = 2;
    private final int v = 15;

    public CallLogStickyHolder(View view) {
        super(view);
    }

    public static JsonStickyData a(List<JsonStickyData> list) {
        if (list == null) {
            return null;
        }
        for (JsonStickyData jsonStickyData : list) {
            if (jsonStickyData.getOverWrite()) {
                return jsonStickyData;
            }
        }
        return list.get(new Random().nextInt(list.size()));
    }

    private static boolean l() {
        if (Prefs.fz.get().booleanValue() || Prefs.go.get().booleanValue()) {
            return false;
        }
        if (Prefs.fa.get().booleanValue()) {
            if (Prefs.ib.get() == null) {
                return true;
            }
            if (Prefs.ib.get() != null && DateUtils.b(Prefs.ib.get(), new Date()) >= 3) {
                return true;
            }
        }
        if (Prefs.ib.get() != null) {
            return Prefs.ib.get() != null && DateUtils.b(Prefs.ib.get(), new Date()) >= 15;
        }
        return true;
    }

    private static boolean m() {
        if (!BillingManager.isBillingAvailable() || Prefs.cJ.get().booleanValue() || Prefs.cK.get().booleanValue() || AdUtils.a()) {
            return false;
        }
        if (!Prefs.gm.get().booleanValue() && DateUtils.b(Prefs.ah.get(), new Date()) >= 1) {
            Prefs.gm.set(Boolean.TRUE);
            Prefs.gp.set(new Date());
            return true;
        }
        if (!Prefs.gn.get().booleanValue() && DateUtils.b(new Date(), Prefs.gp.get()) >= 2) {
            Prefs.gp.set(new Date());
            return true;
        } else if (!n() || DateUtils.b(new Date(), Prefs.gp.get()) < 3) {
            return false;
        } else {
            Prefs.gp.set(new Date());
            return true;
        }
    }

    private static boolean n() {
        return Prefs.gn.get().booleanValue() && Prefs.dN.get() == null && Prefs.dO.get() == null && Prefs.dh.get() == null;
    }

    public final void a(final CallLogAdapter.StickyBannerEvents stickyBannerEvents) {
        final View findViewById = this.itemView.findViewById(2131362231);
        TextView textView = (TextView) findViewById.findViewById(2131362234);
        TextView textView2 = (TextView) findViewById.findViewById(2131362233);
        ImageView imageView = (ImageView) findViewById.findViewById(2131363030);
        final ImageView imageView2 = (ImageView) findViewById.findViewById(2131362371);
        ImageView imageView3 = (ImageView) findViewById.findViewById(2131362232);
        final TextView textView3 = (TextView) findViewById.findViewById(2131362338);
        textView3.setText(Activities.getString(2131886485));
        if (l()) {
            if (!Prefs.ic.get().booleanValue()) {
                AnalyticsManager.get().a(Constants.PERMISSIONS, "ViewDefaultDialerStickyBanner");
                Prefs.ic.set(Boolean.TRUE);
            }
            findViewById.setVisibility(0);
            if (ThemeUtils.isThemeLight()) {
                ViewUtils.b(findViewById, 2131232170, ThemeUtils.getColor(2131100126), ThemeUtils.getColor(2131100128), 2);
            } else {
                ViewUtils.b(findViewById, 2131232170, ThemeUtils.getColor(2131100125), ThemeUtils.getColor(2131100127), 2);
            }
            imageView3.setVisibility(8);
            textView3.setVisibility(0);
            imageView2.setVisibility(0);
            ViewUtils.c(textView3, 2131232210, ThemeUtils.getColor(2131099784));
            textView.setText(Activities.getString(2131886487));
            textView2.setText(Activities.getString(2131886486));
            textView3.setText(Activities.getString(2131886485));
            textView3.setTextColor(b.c(findViewById.getContext(), 2131100228));
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            textView2.setTextColor(ThemeUtils.getColor(2131100108));
            imageView2.setColorFilter(ThemeUtils.getColor(2131099917), PorterDuff.Mode.SRC_IN);
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(imageView2, 1);
                    AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickCloseDefaultDialerStickyBanner");
                    findViewById.setVisibility(8);
                    Prefs.ia.set(new Date());
                    Prefs.ib.set(new Date());
                }
            });
            imageView.setImageResource(2131232019);
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(textView3, 1);
                    if (stickyBannerEvents != null) {
                        findViewById.setVisibility(8);
                        AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickAllowDefaultDialerStickyBanner");
                        Prefs.go.set(Boolean.TRUE);
                        stickyBannerEvents.a();
                    }
                }
            });
        } else if (m()) {
            final JsonStickyData a2 = a(JSONStickyDataObject.getDataFromRemoteConfig("stickyBannerCallLogConfig"));
            if (a2 != null) {
                findViewById.setVisibility(0);
                AnalyticsManager.get().a(Constants.IN_APP_PROMOTION, "CreateListStickyBanner");
                imageView2.setVisibility(8);
                if (a2.getAction() != null) {
                    textView3.setVisibility(0);
                    ViewUtils.c(textView3, 2131232210, ThemeUtils.getColor(2131100228));
                    textView3.setText(a2.getAction().getActionText());
                    findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder.3
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                        public final void a(View view) {
                            AndroidUtils.a(textView3, 1);
                            Prefs.gn.set(Boolean.TRUE);
                            findViewById.setVisibility(8);
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a2.getAction().getCta()));
                            intent.setPackage(CallAppApplication.get().getPackageName());
                            AnalyticsManager.get().a(Constants.IN_APP_PROMOTION, "Banner clicked", "List sticky banner");
                            Activities.b(CallAppApplication.get(), intent);
                        }
                    });
                } else {
                    textView3.setVisibility(8);
                }
                textView.setText(a2.getTitle());
                textView2.setText(a2.getSubTitle());
                new GlideUtils.GlideRequestBuilder(imageView3, a2.getBackground(), findViewById.getContext()).a((int) Activities.a(4.0f), RoundedCornersTransformation.CornerType.ALL).d();
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, a2.getImg(), findViewById.getContext());
                glideRequestBuilder.q = true;
                glideRequestBuilder.d();
                return;
            }
            findViewById.setVisibility(8);
        } else {
            findViewById.setVisibility(8);
        }
    }
}

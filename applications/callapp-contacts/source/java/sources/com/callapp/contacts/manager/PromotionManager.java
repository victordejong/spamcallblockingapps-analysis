package com.callapp.contacts.manager;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.CallScreenThemeStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.CoverStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.SuperSkinStoreItemsListActivity;
import com.callapp.contacts.activity.marketplace.ThemeStoreItemsListActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.objectbox.Promotion_;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import io.objectbox.C17944a;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/PromotionManager.class */
public class PromotionManager {
    /* renamed from: a */
    public static void m28518a() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class);
        List<Promotion> m4628c = m4727d.m4700e().m4610a(Promotion_.expiredDate, new Date()).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (Promotion promotion : m4628c) {
                if (promotion.getCurrentNumberToGetGift() != promotion.getNumberToGetGift()) {
                    m4727d.m4704b((Collection) m4628c);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m28516a(Uri uri, Context context) {
        String queryParameter = uri.getQueryParameter("X");
        String queryParameter2 = uri.getQueryParameter("A");
        String queryParameter3 = uri.getQueryParameter("Y");
        String queryParameter4 = uri.getQueryParameter("Z");
        String queryParameter5 = uri.getQueryParameter("T");
        boolean z = false;
        if (queryParameter != null) {
            z = false;
            if (queryParameter3 != null) {
                z = false;
                if (queryParameter4 != null) {
                    z = false;
                    if (queryParameter2 != null) {
                        try {
                            int parseInt = Integer.parseInt(queryParameter);
                            Promotion.ProductType valueOf = Promotion.ProductType.valueOf(queryParameter2.toUpperCase());
                            int parseInt2 = Integer.parseInt(queryParameter3);
                            Promotion.ProductType valueOf2 = Promotion.ProductType.valueOf(queryParameter4.toUpperCase());
                            int parseInt3 = Integer.parseInt(queryParameter5);
                            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class);
                            m28518a();
                            z = false;
                            if (CollectionUtils.m26076a(m4727d.m4700e().m4599d(Promotion_.currentNumberToGetGift, 0L).m4618a().m4628c())) {
                                m4727d.m4711a((C17944a) new Promotion(DateUtils.m27136a(parseInt3, 5).getTime(), parseInt, 0, valueOf, parseInt2, valueOf2));
                                z = true;
                            }
                        } catch (NumberFormatException e) {
                            CLog.m27609a(PromotionManager.class, e);
                            z = false;
                        }
                    }
                }
            }
        }
        if (z) {
            Activities.m27656b(context, new Intent(context, queryParameter2.equals(Promotion.ProductType.CALL_SCREEN.getType()) ? CallScreenThemeStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.COVER.getType()) ? CoverStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.SUPER_SKIN.getType()) ? SuperSkinStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.THEME.getType()) ? ThemeStoreItemsListActivity.class : MarketPlaceActivity.class));
            return;
        }
        Intent intent = new Intent(context, MarketPlaceActivity.class);
        intent.putExtra("USER_ALREADY_HAS_PROMOTION", true);
        Activities.m27656b(context, intent);
    }

    /* renamed from: a */
    public static void m28515a(Promotion.ProductType productType) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class);
        List<Promotion> m4628c = m4727d.m4700e().m4613a(Promotion_.typeToBuyToGetGift, productType.ordinal()).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (Promotion promotion : m4628c) {
                promotion.incrementCurrentProductNumber();
                m4727d.m4711a((C17944a) promotion);
            }
            AnalyticsManager.get().m28450a(Constants.STORE, "buy from promo");
        }
    }

    /* renamed from: a */
    public static boolean m28517a(Uri uri) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class);
        String queryParameter = uri.getQueryParameter("A");
        String queryParameter2 = uri.getQueryParameter("Z");
        return (queryParameter2 == null || queryParameter == null || CollectionUtils.m26076a(m4727d.m4700e().m4613a(Promotion_.typeOfGift, (long) Promotion.ProductType.valueOf(queryParameter2.toUpperCase()).ordinal()).m4613a(Promotion_.typeToBuyToGetGift, (long) Promotion.ProductType.valueOf(queryParameter.toUpperCase()).ordinal()).m4618a().m4628c())) ? false : true;
    }

    /* renamed from: b */
    public static boolean m28514b(Promotion.ProductType productType) {
        List<Promotion> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4700e().m4613a(Promotion_.typeOfGift, productType.ordinal()).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (Promotion promotion : m4628c) {
                if (promotion.getNumberToGetGift() == promotion.getCurrentNumberToGetGift()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public static void m28513c(Promotion.ProductType productType) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class);
        List<Promotion> m4628c = m4727d.m4700e().m4613a(Promotion_.typeOfGift, productType.ordinal()).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (Promotion promotion : m4628c) {
                int numberOfUsedGift = promotion.getNumberOfUsedGift() + 1;
                promotion.setNumberOfUsedGift(numberOfUsedGift);
                if (numberOfUsedGift >= promotion.getNumberOfGift()) {
                    m4727d.m4705b((C17944a) promotion);
                } else {
                    m4727d.m4711a((C17944a) promotion);
                }
            }
        }
    }

    /* renamed from: d */
    public static boolean m28512d(Promotion.ProductType productType) {
        List<Promotion> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4700e().m4613a(Promotion_.typeOfGift, productType.ordinal()).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (Promotion promotion : m4628c) {
                if (promotion.getNumberToGetGift() == promotion.getCurrentNumberToGetGift()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static Pair<String, String> getPromotionBannerBuyTitle() {
        List m4703c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4703c();
        if (CollectionUtils.m26068b(m4703c)) {
            Promotion promotion = (Promotion) m4703c.get(0);
            return new Pair<>(Activities.getString(2131887449), Activities.m27697a(2131887446, promotion.getTypeToBuyToGetGift().getTitle(), promotion.getTypeOfGift().getTitle()));
        }
        return null;
    }

    public static Pair<String, String> getPromotionBannerNotBuyTitle() {
        List m4703c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4703c();
        if (CollectionUtils.m26068b(m4703c)) {
            Promotion promotion = (Promotion) m4703c.get(0);
            return new Pair<>(Activities.getString(2131887448), Activities.m27697a(2131887447, String.valueOf(DateUtils.m27124a(new Date(), promotion.getExpiredDate(), TimeUnit.DAYS)), String.valueOf(promotion.getNumberToGetGift()), promotion.getTypeToBuyToGetGift().getTitle(), String.valueOf(promotion.getNumberOfGift()), promotion.getTypeOfGift().getTitle()));
        }
        return null;
    }

    public static String getPromotionType() {
        List m4703c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4703c();
        if (CollectionUtils.m26068b(m4703c)) {
            return ((Promotion) m4703c.get(0)).getTypeToBuyToGetGift().getTitle();
        }
        return null;
    }

    public static boolean isUserHasActivePromotion() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4709b() > 0;
    }

    public static boolean isUserPurchaesPromotion() {
        List m4703c = CallAppApplication.get().getObjectBoxStore().m4727d(Promotion.class).m4703c();
        return CollectionUtils.m26068b(m4703c) && ((Promotion) m4703c.get(0)).getCurrentNumberToGetGift() > 0;
    }
}

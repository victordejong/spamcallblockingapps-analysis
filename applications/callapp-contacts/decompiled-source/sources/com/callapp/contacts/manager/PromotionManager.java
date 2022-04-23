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
import io.objectbox.a;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/PromotionManager.class */
public class PromotionManager {
    public static void a() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class);
        List<Promotion> c2 = d2.e().a(Promotion_.expiredDate, new Date()).a().c();
        if (CollectionUtils.b(c2)) {
            for (Promotion promotion : c2) {
                if (promotion.getCurrentNumberToGetGift() != promotion.getNumberToGetGift()) {
                    d2.b((Collection) c2);
                }
            }
        }
    }

    public static void a(Uri uri, Context context) {
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
                            a d2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class);
                            a();
                            z = false;
                            if (CollectionUtils.a(d2.e().d(Promotion_.currentNumberToGetGift, 0L).a().c())) {
                                d2.a((a) new Promotion(DateUtils.a(parseInt3, 5).getTime(), parseInt, 0, valueOf, parseInt2, valueOf2));
                                z = true;
                            }
                        } catch (NumberFormatException e) {
                            CLog.a(PromotionManager.class, e);
                            z = false;
                        }
                    }
                }
            }
        }
        if (z) {
            Activities.b(context, new Intent(context, queryParameter2.equals(Promotion.ProductType.CALL_SCREEN.getType()) ? CallScreenThemeStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.COVER.getType()) ? CoverStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.SUPER_SKIN.getType()) ? SuperSkinStoreItemsListActivity.class : queryParameter2.equals(Promotion.ProductType.THEME.getType()) ? ThemeStoreItemsListActivity.class : MarketPlaceActivity.class));
            return;
        }
        Intent intent = new Intent(context, MarketPlaceActivity.class);
        intent.putExtra("USER_ALREADY_HAS_PROMOTION", true);
        Activities.b(context, intent);
    }

    public static void a(Promotion.ProductType productType) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class);
        List<Promotion> c2 = d2.e().a(Promotion_.typeToBuyToGetGift, productType.ordinal()).a().c();
        if (CollectionUtils.b(c2)) {
            for (Promotion promotion : c2) {
                promotion.incrementCurrentProductNumber();
                d2.a((a) promotion);
            }
            AnalyticsManager.get().a(Constants.STORE, "buy from promo");
        }
    }

    public static boolean a(Uri uri) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class);
        String queryParameter = uri.getQueryParameter("A");
        String queryParameter2 = uri.getQueryParameter("Z");
        return (queryParameter2 == null || queryParameter == null || CollectionUtils.a(d2.e().a(Promotion_.typeOfGift, (long) Promotion.ProductType.valueOf(queryParameter2.toUpperCase()).ordinal()).a(Promotion_.typeToBuyToGetGift, (long) Promotion.ProductType.valueOf(queryParameter.toUpperCase()).ordinal()).a().c())) ? false : true;
    }

    public static boolean b(Promotion.ProductType productType) {
        List<Promotion> c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).e().a(Promotion_.typeOfGift, productType.ordinal()).a().c();
        if (!CollectionUtils.b(c2)) {
            return false;
        }
        for (Promotion promotion : c2) {
            if (promotion.getNumberToGetGift() == promotion.getCurrentNumberToGetGift()) {
                return true;
            }
        }
        return false;
    }

    public static void c(Promotion.ProductType productType) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class);
        List<Promotion> c2 = d2.e().a(Promotion_.typeOfGift, productType.ordinal()).a().c();
        if (CollectionUtils.b(c2)) {
            for (Promotion promotion : c2) {
                int numberOfUsedGift = promotion.getNumberOfUsedGift() + 1;
                promotion.setNumberOfUsedGift(numberOfUsedGift);
                if (numberOfUsedGift >= promotion.getNumberOfGift()) {
                    d2.b((a) promotion);
                } else {
                    d2.a((a) promotion);
                }
            }
        }
    }

    public static boolean d(Promotion.ProductType productType) {
        List<Promotion> c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).e().a(Promotion_.typeOfGift, productType.ordinal()).a().c();
        if (!CollectionUtils.b(c2)) {
            return false;
        }
        for (Promotion promotion : c2) {
            if (promotion.getNumberToGetGift() == promotion.getCurrentNumberToGetGift()) {
                return true;
            }
        }
        return false;
    }

    public static Pair<String, String> getPromotionBannerBuyTitle() {
        List c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).c();
        if (!CollectionUtils.b(c2)) {
            return null;
        }
        Promotion promotion = (Promotion) c2.get(0);
        return new Pair<>(Activities.getString(2131887449), Activities.a(2131887446, promotion.getTypeToBuyToGetGift().getTitle(), promotion.getTypeOfGift().getTitle()));
    }

    public static Pair<String, String> getPromotionBannerNotBuyTitle() {
        List c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).c();
        if (!CollectionUtils.b(c2)) {
            return null;
        }
        Promotion promotion = (Promotion) c2.get(0);
        return new Pair<>(Activities.getString(2131887448), Activities.a(2131887447, String.valueOf(DateUtils.a(new Date(), promotion.getExpiredDate(), TimeUnit.DAYS)), String.valueOf(promotion.getNumberToGetGift()), promotion.getTypeToBuyToGetGift().getTitle(), String.valueOf(promotion.getNumberOfGift()), promotion.getTypeOfGift().getTitle()));
    }

    public static String getPromotionType() {
        List c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).c();
        if (CollectionUtils.b(c2)) {
            return ((Promotion) c2.get(0)).getTypeToBuyToGetGift().getTitle();
        }
        return null;
    }

    public static boolean isUserHasActivePromotion() {
        return CallAppApplication.get().getObjectBoxStore().d(Promotion.class).b() > 0;
    }

    public static boolean isUserPurchaesPromotion() {
        List c2 = CallAppApplication.get().getObjectBoxStore().d(Promotion.class).c();
        return CollectionUtils.b(c2) && ((Promotion) c2.get(0)).getCurrentNumberToGetGift() > 0;
    }
}

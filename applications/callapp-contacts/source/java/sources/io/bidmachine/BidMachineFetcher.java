package io.bidmachine;

import android.text.TextUtils;
import io.bidmachine.AdRequest;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.utils.BMError;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineFetcher.class */
public class BidMachineFetcher {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String AD_TYPE_DISPLAY = "display";
    public static final String AD_TYPE_NATIVE = "native";
    public static final String AD_TYPE_VIDEO = "video";
    private static final BigDecimal DEF_PRICE_ROUNDING;
    private static final RoundingMode DEF_PRICE_ROUNDING_MODE;
    public static final String KEY_AD_TYPE = "bm_ad_type";
    public static final String KEY_ID = "bm_id";
    public static final String KEY_NETWORK_KEY = "bm_network_key";
    public static final String KEY_PRICE = "bm_pf";
    static EnumMap<AdsType, Map<String, AdRequest>> cachedRequests = new EnumMap<>(AdsType.class);
    static BigDecimal priceRounding;
    static RoundingMode priceRoundingMode;

    /* renamed from: io.bidmachine.BidMachineFetcher$2 */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineFetcher$2.class */
    public static final /* synthetic */ class C177902 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$CreativeFormat;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CreativeFormat.values().length];
            $SwitchMap$io$bidmachine$CreativeFormat = iArr;
            try {
                iArr[CreativeFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$bidmachine$CreativeFormat[CreativeFormat.Video.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$bidmachine$CreativeFormat[CreativeFormat.Native.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/BidMachineFetcher$MoPub.class */
    public static final class MoPub {
        @Deprecated
        public static String toKeywords(AdRequest adRequest) {
            return toKeywords(BidMachineFetcher.toMap(adRequest));
        }

        @Deprecated
        public static String toKeywords(Map<String, String> map) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(entry.getKey());
                sb.append(":");
                sb.append((Object) entry.getValue());
            }
            return sb.toString();
        }
    }

    static {
        BigDecimal bigDecimal = new BigDecimal("0.01");
        DEF_PRICE_ROUNDING = bigDecimal;
        RoundingMode roundingMode = RoundingMode.CEILING;
        DEF_PRICE_ROUNDING_MODE = roundingMode;
        priceRounding = bigDecimal;
        priceRoundingMode = roundingMode;
    }

    public static Map<String, String> fetch(AdRequest adRequest) {
        Map<String, String> map = toMap(adRequest);
        String str = map.get(KEY_ID);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        AdsType type = adRequest.getType();
        adRequest.addListener(new AdRequest.AdRequestListener() { // from class: io.bidmachine.BidMachineFetcher.1
            @Override // io.bidmachine.AdRequest.AdRequestListener
            public final void onRequestExpired(AdRequest adRequest2) {
                BidMachineFetcher.release(adRequest2);
            }

            @Override // io.bidmachine.AdRequest.AdRequestListener
            public final void onRequestFailed(AdRequest adRequest2, BMError bMError) {
            }

            @Override // io.bidmachine.AdRequest.AdRequestListener
            public final void onRequestSuccess(AdRequest adRequest2, AuctionResult auctionResult) {
            }
        });
        synchronized (BidMachineFetcher.class) {
            try {
                Map<String, AdRequest> map2 = cachedRequests.get(type);
                Map<String, AdRequest> map3 = map2;
                if (map2 == null) {
                    map3 = new HashMap<>();
                    cachedRequests.put((EnumMap<AdsType, Map<String, AdRequest>>) type, (AdsType) map3);
                }
                map3.put(str, adRequest);
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    static String identifyAdType(CreativeFormat creativeFormat) {
        if (creativeFormat == null) {
            return null;
        }
        int i = C177902.$SwitchMap$io$bidmachine$CreativeFormat[creativeFormat.ordinal()];
        if (i == 1) {
            return AD_TYPE_DISPLAY;
        }
        if (i == 2) {
            return "video";
        }
        if (i == 3) {
            return "native";
        }
        return null;
    }

    public static <T extends AdRequest> T release(T t) {
        AuctionResult auctionResult = t.getAuctionResult();
        if (auctionResult != null) {
            return (T) release(t.getType(), auctionResult.getId());
        }
        return null;
    }

    public static <T extends AdRequest> T release(AdsType adsType, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (BidMachineFetcher.class) {
            try {
                Map<String, AdRequest> map = cachedRequests.get(adsType);
                if (map == null) {
                    return null;
                }
                try {
                    return (T) map.remove(str);
                } catch (Exception e) {
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <T extends AdRequest> T release(AdsType adsType, Map<String, String> map) {
        return (T) release(adsType, map.get(KEY_ID));
    }

    @Deprecated
    public static void resetPriceRounding() {
        priceRounding = DEF_PRICE_ROUNDING;
        priceRoundingMode = DEF_PRICE_ROUNDING_MODE;
    }

    @Deprecated
    public static String roundPrice(double d) {
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(d));
        if (priceRounding.signum() != 0) {
            bigDecimal = bigDecimal.divide(priceRounding, 0, priceRoundingMode).multiply(priceRounding);
        }
        return bigDecimal.setScale(priceRounding.scale(), RoundingMode.HALF_UP).toString();
    }

    @Deprecated
    public static void setPriceRounding(double d) {
        setPriceRounding(d, DEF_PRICE_ROUNDING_MODE);
    }

    @Deprecated
    public static void setPriceRounding(double d, RoundingMode roundingMode) {
        if (roundingMode != RoundingMode.UNNECESSARY) {
            priceRounding = new BigDecimal(String.valueOf(d));
            priceRoundingMode = roundingMode;
            return;
        }
        throw new IllegalArgumentException("Invalid rounding mode");
    }

    public static Map<String, String> toMap(AdRequest adRequest) {
        HashMap hashMap = new HashMap();
        AuctionResult auctionResult = adRequest.getAuctionResult();
        if (auctionResult == null) {
            return hashMap;
        }
        hashMap.put(KEY_ID, auctionResult.getId());
        hashMap.put(KEY_PRICE, roundPrice(auctionResult.getPrice()));
        hashMap.put(KEY_NETWORK_KEY, auctionResult.getNetworkKey());
        String identifyAdType = identifyAdType(auctionResult.getCreativeFormat());
        if (identifyAdType != null) {
            hashMap.put(KEY_AD_TYPE, identifyAdType);
        }
        hashMap.putAll(auctionResult.getCustomParams());
        return hashMap;
    }
}

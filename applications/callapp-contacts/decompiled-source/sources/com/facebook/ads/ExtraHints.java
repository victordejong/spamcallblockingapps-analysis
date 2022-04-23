package com.facebook.ads;

import android.text.TextUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/ExtraHints.class */
public class ExtraHints {
    private static final String HINTS_JSON_KEY = "hints";
    private static final int KEYWORDS_MAX_COUNT = 5;
    private static final String KEYWORD_SEPARATOR = ";";
    private final String mHintsSerialized;
    private final String mMediationData;

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/ExtraHints$Builder.class */
    public static class Builder {
        private HashMap<HintType, String> mHints = new HashMap<>();
        private String mMediationData;

        public ExtraHints build() {
            return new ExtraHints(this.mHints, this.mMediationData);
        }

        public Builder contentUrl(String str) {
            if (str == null) {
                return this;
            }
            this.mHints.put(HintType.CONTENT_URL, str);
            return this;
        }

        public Builder extraData(String str) {
            if (str == null) {
                return this;
            }
            this.mHints.put(HintType.EXTRA_DATA, str);
            return this;
        }

        @Deprecated
        public Builder keywords(List<Keyword> list) {
            return this;
        }

        public Builder mediationData(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            this.mMediationData = str;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/ExtraHints$HintType.class */
    public enum HintType {
        KEYWORDS(VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY),
        CONTENT_URL("content_url"),
        EXTRA_DATA("extra_data");
        
        private String mKey;

        HintType(String str) {
            this.mKey = str;
        }
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/ExtraHints$Keyword.class */
    public enum Keyword {
        ACCESSORIES("accessories"),
        ART_HISTORY("art_history"),
        AUTOMOTIVE("automotive"),
        BEAUTY("beauty"),
        BIOLOGY("biology"),
        BOARD_GAMES("board_games"),
        BUSINESS_SOFTWARE("business_software"),
        BUYING_SELLING_HOMES("buying_selling_homes"),
        CATS("cats"),
        CELEBRITIES("celebrities"),
        CLOTHING("clothing"),
        COMIC_BOOKS("comic_books"),
        DESKTOP_VIDEO("desktop_video"),
        DOGS("dogs"),
        EDUCATION(VerizonSSPWaterfallProvider.USER_DATA_EDUCATION_KEY),
        EMAIL("email"),
        ENTERTAINMENT("entertainment"),
        FAMILY_PARENTING("family_parenting"),
        FASHION("fashion"),
        FINE_ART("fine_art"),
        FOOD_DRINK("food_drink"),
        FRENCH_CUISINE("french_cuisine"),
        GOVERNMENT("government"),
        HEALTH_FITNESS("health_fitness"),
        HOBBIES("hobbies"),
        HOME_GARDEN("home_garden"),
        HUMOR("humor"),
        INTERNET_TECHNOLOGY("internet_technology"),
        LARGE_ANIMALS("large_animals"),
        LAW("law"),
        LEGAL_ISSUES("legal_issues"),
        LITERATURE("literature"),
        MARKETING("marketing"),
        MOVIES("movies"),
        MUSIC("music"),
        NEWS("news"),
        PERSONAL_FINANCE("personal_finance"),
        PETS("pets"),
        PHOTOGRAPHY("photography"),
        POLITICS(VerizonSSPWaterfallProvider.USER_DATA_POLITICS_KEY),
        REAL_ESTATE("real_estate"),
        ROLEPLAYING_GAMES("roleplaying_games"),
        SCIENCE("science"),
        SHOPPING("shopping"),
        SOCIETY("society"),
        SPORTS("sports"),
        TECHNOLOGY("technology"),
        TELEVISION("television"),
        TRAVEL("travel"),
        VIDEO_COMPUTER_GAMES("video_computer_games");
        
        private String mKeyword;

        Keyword(String str) {
            this.mKeyword = str;
        }
    }

    private ExtraHints(HashMap<HintType, String> hashMap, String str) {
        this.mMediationData = str;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<HintType, String> entry : hashMap.entrySet()) {
            try {
                jSONObject2.put(entry.getKey().mKey, entry.getValue());
            } catch (JSONException e) {
            }
        }
        try {
            jSONObject.put(HINTS_JSON_KEY, jSONObject2);
        } catch (JSONException e2) {
        }
        this.mHintsSerialized = jSONObject.toString();
    }

    private static String join(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append(str);
            sb.append(KEYWORD_SEPARATOR);
        }
        return sb.toString();
    }

    public String getHints() {
        return this.mHintsSerialized;
    }

    public String getMediationData() {
        return this.mMediationData;
    }
}

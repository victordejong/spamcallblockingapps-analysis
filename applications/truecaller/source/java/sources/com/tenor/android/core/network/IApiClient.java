package com.tenor.android.core.network;

import com.tenor.android.core.constant.MediaFilter;
import com.tenor.android.core.model.impl.Suggestions;
import com.tenor.android.core.response.impl.AnonIdResponse;
import com.tenor.android.core.response.impl.EmojiResponse;
import com.tenor.android.core.response.impl.GifsResponse;
import com.tenor.android.core.response.impl.PackResponse;
import com.tenor.android.core.response.impl.SearchSuggestionResponse;
import com.tenor.android.core.response.impl.TagsResponse;
import com.tenor.android.core.response.impl.TrendingGifResponse;
import com.tenor.android.core.response.impl.TrendingTermResponse;
import java.util.Map;
import x3.b;
import x3.h0.c;
import x3.h0.d;
import x3.h0.e;
import x3.h0.f;
import x3.h0.g;
import x3.h0.o;
import x3.h0.t;
import x3.h0.u;
import x3.h0.y;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/network/IApiClient.class */
public interface IApiClient {
    @f("anonid?platform=android")
    b<AnonIdResponse> getAnonId(@t("key") String str, @t("locale") String str2);

    @f("tags?platform=android&type=emoji")
    b<EmojiResponse> getEmojiTags(@u Map<String, String> map);

    @f("gifs")
    b<GifsResponse> getGifs(@u Map<String, String> map, @t("ids") String str, @MediaFilter.Value @t("media_filter") String str2, @t("ar_range") String str3);

    @g
    b<Void> getImageSize(@y String str);

    @f("pack")
    b<PackResponse> getPack(@t("key") String str, @t("publicid") String str2);

    @f("search_suggestions?platform=android")
    b<SearchSuggestionResponse> getSearchSuggestions(@u Map<String, String> map, @t("tag") String str, @t("limit") Integer num);

    @f("suggest")
    b<Suggestions> getSuggestions(@u Map<String, String> map, @t("tag") String str, @t("limit") Integer num, @t("type") String str2, @t("timezone") String str3, @t("allterms") boolean z);

    @f("tags")
    b<TagsResponse> getTags(@u Map<String, String> map, @t("type") String str, @t("timezone") String str2);

    @f("autocomplete?type=trending")
    b<TrendingTermResponse> getTrending(@u Map<String, String> map, @t("limit") Integer num);

    @f("trending")
    b<TrendingGifResponse> getTrending(@u Map<String, String> map, @t("limit") Integer num, @t("pos") String str, @MediaFilter.Value @t("media_filter") String str2, @t("ar_range") String str3);

    @f("user")
    b<GifsResponse> getUserGifs(@u Map<String, String> map, @t("id") String str, @t("access_token") String str2);

    @o("registeraction")
    @e
    b<Void> registerActions(@d Map<String, String> map, @c("data") String str);

    @f("registersearch")
    b<Void> registerSearch(@u Map<String, String> map, @t("q") String str, @t("pos") String str2);

    @f("registershare")
    b<Void> registerShare(@u Map<String, String> map, @t("id") Integer num, @t("q") String str);

    @f("search")
    b<GifsResponse> search(@u Map<String, String> map, @t("q") String str, @t("limit") int i, @t("pos") String str2, @MediaFilter.Value @t("media_filter") String str3, @t("ar_range") String str4);
}

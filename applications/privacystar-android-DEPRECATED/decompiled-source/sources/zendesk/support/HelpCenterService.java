package zendesk.support;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterService.class */
interface HelpCenterService {
    @DELETE("/api/v2/help_center/votes/{vote_id}.json")
    Call<Void> deleteVote(@Path("vote_id") Long l);

    @POST("/api/v2/help_center/articles/{article_id}/down.json")
    Call<ArticleVoteResponse> downvoteArticle(@Path("article_id") Long l, @Body String str);

    @GET("/api/v2/help_center/{locale}/articles/{article_id}.json?respect_sanitization_settings=true")
    Call<ArticleResponse> getArticle(@Path("locale") String str, @Path("article_id") Long l, @Query("include") String str2);

    @GET("/api/v2/help_center/{locale}/sections/{id}/articles.json?respect_sanitization_settings=true")
    Call<ArticlesListResponse> getArticles(@Path("locale") String str, @Path("id") Long l, @Query("label_names") String str2, @Query("include") String str3, @Query("per_page") int i);

    @GET("/api/v2/help_center/{locale}/articles/{article_id}/attachments/{attachment_type}.json")
    Call<AttachmentResponse> getAttachments(@Path("locale") String str, @Path("article_id") Long l, @Path("attachment_type") String str2);

    @GET("/api/v2/help_center/{locale}/categories.json?per_page=1000")
    Call<CategoriesResponse> getCategories(@Path("locale") String str);

    @GET("/api/v2/help_center/{locale}/categories/{category_id}.json")
    Call<CategoryResponse> getCategoryById(@Path("locale") String str, @Path("category_id") Long l);

    @GET("/hc/api/mobile/{locale}/article_tree.json")
    Call<HelpResponse> getHelp(@Path("locale") String str, @Query("category_ids") String str2, @Query("section_ids") String str3, @Query("include") String str4, @Query("limit") int i, @Query("article_labels") String str5, @Query("per_page") int i2, @Query("sort_by") String str6, @Query("sort_order") String str7);

    @GET("/api/v2/help_center/{locale}/sections/{section_id}.json")
    Call<SectionResponse> getSectionById(@Path("locale") String str, @Path("section_id") Long l);

    @GET("/api/v2/help_center/{locale}/categories/{id}/sections.json")
    Call<SectionsResponse> getSections(@Path("locale") String str, @Path("id") Long l, @Query("per_page") int i);

    @GET("/api/mobile/help_center/search/deflect.json?respect_sanitization_settings=true")
    Call<SuggestedArticleResponse> getSuggestedArticles(@Query("query") String str, @Query("locale") String str2, @Query("label_names") String str3, @Query("category") Long l, @Query("section") Long l2);

    @GET("/api/v2/help_center/{locale}/articles.json?respect_sanitization_settings=true")
    Call<ArticlesListResponse> listArticles(@Path("locale") String str, @Query("label_names") String str2, @Query("include") String str3, @Query("sort_by") String str4, @Query("sort_order") String str5, @Query("page") Integer num, @Query("per_page") Integer num2);

    @GET("/api/v2/help_center/articles/search.json?respect_sanitization_settings=true&origin=mobile_sdk")
    Call<ArticlesSearchResponse> searchArticles(@Query("query") String str, @Query("locale") String str2, @Query("include") String str3, @Query("label_names") String str4, @Query("category") String str5, @Query("section") String str6, @Query("page") Integer num, @Query("per_page") Integer num2);

    @POST("/api/v2/help_center/{locale}/articles/{article_id}/stats/view.json")
    Call<Void> submitRecordArticleView(@Path("article_id") Long l, @Path("locale") String str, @Body RecordArticleViewRequest recordArticleViewRequest);

    @POST("/api/v2/help_center/articles/{article_id}/up.json")
    Call<ArticleVoteResponse> upvoteArticle(@Path("article_id") Long l, @Body String str);
}

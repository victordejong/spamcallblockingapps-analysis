.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;
.super Ljava/lang/Object;
.source "CommunityReviewsLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EServiceTemporarilyUnavailable;,
        Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EDownloadFailed;,
        Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a;

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mistergroup/shouldianswer/utils/ad$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$a;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "country"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/communityDatabase/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 17
    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad$a;

    .line 18
    sget-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityReviewsLoader use of cache disabled!"

    invoke-static {v1, v3, p1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 21
    :cond_0
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->d:Z

    if-eqz v1, :cond_1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->b:Ljava/lang/String;

    const-string v4, "number"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->c:Ljava/lang/String;

    const-string v4, "country"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v3, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/ad;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/mistergroup/shouldianswer/utils/ad;->b(Ljava/lang/String;Ljava/util/HashMap;)Lorg/mistergroup/shouldianswer/utils/ad$a;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->e:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_4

    .line 30
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "CommunityReviewsLoader parseData"

    invoke-static {v1, v3, p1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :try_start_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    const-string v3, "items"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_3

    .line 41
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 42
    new-instance v6, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    invoke-direct {v6}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;-><init>()V

    const-string v7, "id"

    .line 43
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(I)V

    .line 44
    sget-object v7, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    const-string v8, "rating"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 45
    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    const-string v8, "category_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    const-string v7, "nick"

    .line 46
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "jItem.getString(\"nick\")"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(Ljava/lang/String;)V

    const-string v7, "title"

    .line 47
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "jItem.getString(\"title\")"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->b(Ljava/lang/String;)V

    const-string v7, "comment"

    .line 48
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "jItem.getString(\"comment\")"

    invoke-static {v5, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, p1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    :cond_3
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommunityReviewsLoader loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, p1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1

    .line 31
    :cond_4
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "CommunityReviewsLoader failed!"

    invoke-static {v0, v1, p1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    new-instance p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EDownloadFailed;

    invoke-direct {p1, p0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader$EDownloadFailed;-><init>(Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

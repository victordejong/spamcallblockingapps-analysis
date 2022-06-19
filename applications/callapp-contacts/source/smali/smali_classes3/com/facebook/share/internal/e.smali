.class public final Lcom/facebook/share/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/16 v1, 0x3a

    .line 501
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    .line 503
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 508
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 651
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/ae;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    new-instance v1, Ljava/io/File;

    .line 653
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-static {p0, v1, p2}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object p0

    return-object p0

    .line 654
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/ae;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    new-instance v1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v3, "image/png"

    invoke-direct {v1, p1, v3}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 660
    new-instance v7, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v7, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 661
    invoke-virtual {v7, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 663
    new-instance p1, Lcom/facebook/GraphRequest;

    const-string v6, "me/staging_resources"

    sget-object v8, Lcom/facebook/k;->POST:Lcom/facebook/k;

    move-object v4, p1

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-object p1

    .line 655
    :cond_2
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 663
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/high16 v1, 0x10000000

    .line 626
    :try_start_0
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 627
    new-instance v1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v3, "image/png"

    invoke-direct {v1, p1, v3}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 629
    new-instance v7, Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {v7, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, "file"

    .line 630
    invoke-virtual {v7, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 632
    new-instance p1, Lcom/facebook/GraphRequest;

    const-string v6, "me/staging_resources"

    sget-object v8, Lcom/facebook/k;->POST:Lcom/facebook/k;

    move-object v4, p1

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(ILandroid/content/Intent;)Lcom/facebook/internal/a;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 213
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/z;->a(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 218
    :cond_1
    invoke-static {p1, p0}, Lcom/facebook/internal/a;->a(Ljava/util/UUID;I)Lcom/facebook/internal/a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/y$a;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    .line 532
    :try_start_0
    invoke-static {p0, p2}, Lcom/facebook/internal/y;->a(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/y$a;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 534
    invoke-static {p0, p1}, Lcom/facebook/internal/y;->a(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/y$a;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 537
    :goto_0
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method static synthetic a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/y$a;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 81
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/share/internal/e;->b(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/y$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/widget/LikeView$e;)Lcom/facebook/share/widget/LikeView$e;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-ne p0, p1, :cond_1

    return-object p0

    .line 674
    :cond_1
    :try_start_0
    sget-object v1, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;

    if-ne p0, v1, :cond_2

    return-object p1

    .line 676
    :cond_2
    sget-object v0, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    return-object v2

    :catchall_0
    move-exception p0

    .line 680
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 435
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 436
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 437
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 438
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 439
    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4, p1}, Lcom/facebook/share/internal/e;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1

    .line 440
    :cond_1
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    .line 441
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4, p1}, Lcom/facebook/share/internal/e;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 443
    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :catchall_0
    move-exception p0

    .line 446
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 410
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    .line 412
    new-instance v1, Lcom/facebook/share/internal/ShareInternalUtility$8;

    invoke-direct {v1}, Lcom/facebook/share/internal/ShareInternalUtility$8;-><init>()V

    invoke-static {p0, v1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 11

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    .line 456
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 457
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 458
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 459
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 460
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 463
    instance-of v8, v7, Lorg/json/JSONObject;

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 464
    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v7, v9}, Lcom/facebook/share/internal/e;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_1

    .line 465
    :cond_2
    instance-of v8, v7, Lorg/json/JSONArray;

    if-eqz v8, :cond_3

    .line 466
    check-cast v7, Lorg/json/JSONArray;

    invoke-static {v7, v9}, Lcom/facebook/share/internal/e;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v7

    .line 469
    :cond_3
    :goto_1
    invoke-static {v6}, Lcom/facebook/share/internal/e;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 470
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 471
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    if-eqz p1, :cond_7

    if-eqz v9, :cond_4

    const-string v10, "fbsdk"

    .line 474
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 475
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_6

    const-string v6, "og"

    .line 476
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 477
    :cond_6
    :goto_2
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    const-string v10, "fb"

    .line 481
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 482
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 484
    :cond_8
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 488
    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_a

    const-string p0, "data"

    .line 489
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 494
    :catch_0
    :try_start_1
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Failed to create json object from share content"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(ILandroid/content/Intent;Lcom/facebook/share/internal/d;)Z
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 152
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/share/internal/e;->a(ILandroid/content/Intent;)Lcom/facebook/internal/a;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/a;->a()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/y;->a(Ljava/util/UUID;)V

    .line 163
    invoke-static {p1}, Lcom/facebook/internal/z;->e(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/z;->a(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 165
    instance-of p1, v1, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {p2, p0}, Lcom/facebook/share/internal/d;->a(Lcom/facebook/internal/a;)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p2, p0, v1}, Lcom/facebook/share/internal/d;->a(Lcom/facebook/internal/a;Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-static {p1}, Lcom/facebook/internal/z;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    .line 173
    invoke-virtual {p2, p0, p1}, Lcom/facebook/share/internal/d;->a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 176
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static b(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/y$a;
    .locals 3

    const-class v0, Lcom/facebook/share/internal/e;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 516
    :cond_0
    :try_start_0
    instance-of v1, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_1

    .line 517
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .line 518
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 519
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 520
    :cond_1
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v1, :cond_2

    .line 521
    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    .line 522
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p1

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object p1, v2

    move-object v1, p1

    .line 525
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/facebook/share/internal/e;->a(Ljava/util/UUID;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/facebook/internal/y$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

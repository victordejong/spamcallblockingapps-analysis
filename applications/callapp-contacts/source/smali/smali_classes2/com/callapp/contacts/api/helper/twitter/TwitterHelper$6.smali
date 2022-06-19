.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Z)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-boolean p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->a:Z

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->g(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    if-nez v7, :cond_5

    .line 557
    iget-object v8, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v9, v2, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    iget-object v10, v2, Lcom/twitter/sdk/android/core/models/User;->idStr:Ljava/lang/String;

    invoke-static {v8, v9, v10, v0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 559
    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getIDs()[J

    move-result-object v0

    if-eqz v0, :cond_3

    .line 560
    array-length v1, v0

    if-lez v1, :cond_3

    .line 561
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v4, [J

    const/4 v9, 0x0

    .line 564
    :goto_1
    array-length v10, v0

    div-int/2addr v10, v4

    if-gt v9, v10, :cond_3

    .line 565
    array-length v10, v0

    div-int/2addr v10, v4

    if-ne v9, v10, :cond_1

    .line 566
    array-length v1, v0

    rem-int/2addr v1, v4

    new-array v1, v1, [J

    .line 568
    :cond_1
    array-length v10, v1

    if-lez v10, :cond_2

    mul-int/lit8 v10, v9, 0x64

    .line 569
    array-length v11, v1

    invoke-static {v0, v10, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget-object v10, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v10, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;[J)Ljava/util/List;

    move-result-object v10

    .line 571
    invoke-static {v10}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 573
    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 579
    :cond_3
    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getNextCursor()J

    move-result-wide v0

    .line 580
    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getRateLimit()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    move-result-object v8

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-lez v11, :cond_4

    if-eqz v8, :cond_0

    .line 581
    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;->getRemaining()I

    move-result v8

    if-gtz v8, :cond_0

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 589
    :cond_5
    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 590
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6$1;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 596
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->a:Z

    if-eqz v0, :cond_7

    .line 597
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v5, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 600
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move-object v0, v5

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    .line 603
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 610
    iget-boolean v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "twitter_followers_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0044

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    const v0, 0x7f0b0043

    return v0
.end method

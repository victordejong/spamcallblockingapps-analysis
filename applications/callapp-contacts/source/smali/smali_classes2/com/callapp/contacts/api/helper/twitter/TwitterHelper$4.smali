.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFollowingByTheUser()Ljava/util/List;
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
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->f(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Ljava/util/Set;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    .line 435
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 436
    invoke-static {v0}, Lcom/callapp/contacts/util/ArrayUtils;->a([Ljava/lang/Long;)[J

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;[J)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4$1;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 449
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 426
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter_friends"

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

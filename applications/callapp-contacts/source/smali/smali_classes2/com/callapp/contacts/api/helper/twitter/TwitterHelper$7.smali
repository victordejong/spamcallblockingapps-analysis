.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFriendIDs()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Ljava/util/HashSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 635
    :try_start_0
    iget-object v4, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->g(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 638
    iget-object v6, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v7, v4, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    iget-object v8, v4, Lcom/twitter/sdk/android/core/models/User;->idStr:Ljava/lang/String;

    invoke-static {v6, v7, v8, v1, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 640
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getIDs()[J

    move-result-object v1

    if-eqz v1, :cond_1

    .line 641
    array-length v2, v1

    if-lez v2, :cond_1

    .line 642
    invoke-static {v1}, Lcom/callapp/contacts/util/ArrayUtils;->a([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 644
    :cond_1
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getNextCursor()J

    move-result-wide v1

    .line 646
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getRateLimit()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_2

    if-eqz v6, :cond_0

    .line 647
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;->getRemaining()I

    move-result v6
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v6, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 656
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 627
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;->b()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter_friends_ids"

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0044

    return v0
.end method

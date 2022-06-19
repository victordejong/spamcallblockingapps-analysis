.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Z)Ljava/util/List;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1954
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 682
    iget v0, v0, Lcom/twitter/sdk/android/core/models/User;->friendsCount:I

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_0

    goto/16 :goto_2

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->f(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Ljava/util/Set;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 691
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    :cond_2
    :goto_0
    if-nez v2, :cond_5

    .line 695
    iget-object v7, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v8, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->a:Ljava/lang/String;

    invoke-static {v7, v8, v1, v4, v5}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 697
    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getIDs()[J

    move-result-object v4

    if-eqz v4, :cond_3

    .line 698
    array-length v5, v4

    if-lez v5, :cond_3

    .line 699
    invoke-static {v4}, Lcom/callapp/contacts/util/ArrayUtils;->a([J)[Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 702
    :cond_3
    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getNextCursor()J

    move-result-wide v4

    .line 703
    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/twitter/IDs;->getRateLimit()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    move-result-object v7

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-lez v10, :cond_4

    if-eqz v7, :cond_2

    .line 704
    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;->getRemaining()I

    move-result v7

    if-gtz v7, :cond_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 712
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 715
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 716
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 717
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_6

    .line 726
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 728
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-static {v1}, Lcom/callapp/contacts/util/ArrayUtils;->a([Ljava/lang/Long;)[J

    move-result-object v1

    .line 729
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v2, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;[J)Ljava/util/List;

    move-result-object v1

    .line 730
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 731
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/User;

    .line 732
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/twitter/sdk/android/core/models/User;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_9
    return-object v0

    :catch_0
    move-exception v0

    .line 737
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 676
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "twitter_mutualfriends_pd_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0046

    return v0
.end method

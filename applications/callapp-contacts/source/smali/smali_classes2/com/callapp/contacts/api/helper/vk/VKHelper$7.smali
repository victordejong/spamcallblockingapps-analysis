.class Lcom/callapp/contacts/api/helper/vk/VKHelper$7;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Ljava/lang/String;Z)Ljava/util/List;
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

.field final synthetic b:Lcom/callapp/contacts/api/helper/vk/VKHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;->b:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance v0, Lcom/vk/api/sdk/d/b;

    const-string v1, "friends.getMutual"

    const-string v2, "5.90"

    invoke-direct {v0, v1, v2}, Lcom/vk/api/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;->a:Ljava/lang/String;

    const-string v2, "target_uid"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    const-string v1, "count"

    const/16 v2, 0x1f4

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;I)Lcom/vk/api/sdk/d/b;

    const/4 v1, 0x0

    .line 620
    :try_start_0
    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v2, "response"

    .line 623
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    new-instance v2, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    invoke-direct {v2, v3}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;-><init>([I)V

    invoke-static {v2}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 628
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 630
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    .line 631
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    move-object v8, v3

    .line 632
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getPhoto()Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/model/PersonData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    .line 641
    :goto_3
    const-class v2, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vk_mutualfriends_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0053

    return v0
.end method

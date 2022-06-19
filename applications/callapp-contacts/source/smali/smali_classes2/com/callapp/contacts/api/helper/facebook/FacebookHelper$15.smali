.class public Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 9

    .line 2531
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    sget-object v1, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 2532
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    .line 2533
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2531
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->e(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 2534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2536
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "category,name,id,created_time"

    .line 2537
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit"

    const/16 v2, 0xa

    .line 2538
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2540
    new-instance v8, Lcom/facebook/GraphRequest;

    .line 2541
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/likes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v6, 0x0

    const-string v7, "v4.0"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 2962
    invoke-static {v8}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 3121
    iget-object v1, v1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 2550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "data"

    .line 2552
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 2554
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2555
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2557
    new-instance v5, Lcom/callapp/common/model/json/JSONFBCategorizedType;

    invoke-direct {v5}, Lcom/callapp/common/model/json/JSONFBCategorizedType;-><init>()V

    const-string v6, "category"

    .line 2559
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2560
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2561
    invoke-virtual {v5, v6}, Lcom/callapp/common/model/json/JSONFBCategorizedType;->setCategory(Ljava/lang/String;)V

    :cond_0
    const-string v6, "id"

    .line 2563
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2564
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2565
    invoke-virtual {v5, v6}, Lcom/callapp/common/model/json/JSONFBCategorizedType;->setId(Ljava/lang/String;)V

    :cond_1
    const-string v6, "name"

    .line 2567
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2568
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2569
    invoke-virtual {v5, v4}, Lcom/callapp/common/model/json/JSONFBCategorizedType;->setName(Ljava/lang/String;)V

    .line 2572
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2578
    :cond_4
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    :cond_5
    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb_userlikes_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$15;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0018

    return v0
.end method

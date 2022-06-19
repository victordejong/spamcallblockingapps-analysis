.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/common/model/json/JSONFBUserOrPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 2360
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2361
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    sget-object v3, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 2362
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    .line 2363
    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2361
    invoke-static {v1, v3, v4, v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->c(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 2367
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2368
    iget-object v3, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "id,birthday,email,first_name,last_name,link,location,locale,name,timezone,updated_time,verified"

    const-string v6, "fields"

    if-eqz v3, :cond_4

    const-string v3, "metadata{type}"

    .line 2369
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v15, "metadata"

    .line 2370
    invoke-virtual {v1, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2372
    new-instance v3, Lcom/facebook/GraphRequest;

    .line 2373
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    iget-object v10, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    sget-object v12, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v13, 0x0

    const-string v14, "v4.0"

    move-object v8, v3

    move-object v11, v1

    invoke-direct/range {v8 .. v14}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 2962
    invoke-static {v3}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v3

    .line 3121
    iget-object v3, v3, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 2383
    iget-object v14, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    .line 2384
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v8, "type"

    .line 2386
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 2388
    :goto_0
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2389
    iget-object v2, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    sget-object v8, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 2390
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v9

    .line 2391
    invoke-virtual {v9}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2389
    invoke-static {v2, v8, v5, v7}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 2393
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    const-string v2, "placeinformation"

    .line 2394
    invoke-static {v3, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "page"

    if-eqz v2, :cond_1

    .line 2395
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 2397
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    iget-object v10, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    sget-object v12, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v13, 0x0

    const-string v7, "v4.0"

    move-object v8, v2

    move-object v11, v1

    move-object v15, v14

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 3962
    invoke-static {v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v2

    .line 4159
    iget-object v2, v2, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 2404
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 2406
    iget-object v7, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v7, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2407
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPage()Lcom/callapp/common/model/json/JSONFBEntity;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPage()Lcom/callapp/common/model/json/JSONFBEntity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBEntity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2408
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPage()Lcom/callapp/common/model/json/JSONFBEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONFBEntity;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "facebookPlaceData"

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v15, v14

    :cond_2
    move-object v10, v15

    .line 2413
    :goto_1
    invoke-static {v3, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number"

    .line 2415
    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2417
    :cond_3
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    :goto_2
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 2420
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    sget-object v12, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v13, 0x0

    const-string v14, "v4.0"

    move-object v8, v2

    move-object v11, v1

    invoke-direct/range {v8 .. v14}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 4962
    invoke-static {v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 5159
    iget-object v1, v1, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 2427
    iget-object v2, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v2, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2429
    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->setFqlType(Ljava/lang/String;)V

    goto :goto_3

    .line 2434
    :cond_4
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 2436
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    iget-object v10, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    sget-object v12, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v13, 0x0

    const-string v14, "v4.0"

    move-object v8, v2

    move-object v11, v1

    invoke-direct/range {v8 .. v14}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 5962
    invoke-static {v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 6159
    iget-object v1, v1, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 2443
    iget-object v2, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v2, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "user"

    .line 2446
    invoke-virtual {v2, v1}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->setFqlType(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-object v2
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v0

    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fb_user_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

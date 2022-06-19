.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->q(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 12

    .line 1576
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->a:Ljava/lang/String;

    .line 1577
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1578
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fields"

    const-string v4, "height,is_silhouette,url"

    .line 1579
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "width"

    const-string v4, "600"

    .line 1580
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "redirect"

    const-string v4, "false"

    .line 1581
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    new-instance v10, Lcom/facebook/GraphRequest;

    .line 1583
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/picture"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v8, 0x0

    const-string v9, "v4.0"

    move-object v3, v10

    move-object v6, v1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 1962
    invoke-static {v10}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v3

    .line 2121
    iget-object v3, v3, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 1592
    iget-object v4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    const/4 v5, 0x0

    .line 2352
    invoke-virtual {v4, v0, v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1593
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFqlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "facebookPlaceData"

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->a:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1594
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1595
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1596
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v8, 0x0

    const-string v9, "v4.0"

    move-object v3, v0

    move-object v6, v1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 2962
    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v0

    .line 3121
    iget-object v3, v0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 1602
    invoke-virtual {v10}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "data"

    .line 1607
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "url"

    .line 1609
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "is_silhouette"

    .line 1610
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1614
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1616
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1622
    :goto_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1623
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 1627
    new-instance v3, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;

    iget-object v4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-direct {v3, v4, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;)V

    .line 1628
    iput-object v1, v3, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;->a:Ljava/lang/String;

    .line 1629
    iput-object v0, v3, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;->b:Ljava/lang/String;

    return-object v3

    :cond_3
    return-object v2
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb_big_image_url_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

.class public Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)Z
    .locals 3

    .line 140
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_1

    .line 149
    invoke-static {p1, p2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p1, p2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_1

    .line 164
    :cond_3
    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    :goto_1
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 169
    invoke-static {p2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 171
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return v2

    :cond_4
    return v1

    .line 180
    :cond_5
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return v1
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    .line 123
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->isInstagramAppInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.instagram.android"

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :try_start_0
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.instagram.com/_uid/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;
    .locals 1

    .line 238
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    return-object v0
.end method

.method public static isInstagramAppInstalled()Z
    .locals 1

    const-string v0, "com.instagram.android/.activity.MainTabActivity"

    .line 71
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->n(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->getUsername()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private l(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;
    .locals 6

    .line 304
    new-instance v1, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$1;-><init>(Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;Ljava/lang/String;)V

    const-class v2, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;

    sget-object v5, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;

    return-object p1
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 367
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://www.instagram.com/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;
    .locals 1

    .line 372
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->l(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;->getData()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/JSONMinimalInstagramData;->getData()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Data;->getUser()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->getReel()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/Reel;->getUser()Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 224
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 0

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 300
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ZZ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    .line 50
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 219
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateInstagramId()V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 243
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "anonymousUser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://igcdn-photos-e-a.akamaihd.net/hphotos"

    .line 244
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Z)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2337
    new-instance v3, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper$2;-><init>(Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;Ljava/lang/String;)V

    const-class v4, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;

    if-eqz p1, :cond_0

    .line 1390
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;->getGraphql()Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/JSONFullInstagramData;->getGraphql()Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/Graphql;->getUser()Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/fulljsondata/User;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->n(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/instagram/minimaljsondata/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 192
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->instagram:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getFriendsCount()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFriendsListAsPersonData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Instagram"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeAppInstalled()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->isInstagramAppInstalled()Z

    move-result v0

    return v0
.end method

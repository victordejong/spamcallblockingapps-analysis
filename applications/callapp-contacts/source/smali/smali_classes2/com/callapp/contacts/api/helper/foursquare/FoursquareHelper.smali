.class public Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    .line 96
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->isFoursquareOrSwarmAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 101
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;
    .locals 1

    .line 169
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFoursquareHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v0

    return-object v0
.end method

.method public static isFoursquareOnlyAppInstalled()Z
    .locals 2

    const-string v0, "com.joelapenna.foursquared"

    const-string v1, "com.joelapenna.foursquared.App"

    .line 83
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFoursquareOrSwarmAppInstalled()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->isFoursquareOnlyAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.foursquare.robin"

    const-string v1, "com.foursquare.robin.App"

    .line 79
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%sfoursquare.com/user%s%s"

    .line 87
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 74
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

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

    .line 209
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 33
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    .line 34
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 69
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFoursquareId()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 164
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "blank_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 153
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->foursquare:Lcom/callapp/contacts/model/contact/DataSource;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Foursquare"

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

    .line 44
    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->isFoursquareOrSwarmAppInstalled()Z

    move-result v0

    return v0
.end method

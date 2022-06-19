.class public Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 2

    .line 48
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->get()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->isNativeAppInstalled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pinterest://www.pinterest.com/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    invoke-static {p0, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    .line 1044
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://www.pinterest.com/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return v1

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;
    .locals 1

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPinterestHelper()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 184
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 0

    const/4 p1, 0x0

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

    const/4 p1, 0x0

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

    .line 133
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

    .line 70
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    .line 71
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 179
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePinterestId()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "default"

    .line 118
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

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

    .line 173
    new-instance p1, Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;-><init>()V

    throw p1
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

.method public getApiConstantNetworkId()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 168
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->pinterest:Lcom/callapp/contacts/model/contact/DataSource;

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

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Pinterest"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
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

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pinterest.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(?:http:\\/\\/)?(?:www.)?pinterest.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"

    .line 193
    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
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
    .locals 3

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.pinterest"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isReadyForRemoteCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

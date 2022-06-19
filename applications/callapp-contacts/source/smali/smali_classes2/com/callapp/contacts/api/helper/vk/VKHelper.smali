.class public Lcom/callapp/contacts/api/helper/vk/VKHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# instance fields
.field public c:Lcom/vk/api/sdk/a/b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/api/sdk/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 129
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/vk/api/sdk/a/f;

    sget-object v2, Lcom/vk/api/sdk/a/f;->FRIENDS:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->OFFLINE:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->PHOTOS:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->VIDEO:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->STATUS:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->WALL:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->MESSAGES:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->EMAIL:Lcom/vk/api/sdk/a/f;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/vk/api/sdk/a/f;->GROUPS:Lcom/vk/api/sdk/a/f;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper;->d:Ljava/util/List;

    .line 130
    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKHelper$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$1;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V

    .line 135
    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/p;)V

    .line 136
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$2;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper;->c:Lcom/vk/api/sdk/a/b;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->d()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 2

    .line 90
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isNativeAppInstalled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 93
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vkontakte://profile/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    invoke-static {p0, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return v1

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/vk/VKHelper;
    .locals 1

    .line 125
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorizationUrl()Ljava/lang/String;
    .locals 5

    .line 220
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper;->d:Ljava/util/List;

    const-string v3, ","

    .line 1523
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "https://oauth.vk.com/blank.html"

    aput-object v4, v1, v2

    .line 227
    invoke-static {}, Lcom/vk/api/sdk/b;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "https://oauth.vk.com/authorize?client_id=%s&scope=%s&redirect_uri=%s&display=mobile&v=%s&response_type=token&revoke=%d"

    .line 220
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 605
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://vk.com/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://vk.com/id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 441
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 245
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object p1

    .line 247
    :cond_0
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->d(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V

    :cond_1
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

    .line 504
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 506
    const-class p2, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
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

    .line 610
    new-instance v1, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper$7;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V

    const-class v2, Ljava/util/List;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->onlyFromCache:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    :goto_0
    move-object v5, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(ZZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getFriends()Ljava/util/List;

    move-result-object p2

    .line 287
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 289
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    .line 290
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 291
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 294
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v3, Lcom/callapp/contacts/model/Friend;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/callapp/contacts/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 300
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a()V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vk/api/sdk/b;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getAuthorizationUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/api/helper/vk/VKHelper$3;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$3;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 85
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    .line 86
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 435
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setVKId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 436
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vk.com/images/camera_"

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

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
    .locals 3

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vk.auth-token"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra-token-data"

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {p1}, Lcom/vk/api/sdk/e/h;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "error"

    .line 204
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cancel"

    .line 205
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    const/16 v1, 0x11a

    .line 211
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper;->c:Lcom/vk/api/sdk/a/b;

    invoke-static {v1, p1, v0, v2}, Lcom/vk/api/sdk/b;->a(IILandroid/content/Intent;Lcom/vk/api/sdk/a/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->d()V

    .line 213
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a()V

    return-void

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->c()V

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

    .line 376
    new-instance p2, Lcom/callapp/contacts/api/helper/vk/VKHelper$5;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper$5;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V

    const-class p1, Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final e()V
    .locals 3

    .line 160
    invoke-static {}, Lcom/vk/api/sdk/b;->a()V

    .line 161
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const-string v2, "vk_myFriends_sorted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    const-string v2, "vk_user_"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(I)V

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    .line 330
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getPhoto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getPhoto()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 370
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getFriends()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/vk/VKUser;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKHelper$8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$8;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;)V

    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFriendsCount()J
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFriendsListAsPersonData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/api/helper/vk/VKUser;

    .line 310
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/callapp/contacts/api/helper/vk/VKUser;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 315
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "VK"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    .line 365
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 447
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "vk.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(?:http:\\/\\/)?(?:www.)?vk.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"

    .line 451
    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 454
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final i()Z
    .locals 3

    .line 467
    new-instance v0, Lcom/vk/api/sdk/d/b;

    const-string v1, "groups.join"

    const-string v2, "5.90"

    invoke-direct {v0, v1, v2}, Lcom/vk/api/sdk/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "group_id"

    const-string v2, "125324054"

    .line 468
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/d/b;

    .line 470
    :try_start_0
    invoke-static {v0}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 237
    invoke-static {}, Lcom/vk/api/sdk/b;->b()Z

    move-result v0

    return v0
.end method

.method public isNativeAppInstalled()Z
    .locals 2

    .line 232
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "com.vkontakte.android"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/PackageUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;
    .locals 1

    .line 254
    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;-><init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V

    const-class p1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    return-object p1
.end method

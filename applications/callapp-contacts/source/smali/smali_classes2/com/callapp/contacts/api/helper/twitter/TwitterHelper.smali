.class public Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;,
        Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;
    }
.end annotation


# instance fields
.field public c:Lcom/twitter/sdk/android/core/identity/h;

.field private d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

.field private e:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 106
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->f:Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/twitter/sdk/android/core/p$a;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/p$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string v2, "AaMTvkoPxVnh9AQW8jrwAQ"

    const-string v3, "4Qme3Xi36ET97QywsZ4kzjL7CXzJLRUADFgqYqv6Sw"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iput-object v1, v0, Lcom/twitter/sdk/android/core/p$a;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 111
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lcom/twitter/sdk/android/core/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/c;-><init>(I)V

    .line 3072
    iput-object v1, v0, Lcom/twitter/sdk/android/core/p$a;->b:Lcom/twitter/sdk/android/core/f;

    .line 3107
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/twitter/sdk/android/core/p$a;->e:Ljava/lang/Boolean;

    .line 3116
    :cond_0
    new-instance v1, Lcom/twitter/sdk/android/core/p;

    iget-object v3, v0, Lcom/twitter/sdk/android/core/p$a;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/twitter/sdk/android/core/p$a;->b:Lcom/twitter/sdk/android/core/f;

    iget-object v5, v0, Lcom/twitter/sdk/android/core/p$a;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v6, v0, Lcom/twitter/sdk/android/core/p$a;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v7, v0, Lcom/twitter/sdk/android/core/p$a;->e:Ljava/lang/Boolean;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/twitter/sdk/android/core/p;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/f;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/p$1;)V

    .line 116
    invoke-static {v1}, Lcom/twitter/sdk/android/core/n;->a(Lcom/twitter/sdk/android/core/p;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;
    .locals 1

    .line 1266
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->getFriendsId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p1

    .line 1267
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18139
    iget-object p2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 18144
    iget-object p2, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1269
    check-cast p2, Lcom/callapp/contacts/api/helper/twitter/IDs;

    new-instance p3, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    .line 19134
    iget-object p4, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p4

    .line 1269
    invoke-direct {p3, p4}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;-><init>(Lokhttp3/Headers;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/api/helper/twitter/IDs;->setRateLimit(Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;)V

    .line 19144
    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1270
    check-cast p1, Lcom/callapp/contacts/api/helper/twitter/IDs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1273
    const-class p2, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/twitter/sdk/android/core/TwitterAuthToken;)Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->e:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 907
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "twitter_user_profile_image_url_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 7215
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 910
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 911
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 912
    sget-object v2, Lcom/callapp/contacts/model/UsageCounter;->twitterPicture:Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    .line 913
    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/4 v6, 0x1

    .line 912
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    .line 7954
    invoke-virtual {p0, p1, v3}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 916
    iget-boolean v1, p1, Lcom/twitter/sdk/android/core/models/User;->defaultProfileImage:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/twitter/sdk/android/core/models/User;->profileImageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->profileImageUrl:Ljava/lang/String;

    const-string v1, "_normal"

    const-string v2, "CALLAPP#@#CALLAPP"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_bigger"

    .line 919
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_mini"

    .line 920
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v1, p1

    .line 925
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p1

    const-class p2, Ljava/lang/String;

    const v2, 0x7f0b0047

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return-object v1
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;[J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/sdk/android/core/TwitterException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 26476
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 26480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26481
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 26482
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 26483
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26485
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 26487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 26477
    :cond_1
    new-instance p0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string p1, "Empty list"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$6;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Z)V

    const-class p1, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25378
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 25379
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d()V

    .line 25380
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/util/List;)V
    .locals 3

    .line 26869
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFollowingByTheUser()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 26870
    invoke-direct {p0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Z)Ljava/util/List;

    move-result-object v1

    .line 26874
    new-instance v2, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/TwitterException;Z)V
    .locals 5

    .line 285
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 288
    instance-of v1, p1, Lcom/twitter/sdk/android/core/TwitterApiException;

    if-eqz v1, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterApiException;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterApiException;->a()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "401 "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "429 "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 295
    instance-of v2, p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const/4 v3, 0x0

    if-nez v2, :cond_9

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "401:Authentication credentials"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "were missing or incorrect"

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "215 "

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz p2, :cond_6

    .line 314
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "34"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Sorry, that page does not exist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 315
    :cond_2
    new-instance p2, Lcom/callapp/contacts/loader/social/UserNotFoundException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/UserNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 316
    move-object p2, p1

    check-cast p2, Lcom/twitter/sdk/android/core/TwitterApiException;

    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/TwitterApiException;->a()I

    move-result v2

    const/16 v4, 0x32

    if-ne v2, v4, :cond_6

    .line 317
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4074
    iget-object v0, p2, Lcom/twitter/sdk/android/core/TwitterApiException;->a:Lcom/twitter/sdk/android/core/models/ApiError;

    if-nez v0, :cond_4

    move-object p2, v3

    goto :goto_1

    :cond_4
    iget-object p2, p2, Lcom/twitter/sdk/android/core/TwitterApiException;->a:Lcom/twitter/sdk/android/core/models/ApiError;

    iget-object p2, p2, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    :goto_1
    const-string v0, "User not found"

    .line 317
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    .line 318
    :cond_5
    new-instance p2, Lcom/callapp/contacts/loader/social/UserNotFoundException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/UserNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    .line 323
    check-cast p1, Lcom/twitter/sdk/android/core/TwitterApiException;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->a()I

    move-result p1

    const/16 p2, 0x59

    if-eq p1, p2, :cond_7

    const/16 p2, 0xef

    if-ne p1, p2, :cond_8

    .line 327
    :cond_7
    iput-object v3, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    :cond_8
    return-void

    .line 311
    :cond_9
    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {p2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 312
    new-instance p2, Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 294
    :cond_a
    new-instance p2, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/QuotaReachedException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 26238
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterAccount()Ljava/lang/String;

    move-result-object v0

    .line 26239
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26240
    invoke-static {}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->get()Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;->getGmailAccount()Ljava/lang/String;

    move-result-object v0

    .line 26243
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&screen_name="

    .line 26244
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 3

    .line 137
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isTwitterAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;J)Lcom/callapp/contacts/api/helper/twitter/IDs;
    .locals 1

    .line 1281
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->getFollowersId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p1

    .line 1282
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20139
    iget-object p2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20144
    iget-object p2, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1284
    check-cast p2, Lcom/callapp/contacts/api/helper/twitter/IDs;

    new-instance p3, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;

    .line 21134
    iget-object p4, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p4

    .line 1284
    invoke-direct {p3, p4}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;-><init>(Lokhttp3/Headers;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/api/helper/twitter/IDs;->setRateLimit(Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit;)V

    .line 21144
    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1285
    check-cast p1, Lcom/callapp/contacts/api/helper/twitter/IDs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1288
    const-class p2, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/identity/h;
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c:Lcom/twitter/sdk/android/core/identity/h;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/User;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->q(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/User;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->e:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/common/LoginListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/callapp/contacts/api/helper/common/LoginListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Ljava/util/Set;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFriendIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Lcom/twitter/sdk/android/core/models/User;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getMyUser()Lcom/twitter/sdk/android/core/models/User;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
    .locals 1

    .line 1026
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    return-object v0
.end method

.method private getFollowingByTheUser()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$4;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V

    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getFriendIDs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$7;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V

    const-class v1, Ljava/util/HashSet;

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private getFriendsMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 1001
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/util/HashMap;

    const-string v2, "twitter_friends_map"

    const/4 v3, 0x0

    .line 8215
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1001
    check-cast v0, Ljava/util/HashMap;

    .line 1002
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 1005
    invoke-virtual {p0, v1, v3}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;

    move-result-object v1

    .line 1006
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1007
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1008
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/models/User;

    .line 1009
    iget-object v4, v3, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1012
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1013
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v3, Ljava/util/HashMap;

    const v4, 0x7f0b0044

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_2
    return-object v0
.end method

.method private getMyUser()Lcom/twitter/sdk/android/core/models/User;
    .locals 3

    .line 1296
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v1, v2}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    .line 1297
    invoke-interface {v0}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22139
    iget-object v1, v0, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22144
    iget-object v0, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1299
    check-cast v0, Lcom/twitter/sdk/android/core/models/User;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1302
    const-class v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTwitterAccount()Ljava/lang/String;
    .locals 6

    .line 3597
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 3598
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 3600
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3601
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "twitter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3602
    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;
    .locals 7

    .line 1199
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    if-nez v1, :cond_3

    .line 1201
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1203
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 12127
    iget-object v1, v1, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 1203
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 13042
    iget-object v1, v1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    .line 1204
    check-cast v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->isNotNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 13127
    iget-object v1, v1, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 1205
    new-instance v3, Lcom/twitter/sdk/android/core/t;

    new-instance v4, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/twitter/sdk/android/core/t;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/twitter/sdk/android/core/m;->a(Lcom/twitter/sdk/android/core/l;)V

    .line 1208
    :cond_1
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 14127
    iget-object v1, v1, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 1208
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/t;

    if-eqz v1, :cond_2

    .line 1210
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v2

    .line 15127
    iget-object v2, v2, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 1210
    invoke-interface {v2}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/t;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/twitter/sdk/android/core/t;)V

    iput-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    goto :goto_0

    .line 1213
    :cond_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 1218
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTwitterScreenName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1118
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 9127
    iget-object v1, v1, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 1118
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/t;

    if-nez v1, :cond_0

    return-object v0

    .line 10053
    :cond_0
    iget-object v0, v1, Lcom/twitter/sdk/android/core/t;->c:Ljava/lang/String;
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 10281
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/twitter/sdk/android/core/TwitterException;Z)V

    return-object v0
.end method

.method static synthetic h(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a:Z

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Ljava/util/Map;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFriendsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static isTwitterAppInstalled()Z
    .locals 2

    .line 132
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "com.twitter.android"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/PackageUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 159
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://twitter.com/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->t(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object p0

    return-object p0
.end method

.method private p(Ljava/lang/String;)Z
    .locals 2

    .line 761
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isReadyForRemoteCalls()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->follow(Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p1

    .line 767
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6139
    iget-object p1, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 770
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method private q(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/User;
    .locals 1

    .line 1224
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->show(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1225
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15139
    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15144
    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1227
    check-cast p1, Lcom/twitter/sdk/android/core/models/User;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1230
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private r(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 1238
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->lookup(Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p1

    .line 1239
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16139
    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16144
    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1241
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1244
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 1252
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v1

    const-wide/16 v3, 0x14

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->searchUser(Ljava/lang/String;JJZ)Lretrofit2/Call;

    move-result-object p1

    .line 1253
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17139
    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17144
    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1255
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1258
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static t(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 40

    .line 1310
    :try_start_0
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 22152
    iget-object v1, v0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/t;

    if-nez v1, :cond_1

    .line 22210
    iget-object v1, v0, Lcom/twitter/sdk/android/core/r;->f:Lcom/twitter/sdk/android/core/o;

    if-nez v1, :cond_0

    .line 22211
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->d()V

    .line 22214
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->f:Lcom/twitter/sdk/android/core/o;

    goto :goto_0

    .line 22157
    :cond_1
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/r;->a(Lcom/twitter/sdk/android/core/t;)Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    .line 1310
    :goto_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, p0

    invoke-interface/range {v1 .. v10}, Lcom/twitter/sdk/android/core/services/StatusesService;->userTimeline(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    .line 1311
    invoke-interface {v0}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23139
    iget-object v1, v0, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23144
    iget-object v1, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1313
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24144
    iget-object v0, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    .line 1314
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Tweet;

    return-object v0

    .line 1316
    :cond_2
    new-instance v0, Lcom/twitter/sdk/android/core/models/Tweet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v39}, Lcom/twitter/sdk/android/core/models/Tweet;-><init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/Tweet;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1320
    const-class v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private u(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1328
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;->postStatus(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1329
    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25139
    iget-object p1, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 1332
    const-class v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 337
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object p1

    .line 339
    :cond_0
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 1148
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1150
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    instance-of p1, v0, Lcom/twitter/sdk/android/core/TwitterException;

    if-eqz p1, :cond_1

    .line 1153
    check-cast v0, Lcom/twitter/sdk/android/core/TwitterException;

    .line 1154
    invoke-direct {p0, v0, p2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/twitter/sdk/android/core/TwitterException;Z)V

    goto :goto_0

    .line 1157
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
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

    .line 676
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$8;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V

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

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(ZZ)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, p2, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;

    move-result-object p2

    .line 386
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 388
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/User;

    .line 389
    iget-object v2, v1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 390
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 393
    :cond_0
    iget-object v3, v1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    new-instance v4, Lcom/callapp/contacts/model/Friend;

    iget-object v5, v1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/User;->description:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v1}, Lcom/callapp/contacts/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 398
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a()V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/h;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c:Lcom/twitter/sdk/android/core/identity/h;

    .line 212
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$1;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V

    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/h;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V

    return-void

    .line 3250
    :cond_1
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$2;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Landroid/app/Activity;)V

    .line 231
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object p1

    .line 232
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;

    new-instance v2, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/g;)V

    iput-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->g:Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;

    .line 233
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;->a(Lcom/twitter/sdk/android/core/b;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 122
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    .line 123
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 185
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 186
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 934
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default_profile"

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

.method public final b(ZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "twitter_friends_sorted_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 500
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    .line 504
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v4, Ljava/util/List;

    .line 5215
    invoke-virtual {v2, v4, v0, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 504
    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    .line 505
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getFollowingByTheUser()Ljava/util/List;

    move-result-object v4

    .line 511
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 512
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 516
    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Z)Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 518
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 523
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 524
    new-instance p2, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$5;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$5;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 531
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p2

    const-class v2, Ljava/util/List;

    const v4, 0x7f0b0044

    invoke-virtual {p2, v2, v0, p1, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 532
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    const-string v6, "Syncers"

    const-string v7, "Twitter friends count"

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    int-to-double v9, p2

    new-array v11, v3, [Ljava/lang/String;

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    move-object v2, p1

    .line 534
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->g:Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$3;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->e:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/api/helper/twitter/CallAppOAuth1aService;->a(Lcom/twitter/sdk/android/core/b;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 4281
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/twitter/sdk/android/core/TwitterException;Z)V

    .line 373
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b()V

    return-void
.end method

.method public final c(Ljava/lang/String;Z)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    .line 6824
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V

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

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 813
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 814
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 815
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/User;

    .line 816
    new-instance v1, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/twitter/sdk/android/core/models/User;)V

    .line 817
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    return-object p2
.end method

.method public final d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;
    .locals 2

    .line 958
    new-instance v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;-><init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V

    const-class p1, Lcom/twitter/sdk/android/core/models/User;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    return-object p1
.end method

.method public final e()V
    .locals 6

    .line 169
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isReadyForRemoteCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/core/models/User;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "twitter_user_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(I)V

    .line 175
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "twitter_friends_sorted_%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/util/List;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 3127
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 178
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->b()V

    .line 179
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c:Lcom/twitter/sdk/android/core/identity/h;

    .line 180
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1089
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1090
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1095
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isReadyForRemoteCalls()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 1022
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getFriendsCount()J
    .locals 2

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
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

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p0, v0, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(ZZ)Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/User;

    .line 407
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/twitter/sdk/android/core/models/User;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 412
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggedInUser()Lcom/twitter/sdk/android/core/models/User;
    .locals 3

    .line 1127
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isReadyForRemoteCalls()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1131
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterScreenName()Ljava/lang/String;

    move-result-object v2

    .line 10954
    invoke-virtual {p0, v2, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 11281
    invoke-direct {p0, v2, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/twitter/sdk/android/core/TwitterException;Z)V

    :catch_1
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Twitter"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1105
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;
        }
    .end annotation

    .line 1100
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1069
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "twitter.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(?:http:\\/\\/)?(?:www.)?twitter.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"

    .line 1073
    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const-string v0, "getcallapp"

    .line 757
    invoke-direct {p0, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->p(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 164
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aG:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method public isNativeAppInstalled()Z
    .locals 1

    .line 128
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isTwitterAppInstalled()Z

    move-result v0

    return v0
.end method

.method public isReadyForRemoteCalls()Z
    .locals 2

    const/4 v0, 0x0

    .line 1167
    :try_start_0
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getTwitterKitClient()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;

    move-result-object v1
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 938
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_bigger"

    .line 946
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 947
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 4

    .line 1035
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isReadyForRemoteCalls()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1054
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->u(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8281
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/twitter/sdk/android/core/TwitterException;Z)V

    :goto_0
    if-nez v1, :cond_1

    .line 1060
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed"

    const-string v3, "Failed to post"

    invoke-virtual {p1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v1
.end method

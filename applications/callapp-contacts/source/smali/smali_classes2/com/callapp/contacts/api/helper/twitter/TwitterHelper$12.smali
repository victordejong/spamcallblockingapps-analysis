.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Lcom/twitter/sdk/android/core/models/User;
    .locals 6

    .line 963
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->i(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Ljava/util/Map;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/twitter/sdk/android/core/models/User;

    :cond_0
    if-nez v1, :cond_1

    .line 968
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    sget-object v2, Lcom/callapp/contacts/model/UsageCounter;->twitterUser:Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 970
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 969
    invoke-static {v0, v2, v3, v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v0
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 979
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 958
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->b()Lcom/twitter/sdk/android/core/models/User;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "twitter_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b004f

    return v0
.end method

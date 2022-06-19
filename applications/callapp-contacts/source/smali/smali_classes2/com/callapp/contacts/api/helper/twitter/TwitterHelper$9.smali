.class public Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    sget-object v1, Lcom/callapp/contacts/model/UsageCounter;->twitterTweets:Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 782
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 781
    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->o(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 790
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 777
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "twitter_user_last_tweet_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0045

    return v0
.end method

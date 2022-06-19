.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 6

    .line 829
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    sget-object v2, Lcom/callapp/contacts/model/UsageCounter;->twitterSearchRequests:Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 832
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 831
    invoke-static {v0, v2, v3, v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->b(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 834
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 836
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->h(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 837
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 840
    :cond_0
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-static {v0, v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/util/List;)V

    :cond_1
    if-nez v1, :cond_2

    .line 847
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/twitter/sdk/android/core/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 850
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$TwitterApiRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 824
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "twitter_search_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b004a

    return v0
.end method

.class Lcom/callapp/contacts/api/helper/vk/VKHelper$4;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/vk/VKHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKHelper;Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->b:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method

.method private b()Lcom/callapp/contacts/api/helper/vk/VKUser;
    .locals 4

    const/4 v0, 0x0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;-><init>()V

    invoke-static {v1}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 262
    :cond_0
    new-instance v1, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;-><init>([I)V

    invoke-static {v1}, Lcom/vk/api/sdk/b;->a(Lcom/vk/api/sdk/internal/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/vk/api/sdk/exceptions/VKApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 265
    :goto_0
    const-class v2, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 267
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/vk/VKUser;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->b()Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vk_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKHelper$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0054

    return v0
.end method

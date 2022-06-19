.class public final Lcom/vk/api/sdk/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010%\u001a\u00020\u0006H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0008R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0013\u0010#\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0008\u00a8\u0006&"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;",
        "",
        "apiConfig",
        "Lcom/vk/api/sdk/VKApiConfig;",
        "(Lcom/vk/api/sdk/VKApiConfig;)V",
        "accessToken",
        "",
        "getAccessToken",
        "()Ljava/lang/String;",
        "appId",
        "",
        "getAppId",
        "()I",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "customEndpoint",
        "getCustomEndpoint",
        "hostProvider",
        "Lkotlin/Function0;",
        "getHostProvider",
        "()Lkotlin/jvm/functions/Function0;",
        "logFilterCredentials",
        "",
        "getLogFilterCredentials",
        "()Z",
        "logger",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "getLogger",
        "()Lcom/vk/api/sdk/utils/log/Logger;",
        "okHttpProvider",
        "Lcom/vk/api/sdk/VKOkHttpProvider;",
        "getOkHttpProvider",
        "()Lcom/vk/api/sdk/VKOkHttpProvider;",
        "secret",
        "getSecret",
        "toString",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public final a:Lcom/vk/api/sdk/e;


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/e;)V
    .locals 1

    const-string v0, "apiConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 54
    sget-object v0, Lcom/vk/api/sdk/internal/d;->a:Lcom/vk/api/sdk/internal/d;

    .line 4039
    iget-object p1, p1, Lcom/vk/api/sdk/e;->a:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Lcom/vk/api/sdk/internal/d;->a(Landroid/content/Context;)V

    .line 55
    sget-object p1, Lcom/vk/api/sdk/internal/d;->a:Lcom/vk/api/sdk/internal/d;

    invoke-virtual {p0}, Lcom/vk/api/sdk/c/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/api/sdk/internal/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 1047
    iget-object v0, v0, Lcom/vk/api/sdk/e;->h:Lkotlin/Lazy;

    .line 41
    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 1048
    iget-object v0, v0, Lcom/vk/api/sdk/e;->i:Lkotlin/Lazy;

    .line 43
    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OkHttpExecutorConfig(host=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2039
    iget-object v1, p0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 2053
    iget-object v1, v1, Lcom/vk/api/sdk/e;->k:Lkotlin/jvm/functions/Function0;

    .line 59
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/vk/api/sdk/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', secret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/vk/api/sdk/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', logFilterCredentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    iget-object v1, p0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 3050
    iget-boolean v1, v1, Lcom/vk/api/sdk/e;->j:Z

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

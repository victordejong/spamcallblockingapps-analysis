.class public final Lcom/vk/api/sdk/c/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1",
        "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;",
        "update",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
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
.field final synthetic a:Lcom/vk/api/sdk/c/c;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/vk/api/sdk/c/c$d;->a:Lcom/vk/api/sdk/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->NONE:Lcom/vk/api/sdk/e/a/c$a;

    iget-object v1, p0, Lcom/vk/api/sdk/c/c$d;->a:Lcom/vk/api/sdk/c/c;

    .line 1046
    iget-object v1, v1, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 1049
    iget-object v1, v1, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 2046
    iget-object v1, v1, Lcom/vk/api/sdk/e;->g:Lcom/vk/api/sdk/e/a/c;

    .line 206
    invoke-interface {v1}, Lcom/vk/api/sdk/e/a/c;->a()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/api/sdk/e/a/c$a;

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vk/api/sdk/c/c$d;->a:Lcom/vk/api/sdk/c/c;

    .line 3046
    iget-object v0, v0, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 3047
    iget-object v0, v0, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 3050
    iget-boolean v0, v0, Lcom/vk/api/sdk/e;->j:Z

    .line 207
    iget-object v1, p0, Lcom/vk/api/sdk/c/c$d;->a:Lcom/vk/api/sdk/c/c;

    .line 4046
    iget-object v1, v1, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 4049
    iget-object v1, v1, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 5046
    iget-object v1, v1, Lcom/vk/api/sdk/e;->g:Lcom/vk/api/sdk/e/a/c;

    .line 207
    invoke-static {v0, v1}, Lcom/vk/api/sdk/c/c;->a(ZLcom/vk/api/sdk/e/a/c;)Lcom/vk/api/sdk/c/b;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-object p1
.end method

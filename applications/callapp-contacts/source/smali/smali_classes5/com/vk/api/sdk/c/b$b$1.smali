.class public final Lcom/vk/api/sdk/c/b$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/c/b$b;
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vk/api/sdk/okhttp/LoggingInterceptor$delegate$2$1",
        "Lokhttp3/logging/HttpLoggingInterceptor$Logger;",
        "filterCredentials",
        "",
        "msg",
        "log",
        "",
        "message",
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
.field final synthetic a:Lcom/vk/api/sdk/c/b$b;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/vk/api/sdk/c/b$b$1;->a:Lcom/vk/api/sdk/c/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/vk/api/sdk/c/b$b$1;->a:Lcom/vk/api/sdk/c/b$b;

    iget-object v0, v0, Lcom/vk/api/sdk/c/b$b;->a:Lcom/vk/api/sdk/c/b;

    invoke-static {v0}, Lcom/vk/api/sdk/c/b;->b(Lcom/vk/api/sdk/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/vk/api/sdk/c/b$b$1;->a:Lcom/vk/api/sdk/c/b$b;

    iget-object v0, v0, Lcom/vk/api/sdk/c/b$b;->a:Lcom/vk/api/sdk/c/b;

    invoke-static {v0, p1}, Lcom/vk/api/sdk/c/b;->a(Lcom/vk/api/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/c/b$b$1;->a:Lcom/vk/api/sdk/c/b$b;

    iget-object v0, v0, Lcom/vk/api/sdk/c/b$b;->a:Lcom/vk/api/sdk/c/b;

    invoke-static {v0}, Lcom/vk/api/sdk/c/b;->c(Lcom/vk/api/sdk/c/b;)Lcom/vk/api/sdk/e/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/api/sdk/c/b$b$1;->a:Lcom/vk/api/sdk/c/b$b;

    iget-object v1, v1, Lcom/vk/api/sdk/c/b$b;->a:Lcom/vk/api/sdk/c/b;

    invoke-static {v1}, Lcom/vk/api/sdk/c/b;->c(Lcom/vk/api/sdk/c/b;)Lcom/vk/api/sdk/e/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/vk/api/sdk/e/a/c;->a()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/api/sdk/e/a/c$a;

    const/4 v2, 0x0

    .line 2038
    invoke-interface {v0, v1, p1, v2}, Lcom/vk/api/sdk/e/a/c;->a(Lcom/vk/api/sdk/e/a/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

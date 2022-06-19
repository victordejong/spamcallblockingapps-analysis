.class public abstract Lcom/bytedance/sdk/openadsdk/preload/b/k;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    :goto_0
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    move-object p3, p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    goto :goto_0

    .line 33
    :cond_0
    throw p3
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Throwable;)Z
.end method

.method public final a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TOUT;>;TIN;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/k;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected final g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIN;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/k;->d:Ljava/lang/Object;

    return-object v0
.end method

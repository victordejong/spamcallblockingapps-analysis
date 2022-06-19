.class public Lcom/bytedance/sdk/openadsdk/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/i/b/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/i/b/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/b/b;->a()Lcom/bytedance/sdk/openadsdk/i/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Lcom/bytedance/sdk/openadsdk/i/b/b;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/b/b;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Lcom/bytedance/sdk/openadsdk/i/b/b;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/i/b/c;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Ljava/util/List;

    return-object p0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/i/b/a;
    .locals 1

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/b/e;->c()Lcom/bytedance/sdk/openadsdk/i/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/i/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/i/b/c;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/b/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/i/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/i/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p2, :cond_1

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/d/j;)V

    return-void

    .line 77
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a(Lcom/bytedance/sdk/openadsdk/d/j;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

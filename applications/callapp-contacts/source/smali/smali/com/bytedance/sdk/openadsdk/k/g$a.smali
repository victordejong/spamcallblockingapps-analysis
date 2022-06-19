.class final Lcom/bytedance/sdk/openadsdk/k/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/k/a/a;

.field b:Lcom/bytedance/sdk/openadsdk/k/b/c;

.field c:Ljava/util/concurrent/ExecutorService;

.field d:Ljava/net/Socket;

.field e:Lcom/bytedance/sdk/openadsdk/k/g$c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/bytedance/sdk/openadsdk/k/b/c;)Lcom/bytedance/sdk/openadsdk/k/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 616
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    return-object p0

    .line 614
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "db == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/k/g$c;)Lcom/bytedance/sdk/openadsdk/k/g$a;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->e:Lcom/bytedance/sdk/openadsdk/k/g$c;

    return-object p0
.end method

.method final a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/k/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 632
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->d:Ljava/net/Socket;

    return-object p0

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/openadsdk/k/g$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 624
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0

    .line 622
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a()Lcom/bytedance/sdk/openadsdk/k/g;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->b:Lcom/bytedance/sdk/openadsdk/k/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$a;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/g;-><init>(Lcom/bytedance/sdk/openadsdk/k/g$a;)V

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

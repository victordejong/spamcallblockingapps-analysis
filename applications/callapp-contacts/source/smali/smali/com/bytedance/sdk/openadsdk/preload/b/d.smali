.class public abstract Lcom/bytedance/sdk/openadsdk/preload/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static d:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/preload/b/d;

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

.field private f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a:Lcom/bytedance/sdk/openadsdk/preload/b/d;

    if-eqz v0, :cond_0

    .line 30
    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->g:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->g:J

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Pipeline ID use up!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/b/b/a;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            "TIN;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b/a;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/m;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a:Lcom/bytedance/sdk/openadsdk/preload/b/d;

    .line 22
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->b:Ljava/lang/Object;

    .line 23
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a()V

    .line 25
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method final b(Ljava/lang/Throwable;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->c(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->g:J

    return-wide v0
.end method

.method final c(Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->e(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method final d()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->d(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    return-void
.end method

.method protected final d(Ljava/lang/Throwable;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->d(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method final e()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->f(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    return-void
.end method

.method final f()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->e:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/d;->f:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/b/b/a;->e(Lcom/bytedance/sdk/openadsdk/preload/b/b;Lcom/bytedance/sdk/openadsdk/preload/b/d;)V

    return-void
.end method

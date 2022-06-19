.class public Lcom/bytedance/sdk/openadsdk/l/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/util/concurrent/TimeUnit;

.field private e:I

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ThreadFactory;

.field private h:Ljava/util/concurrent/RejectedExecutionHandler;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "io"

    .line 186
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 187
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->b:I

    const-wide/16 v1, 0x1e

    .line 188
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->c:J

    .line 189
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->d:Ljava/util/concurrent/TimeUnit;

    .line 190
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->e:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    .line 192
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 v0, 0x5

    .line 195
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 204
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->b:I

    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 209
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->c:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/l/a$a;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->d:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/l/a;
    .locals 11

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/h;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->i:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/l/h;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_1

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_2

    .line 252
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    .line 254
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/l/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->b:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->e:I

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->c:J

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/l/a;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/l/a$a;
    .locals 0

    .line 219
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/a$a;->e:I

    return-object p0
.end method

.class public Lcom/bytedance/sdk/adnet/b/e;
.super Lcom/bytedance/sdk/adnet/core/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/Object;

.field private final d:Lcom/bytedance/sdk/adnet/b/d$d;

.field private e:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/b/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 57
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    .line 92
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 97
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 98
    new-instance p1, Lcom/bytedance/sdk/adnet/d/a;

    invoke-direct {p1, p3, p4, p5, p6}, Lcom/bytedance/sdk/adnet/d/a;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/b/d$d;

    .line 99
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/e;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    return-void
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    .line 145
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/b/e;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/bytedance/sdk/adnet/err/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Ljava/lang/Object;Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a([B)Landroid/graphics/Bitmap;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->d:Lcom/bytedance/sdk/adnet/b/d$d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/b/d$d;->a([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/bytedance/sdk/adnet/b/e;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/e;->b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 134
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/i;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/e;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance p1, Lcom/bytedance/sdk/adnet/err/e;

    const/16 v2, 0x264

    invoke-direct {p1, v1, v2}, Lcom/bytedance/sdk/adnet/err/e;-><init>(Ljava/lang/Throwable;I)V

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 137
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 170
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/e;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 161
    :try_start_0
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/e;->e:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 162
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .locals 1

    .line 124
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method

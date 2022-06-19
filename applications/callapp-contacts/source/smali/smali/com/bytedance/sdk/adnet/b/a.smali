.class public Lcom/bytedance/sdk/adnet/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$b;


# instance fields
.field protected a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 22
    new-instance v1, Lcom/bytedance/sdk/adnet/b/a$1;

    div-int/lit8 v0, v0, 0x10

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/adnet/b/a$1;-><init>(Lcom/bytedance/sdk/adnet/b/a;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "DefaultImageCache put bitmap error"

    .line 61
    invoke-static {p1, p3, p2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    goto :goto_0

    :cond_0
    new-array p1, v0, [B

    :goto_0
    if-nez p1, :cond_1

    new-array p1, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DefaultImageCache get bitmap error"

    .line 39
    invoke-static {p1, v2, v1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v0, [B

    return-object p1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DefaultImageCache get bitmap error"

    .line 50
    invoke-static {p1, v2, v1}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

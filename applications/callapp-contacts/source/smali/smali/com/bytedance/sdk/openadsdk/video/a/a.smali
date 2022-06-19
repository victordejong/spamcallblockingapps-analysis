.class public Lcom/bytedance/sdk/openadsdk/video/a/a;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

.field private b:J

.field private c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/video/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    const-wide/32 v0, -0x80000000

    .line 30
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->b:J

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->c:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->d:Lcom/bytedance/sdk/openadsdk/video/b/a;

    return-void
.end method

.method private a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/a/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->d:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/video/a/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "close: "

    aput-object v2, v0, v1

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->d:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SdkMediaDataSource"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/a;->a()V

    .line 74
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->d:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/video/a/a;->a()V

    .line 58
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->d:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->b:J

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkMediaDataSource"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 65
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->b:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/video/a/a;->a()V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/a;->a:Lcom/bytedance/sdk/openadsdk/video/a/a/a;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/video/a/a/a;->a(J[BII)I

    move-result p5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readAt: position = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  buffer.length ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  offset = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdkMediaDataSource"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p5
.end method

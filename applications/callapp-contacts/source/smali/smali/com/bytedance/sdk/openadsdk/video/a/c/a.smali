.class public Lcom/bytedance/sdk/openadsdk/video/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/bytedance/sdk/openadsdk/video/b/a;

.field private volatile d:Z

.field private e:Ljava/io/File;

.field private f:Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->d:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->f:Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a:Landroid/content/Context;

    .line 45
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b:I

    .line 46
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c:Lcom/bytedance/sdk/openadsdk/video/b/a;

    .line 47
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/b/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c:Lcom/bytedance/sdk/openadsdk/video/b/a;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->f:Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e:Ljava/io/File;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/video/a/c/a;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->d:Z

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Cache file is exist"

    aput-object v2, v0, v1

    const-string v1, "VideoPreload"

    .line 65
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->f:Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->c:Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$a;->a(ILcom/bytedance/sdk/openadsdk/video/b/a;)V

    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;

    const-string v1, "executePreLoadIfNotExist"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/video/a/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/video/a/c/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;)V

    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/j/e;

.field private static c:Lcom/bytedance/sdk/adnet/face/IHttpStack;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/adnet/core/l;

.field private e:Lcom/bytedance/sdk/adnet/b/b;

.field private f:Lcom/bytedance/sdk/adnet/core/l;

.field private g:Lcom/bytedance/sdk/adnet/core/l;

.field private h:Lcom/bytedance/sdk/adnet/b/d;

.field private i:Lcom/bytedance/sdk/openadsdk/j/a/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .locals 1

    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/j/e$a;
    .locals 1

    .line 136
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/e$a;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/j/e$a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/bytedance/sdk/openadsdk/j/e;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-void
.end method

.method public static b()Lcom/bytedance/sdk/adnet/core/e;
    .locals 1

    .line 58
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/j/e;
    .locals 2

    .line 62
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->a:Lcom/bytedance/sdk/openadsdk/j/e;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/bytedance/sdk/openadsdk/j/e;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->a:Lcom/bytedance/sdk/openadsdk/j/e;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/j/e;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->a:Lcom/bytedance/sdk/openadsdk/j/e;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->a:Lcom/bytedance/sdk/openadsdk/j/e;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->i:Lcom/bytedance/sdk/openadsdk/j/a/b;

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->l()V

    .line 220
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/e;->g:Lcom/bytedance/sdk/adnet/core/l;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/j/a/b;-><init>(Lcom/bytedance/sdk/adnet/core/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->i:Lcom/bytedance/sdk/openadsdk/j/a/b;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    if-nez v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->l()V

    .line 227
    new-instance v0, Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/e;->g:Lcom/bytedance/sdk/adnet/core/l;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a;->a()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;-><init>(Lcom/bytedance/sdk/adnet/core/l;Lcom/bytedance/sdk/adnet/b/d$b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Lcom/bytedance/sdk/adnet/core/l;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->g:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->g:Lcom/bytedance/sdk/adnet/core/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-static {p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/j/e$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$e;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->j()V

    .line 118
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->k()V

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/bytedance/sdk/adnet/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Lcom/bytedance/sdk/adnet/core/l;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/adnet/core/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    return-void
.end method

.method public d()Lcom/bytedance/sdk/adnet/core/l;
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->k()V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/adnet/core/l;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->l()V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->g:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/adnet/core/l;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->f:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;I)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->f:Lcom/bytedance/sdk/adnet/core/l;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->f:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/openadsdk/j/a/b;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->i()V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->i:Lcom/bytedance/sdk/openadsdk/j/a/b;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/adnet/b/d;
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/e;->j()V

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    return-object v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

.field private h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

.field private i:Z

.field private j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/io/File;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Landroid/content/Context;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/List;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/Long;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/io/File;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o:Ljava/io/File;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->f:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    return-object p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->k:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->j:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->h:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/a;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->o:Ljava/io/File;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->i:Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    array-length v0, p1

    if-lez v0, :cond_0

    .line 239
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->c:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/preload/geckox/b;
    .locals 2

    .line 378
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/concurrent/Executor;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->f:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 250
    array-length v0, p1

    if-lez v0, :cond_0

    .line 251
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->b:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;->n:Ljava/lang/String;

    return-object p0
.end method

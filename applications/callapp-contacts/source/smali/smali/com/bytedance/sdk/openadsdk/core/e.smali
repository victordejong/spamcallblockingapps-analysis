.class public Lcom/bytedance/sdk/openadsdk/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e$b;,
        Lcom/bytedance/sdk/openadsdk/core/e$a;,
        Lcom/bytedance/sdk/openadsdk/core/e$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e$c;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Landroid/content/Context;

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e$c;

    if-nez p1, :cond_1

    .line 38
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/e$c;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/e$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/e;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/e;)Landroid/content/Context;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/e;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/e;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/e$c;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e;->a:Lcom/bytedance/sdk/openadsdk/core/e$c;

    return-object v0
.end method

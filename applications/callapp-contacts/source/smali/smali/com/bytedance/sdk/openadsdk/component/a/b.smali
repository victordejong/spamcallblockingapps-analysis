.class public Lcom/bytedance/sdk/openadsdk/component/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/a/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/component/a/b;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/core/o;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->b:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/a/b;
    .locals 2

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Lcom/bytedance/sdk/openadsdk/component/a/b;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/a/b;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Lcom/bytedance/sdk/openadsdk/component/a/b;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/a/b;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Lcom/bytedance/sdk/openadsdk/component/a/b;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Lcom/bytedance/sdk/openadsdk/component/a/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/a/b;->b(Landroid/content/Context;)V

    .line 55
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->a:Lcom/bytedance/sdk/openadsdk/component/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/b;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/e/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/e;->h()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/a/b$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/component/a/b$a;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/a/b$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/o;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

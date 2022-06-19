.class Lcom/pubmatic/sdk/webrendering/mraid/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/mraid/c$b;,
        Lcom/pubmatic/sdk/webrendering/mraid/c$a;
    }
.end annotation


# static fields
.field private static c:Lcom/pubmatic/sdk/webrendering/mraid/c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/pubmatic/sdk/webrendering/mraid/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    return-void
.end method

.method static a()Lcom/pubmatic/sdk/webrendering/mraid/c;
    .locals 2

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/c;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/pubmatic/sdk/webrendering/mraid/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/c;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/c;

    invoke-direct {v1}, Lcom/pubmatic/sdk/webrendering/mraid/c;-><init>()V

    sput-object v1, Lcom/pubmatic/sdk/webrendering/mraid/c;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/c;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/webrendering/mraid/c$a;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/c$a;->a(Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/c$b;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/c;Landroid/os/Handler;Landroid/media/AudioManager;)V

    iput-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a(II)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/c;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/pubmatic/sdk/webrendering/mraid/c;->c:Lcom/pubmatic/sdk/webrendering/mraid/c;

    return-void
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/Double;
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-double v0, v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->b:Lcom/pubmatic/sdk/webrendering/mraid/c$b;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected b(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/c;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/c;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.class public Lcom/explorestack/iab/vast/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/explorestack/iab/vast/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false

.field private static c:Z = false

.field private static final d:Landroid/content/BroadcastReceiver;

.field private static final e:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/b;->a:Ljava/util/WeakHashMap;

    .line 23
    new-instance v0, Lcom/explorestack/iab/vast/b$1;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/b$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/b;->d:Landroid/content/BroadcastReceiver;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    sput-object v0, Lcom/explorestack/iab/vast/b;->e:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/explorestack/iab/vast/b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/explorestack/iab/vast/b;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroid/view/View;Lcom/explorestack/iab/vast/b$a;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/vast/b;->b(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/explorestack/iab/vast/b;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/explorestack/iab/vast/b;->c:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/explorestack/iab/vast/b;->b(Landroid/content/Context;)V

    .line 78
    sget-boolean p0, Lcom/explorestack/iab/vast/b;->c:Z

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 14
    sput-boolean p0, Lcom/explorestack/iab/vast/b;->c:Z

    return p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/explorestack/iab/vast/b;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-boolean v1, Lcom/explorestack/iab/vast/b;->b:Z

    if-nez v1, :cond_1

    .line 46
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    sget-boolean v1, Lcom/explorestack/iab/vast/b;->b:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 49
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 50
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    sput-boolean v1, Lcom/explorestack/iab/vast/b;->c:Z

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/explorestack/iab/vast/b;->d:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/explorestack/iab/vast/b;->e:Landroid/content/IntentFilter;

    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 53
    sput-boolean p0, Lcom/explorestack/iab/vast/b;->b:Z

    .line 55
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

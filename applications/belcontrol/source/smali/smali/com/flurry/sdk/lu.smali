.class public Lcom/flurry/sdk/lu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/ly$a;


# static fields
.field private static final b:Ljava/lang/String; = "lu"

.field private static c:Lcom/flurry/sdk/lu;


# instance fields
.field public a:J

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/lv;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private h:Lcom/flurry/sdk/ls;

.field private i:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/lw;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/kj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    new-instance v0, Lcom/flurry/sdk/lv;

    invoke-direct {v0}, Lcom/flurry/sdk/lv;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/lv;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lu;->f:Ljava/lang/Object;

    new-instance v0, Lcom/flurry/sdk/lu$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lu$1;-><init>(Lcom/flurry/sdk/lu;)V

    iput-object v0, p0, Lcom/flurry/sdk/lu;->i:Lcom/flurry/sdk/kp;

    new-instance v0, Lcom/flurry/sdk/lu$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lu$2;-><init>(Lcom/flurry/sdk/lu;)V

    iput-object v0, p0, Lcom/flurry/sdk/lu;->j:Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/flurry/sdk/lu;->a:J

    const-string v1, "ContinueSessionMillis"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/lu;->g:J

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    sget-object v0, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ContinueSessionMillis = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/flurry/sdk/lu;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lu;->j:Lcom/flurry/sdk/kp;

    const-string v2, "com.flurry.android.sdk.ActivityLifecycleEvent"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lu;->i:Lcom/flurry/sdk/kp;

    const-string v2, "com.flurry.android.sdk.FlurrySessionTimerEvent"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lu;
    .locals 2

    const-class v0, Lcom/flurry/sdk/lu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lu;->c:Lcom/flurry/sdk/lu;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/lu;

    invoke-direct {v1}, Lcom/flurry/sdk/lu;-><init>()V

    sput-object v1, Lcom/flurry/sdk/lu;->c:Lcom/flurry/sdk/lu;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/lu;->c:Lcom/flurry/sdk/lu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic a(Lcom/flurry/sdk/lu;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/lu;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/lu;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/lu;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/lu;Lcom/flurry/sdk/ls;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/lu;->h:Lcom/flurry/sdk/ls;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flurry/sdk/lu;->h:Lcom/flurry/sdk/ls;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ls;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kk;->a()Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session already started with context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session already started with context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/lv;

    invoke-virtual {v0}, Lcom/flurry/sdk/lv;->a()V

    invoke-virtual {p0}, Lcom/flurry/sdk/lu;->b()Lcom/flurry/sdk/ls;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/flurry/sdk/ls;

    invoke-direct {v0}, Lcom/flurry/sdk/ls;-><init>()V

    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session started for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lt;

    invoke-direct {v1}, Lcom/flurry/sdk/lt;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, v1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    sget v2, Lcom/flurry/sdk/lt$a;->a:I

    iput v2, v1, Lcom/flurry/sdk/lt;->c:I

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->b()V

    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/sdk/lu;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v0, p0, Lcom/flurry/sdk/lu;->h:Lcom/flurry/sdk/ls;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session resumed for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lt;

    invoke-direct {v1}, Lcom/flurry/sdk/lt;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, v1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    sget p1, Lcom/flurry/sdk/lt$a;->c:I

    iput p1, v1, Lcom/flurry/sdk/lt;->c:I

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/lu;->a:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized f()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/lu;->f()I

    move-result v0

    const/4 v1, 0x5

    if-lez v0, :cond_0

    sget-object v2, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session cannot be finalized, sessionContextCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/sdk/lu;->b()Lcom/flurry/sdk/ls;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    const-string v2, "Session cannot be finalized, current session not found"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    const-string v2, "Flurry session ended"

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lt;

    invoke-direct {v1}, Lcom/flurry/sdk/lt;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    sget v2, Lcom/flurry/sdk/lt$a;->e:I

    iput v2, v1, Lcom/flurry/sdk/lt;->c:I

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/lt;->d:J

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->b()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/lu$4;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/lu$4;-><init>(Lcom/flurry/sdk/lu;Lcom/flurry/sdk/ls;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/kk;->a()Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kk;->b()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x3

    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bootstrap for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/lu;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/lu;->g:J

    const/4 p1, 0x4

    sget-object p2, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, ContinueSessionMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/flurry/sdk/lu;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x6

    sget-object p2, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    goto :goto_0
.end method

.method public final b()Lcom/flurry/sdk/ls;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lu;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/lu;->h:Lcom/flurry/sdk/ls;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kk;->a()Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/lu;->e(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kk;->a()Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Manual onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lu;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lu;->b()Lcom/flurry/sdk/ls;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    const-string v2, "Session not found. No active session"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/flurry/sdk/lt;

    invoke-direct {v2}, Lcom/flurry/sdk/lt;-><init>()V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ls;

    iput-object v1, v2, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    sget v1, Lcom/flurry/sdk/lt$a;->d:I

    iput v1, v2, Lcom/flurry/sdk/lt;->c:I

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/flurry/sdk/lt;->d:J

    invoke-virtual {v2}, Lcom/flurry/sdk/ko;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/lu$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/lu$3;-><init>(Lcom/flurry/sdk/lu;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/lu;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ls;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kk;->a()Lcom/flurry/sdk/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session cannot be ended, session not found for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session cannot be ended, session not found for context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/lu;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Flurry session paused for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/lt;

    invoke-direct {v1}, Lcom/flurry/sdk/lt;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/flurry/sdk/lt;->a:Ljava/lang/ref/WeakReference;

    iput-object v0, v1, Lcom/flurry/sdk/lt;->b:Lcom/flurry/sdk/ls;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/flurry/sdk/lt;->d:J

    sget p1, Lcom/flurry/sdk/lt$a;->d:I

    iput p1, v1, Lcom/flurry/sdk/lt;->c:I

    invoke-virtual {v1}, Lcom/flurry/sdk/ko;->b()V

    invoke-direct {p0}, Lcom/flurry/sdk/lu;->f()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flurry/sdk/lu;->e:Lcom/flurry/sdk/lv;

    iget-wide v0, p0, Lcom/flurry/sdk/lu;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/lv;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/lu;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/flurry/sdk/lu;->a:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

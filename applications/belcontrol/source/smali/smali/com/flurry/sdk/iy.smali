.class public Lcom/flurry/sdk/iy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "iy"

.field public static b:I

.field public static c:I

.field public static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static e:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/sdk/iy;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/jy;",
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

    new-instance v0, Lcom/flurry/sdk/iy$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/iy$1;-><init>(Lcom/flurry/sdk/iy;)V

    iput-object v0, p0, Lcom/flurry/sdk/iy;->j:Lcom/flurry/sdk/kp;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/iy;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/iy;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Lcom/flurry/sdk/iy;->c:I

    if-nez v0, :cond_0

    const v0, 0x927c0

    sput v0, Lcom/flurry/sdk/iy;->c:I

    :cond_0
    sget v0, Lcom/flurry/sdk/iy;->b:I

    if-nez v0, :cond_1

    const/16 v0, 0xf

    sput v0, Lcom/flurry/sdk/iy;->b:I

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v2, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "timeToSendNextPulseReport"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/iy;->i:J

    sget-object v0, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/iy;->f()V

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/iy;->j:Lcom/flurry/sdk/kp;

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/flurry/sdk/iy;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iy;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->g()V

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/flurry/sdk/iy;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/flurry/sdk/iy;->c:I

    return-void
.end method

.method public static declared-synchronized c()Lcom/flurry/sdk/iy;
    .locals 2

    const-class v0, Lcom/flurry/sdk/iy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/iy;->f:Lcom/flurry/sdk/iy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/iy;

    invoke-direct {v1}, Lcom/flurry/sdk/iy;-><init>()V

    sput-object v1, Lcom/flurry/sdk/iy;->f:Lcom/flurry/sdk/iy;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/iy;->f:Lcom/flurry/sdk/iy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized c(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from PulseCallbackManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/iy;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Lcom/flurry/sdk/iw;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/flurry/sdk/iw;->d:Z

    invoke-virtual {p1}, Lcom/flurry/sdk/iw;->a()V

    sget-object v0, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    invoke-virtual {v0}, Lcom/flurry/sdk/iv;->c()V

    sget-object v0, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v2, v2, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object p1, p1, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " finalized."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/iy;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->i()V

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/iy;->f()V

    :cond_0
    sget-object v0, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/flurry/sdk/iy;->f()V

    return-void
.end method

.method private static f()V
    .locals 5

    new-instance v0, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v2, ".yflurryanongoingpulsecallbackreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Lcom/flurry/sdk/iy$2;

    invoke-direct {v3}, Lcom/flurry/sdk/iy$2;-><init>()V

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    sput-object v0, Lcom/flurry/sdk/iy;->e:Lcom/flurry/sdk/kn;

    return-void
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/flurry/sdk/iy;->i:J

    const-string v3, "timeToSendNextPulseReport"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iy;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

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

.method private i()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/iy;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    const-string v2, "Threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->l()V

    :cond_1
    return-void
.end method

.method private static j()Z
    .locals 2

    sget-object v0, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    sget v1, Lcom/flurry/sdk/iy;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/iy;->i:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 9

    invoke-static {}, Lcom/flurry/sdk/iy;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    invoke-virtual {v1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iv;

    iget-object v4, v4, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/iw;

    iget-boolean v7, v6, Lcom/flurry/sdk/iw;->j:Z

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object v7, v6, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    sget-object v8, Lcom/flurry/sdk/ix;->d:Lcom/flurry/sdk/ix;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-boolean v5, v6, Lcom/flurry/sdk/iw;->j:Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/flurry/sdk/ja;->a()Lcom/flurry/sdk/ja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/iz;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/ja;->a()Lcom/flurry/sdk/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v3, Lcom/flurry/sdk/iy;->c:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/flurry/sdk/iy;->i:J

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->g()V

    invoke-static {}, Lcom/flurry/sdk/iy;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    invoke-virtual {v1}, Lcom/flurry/sdk/iz;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v1, v1, Lcom/flurry/sdk/iz;->b:I

    invoke-direct {p0, v1}, Lcom/flurry/sdk/iy;->c(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iv;

    iget-boolean v5, v4, Lcom/flurry/sdk/iv;->m:Z

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    iget-wide v6, v4, Lcom/flurry/sdk/iv;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    iget-object v4, v4, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/sdk/iw;

    iget-boolean v5, v5, Lcom/flurry/sdk/iw;->j:Z

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/flurry/sdk/iy;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/iy$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/iy$6;-><init>(Lcom/flurry/sdk/iy;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/iw;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v2, v2, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report sent successfully to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ix;->a:Lcom/flurry/sdk/ix;

    iput-object v0, p1, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    const-string v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/iy;->c(Lcom/flurry/sdk/iw;)V

    invoke-static {}, Lcom/flurry/sdk/ku;->c()I

    move-result v0

    if-gt v0, v2, :cond_0

    invoke-static {}, Lcom/flurry/sdk/ku;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/iy$5;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/iy$5;-><init>(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/iw;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/iz;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding and sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " report to PulseCallbackManager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/flurry/sdk/iy;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/flurry/sdk/iy;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/iy;->i:J

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/iy$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/iy$3;-><init>(Lcom/flurry/sdk/iy;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/iy;->h()I

    move-result v0

    iput v0, p1, Lcom/flurry/sdk/iz;->b:I

    sget-object v1, Lcom/flurry/sdk/iy;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iv;

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/iu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lf;->b(Lcom/flurry/sdk/le;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/iw;Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/flurry/sdk/iw;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/flurry/sdk/iw;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/flurry/sdk/iw;->i:J

    iget-object v0, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget v2, p1, Lcom/flurry/sdk/iw;->h:I

    iget v0, v0, Lcom/flurry/sdk/iv;->c:I

    const/4 v3, 0x0

    if-le v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v4, v4, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " redirecting to url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iput-object p2, p1, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/flurry/sdk/iy;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :goto_1
    :try_start_1
    sget-object p2, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum number of redirects attempted. Aborting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v1, v1, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v1, v1, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " report to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v1, v1, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/flurry/sdk/ix;->c:Lcom/flurry/sdk/ix;

    iput-object p2, p1, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    const-string p2, ""

    iput-object p2, p1, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/iy;->c(Lcom/flurry/sdk/iw;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/iw;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v3, v3, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v3, v3, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ix;->b:Lcom/flurry/sdk/ix;

    iput-object v0, p1, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/iw;->i:J

    const-string v0, ""

    iput-object v0, p1, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/iy;->c(Lcom/flurry/sdk/iw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/iz;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    const-string v1, "Must add valid PulseCallbackAsyncReportInfo"

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/flurry/sdk/iy;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/flurry/sdk/iy;->c:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/sdk/iy;->i:J

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/iy$4;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/iy$4;-><init>(Lcom/flurry/sdk/iy;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/iy;->h()I

    move-result v1

    iput v1, p1, Lcom/flurry/sdk/iz;->b:I

    sget-object v2, Lcom/flurry/sdk/iy;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/flurry/sdk/iz;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    sget-object v3, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Lcom/flurry/sdk/iy;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    const-string v4, "Max Callback Attempts threshold reached. Sending callback logging reports"

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->l()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/iy;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    const-string v2, "Time threshold reached. Sending callback logging reports"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->l()V

    :cond_5
    sget-object v1, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Restoring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " report to PulseCallbackManager. Number of stored completed callbacks: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/flurry/sdk/iw;Ljava/lang/String;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ix;->c:Lcom/flurry/sdk/ix;

    iput-object v0, p1, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/flurry/sdk/iw;->i:J

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p1, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    iget-object p2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget v0, p2, Lcom/flurry/sdk/le;->p:I

    iget v1, p2, Lcom/flurry/sdk/iv;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-eqz v0, :cond_2

    sget-object p2, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of attempts reached. Aborting: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v2, v2, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " report to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/iv;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-static {p2}, Lcom/flurry/sdk/mh;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Url: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v2, v2, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/iy;->c(Lcom/flurry/sdk/iw;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/flurry/sdk/iy;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Retrying callback to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-object v3, v3, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    iget-object v3, v3, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/flurry/sdk/iw;->l:Lcom/flurry/sdk/iv;

    iget-wide v3, v3, Lcom/flurry/sdk/iv;->h:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/iw;->a()V

    sget-object p1, Lcom/flurry/sdk/iy;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/flurry/sdk/iy;->a()V

    invoke-direct {p0}, Lcom/flurry/sdk/iy;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

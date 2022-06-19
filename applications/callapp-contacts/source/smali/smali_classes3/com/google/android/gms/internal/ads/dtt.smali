.class public final Lcom/google/android/gms/internal/ads/dtt;
.super Lcom/google/android/gms/internal/ads/dus;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/duv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/duv<",
            "Lcom/google/android/gms/internal/ads/bwm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/azz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/ads/duv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/duv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dtt;->d:Lcom/google/android/gms/internal/ads/duv;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dtg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/beb$a$b;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/azz$a;)V
    .locals 7

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dus;-><init>(Lcom/google/android/gms/internal/ads/dtg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/beb$a$b;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Lcom/google/android/gms/internal/ads/azz$a;

    .line 3
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/content/Context;

    .line 4
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Lcom/google/android/gms/internal/ads/azz$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/azz$a;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azz$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azz$a;->b()Lcom/google/android/gms/internal/ads/azz$c;

    move-result-object v0

    .line 4009
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfg:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azz$a;->b()Lcom/google/android/gms/internal/ads/azz$c;

    move-result-object p0

    .line 5009
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfg:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 5084
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 6084
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->g:Ljava/util/concurrent/Future;

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 7083
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dtg;->f:Lcom/google/android/gms/internal/ads/beb$a;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/beb$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7093
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/beb$a;->zzfg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dtt;->d:Lcom/google/android/gms/internal/ads/duv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/duv;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bwm;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    .line 11
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    const-string v5, "E"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_d

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Lcom/google/android/gms/internal/ads/azz$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dtt;->a(Lcom/google/android/gms/internal/ads/azz$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/bbz;->zzfe:Lcom/google/android/gms/internal/ads/bbz;

    goto :goto_5

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Lcom/google/android/gms/internal/ads/azz$a;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dtt;->a(Lcom/google/android/gms/internal/ads/azz$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 1003
    iget v4, v1, Lcom/google/android/gms/internal/ads/azz$a;->zzdv:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 1004
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/azz$a;->zzev:Lcom/google/android/gms/internal/ads/azz$b;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ads/azz$b;->a()Lcom/google/android/gms/internal/ads/azz$b;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/azz$a;->zzev:Lcom/google/android/gms/internal/ads/azz$b;

    .line 2004
    :goto_3
    iget v1, v1, Lcom/google/android/gms/internal/ads/azz$b;->zzey:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bbz;->zzj(I)Lcom/google/android/gms/internal/ads/bbz;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2005
    sget-object v1, Lcom/google/android/gms/internal/ads/bbz;->zzfc:Lcom/google/android/gms/internal/ads/bbz;

    .line 22
    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/ads/bbz;->zzfd:Lcom/google/android/gms/internal/ads/bbz;

    if-ne v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtt;->a:Lcom/google/android/gms/internal/ads/dtg;

    .line 2080
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dtg;->j:Z

    if-eqz v1, :cond_7

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/bbz;->zzfd:Lcom/google/android/gms/internal/ads/bbz;

    goto :goto_5

    .line 28
    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/ads/bbz;->zzfc:Lcom/google/android/gms/internal/ads/bbz;

    .line 30
    :goto_5
    sget-object v4, Lcom/google/android/gms/internal/ads/bbz;->zzfc:Lcom/google/android/gms/internal/ads/bbz;

    if-ne v1, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dtt;->c:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/dtt;->e:Landroid/content/Context;

    aput-object v9, v8, v2

    aput-object v4, v8, v3

    .line 32
    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    new-instance v4, Lcom/google/android/gms/internal/ads/bwm;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/bwm;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    const-string v5, "E"

    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 36
    :cond_9
    sget-object v2, Lcom/google/android/gms/internal/ads/dtw;->a:[I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bbz;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v3, :cond_b

    if-eq v1, v7, :cond_a

    goto :goto_7

    .line 39
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dtt;->c()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dtl;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 41
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    goto :goto_7

    .line 37
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtt;->f:Lcom/google/android/gms/internal/ads/azz$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azz$a;->b()Lcom/google/android/gms/internal/ads/azz$c;

    move-result-object v1

    .line 3009
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/azz$c;->zzfg:Ljava/lang/String;

    .line 37
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    .line 43
    :cond_c
    :goto_7
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bwm;

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    monitor-enter v2

    if-eqz v1, :cond_e

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwm;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/beb$a$b;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a$b;

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/bwm;->b:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/beb$a$b;->p(J)Lcom/google/android/gms/internal/ads/beb$a$b;

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwm;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/beb$a$b;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a$b;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bwm;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/beb$a$b;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a$b;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtt;->b:Lcom/google/android/gms/internal/ads/beb$a$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bwm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/beb$a$b;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a$b;

    .line 53
    :cond_e
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 45
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

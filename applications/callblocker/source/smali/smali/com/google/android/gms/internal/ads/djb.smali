.class public final Lcom/google/android/gms/internal/ads/djb;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/dkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dkd",
            "<",
            "Lcom/google/android/gms/internal/ads/bnl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/amp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/gms/internal/ads/dkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/djb;->d:Lcom/google/android/gms/internal/ads/dkd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/amp$a;)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->f:Lcom/google/android/gms/internal/ads/amp$a;

    .line 3
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/djb;->e:Landroid/content/Context;

    .line 4
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/djb;->f:Lcom/google/android/gms/internal/ads/amp$a;

    .line 5
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/amp$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/amp$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/amp$a;->d()Lcom/google/android/gms/internal/ads/amp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/amp$a;->d()Lcom/google/android/gms/internal/ads/amp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->l()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atw$a;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/djb;->d:Lcom/google/android/gms/internal/ads/dkd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djb;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dkd;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    .line 8
    monitor-enter v4

    .line 9
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bnl;

    .line 10
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    const-string/jumbo v5, "E"

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    const-string/jumbo v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->f:Lcom/google/android/gms/internal/ads/amp$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/djb;->a(Lcom/google/android/gms/internal/ads/amp$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/aps;->c:Lcom/google/android/gms/internal/ads/aps;

    move-object v3, v0

    .line 30
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/djb;->c:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/djb;->e:Landroid/content/Context;

    aput-object v8, v7, v0

    const/4 v8, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/aps;->a:Lcom/google/android/gms/internal/ads/aps;

    if-ne v3, v0, :cond_9

    move v0, v1

    .line 31
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->bd:Lcom/google/android/gms/internal/ads/ect;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    aput-object v1, v7, v0

    .line 35
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    new-instance v1, Lcom/google/android/gms/internal/ads/bnl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/bnl;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    const-string/jumbo v2, "E"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dje;->a:[I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/aps;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_2
    :goto_3
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 47
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bnl;

    .line 48
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 50
    if-eqz v0, :cond_4

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/bnl;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->p(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bnl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 54
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bnl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/atw$a$a;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djb;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bnl;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 56
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_5
    move v0, v2

    .line 13
    goto/16 :goto_0

    .line 18
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->f:Lcom/google/android/gms/internal/ads/amp$a;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/djb;->a(Lcom/google/android/gms/internal/ads/amp$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 20
    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$a;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$a;->b()Lcom/google/android/gms/internal/ads/amp$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$b;->a()Lcom/google/android/gms/internal/ads/aps;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/aps;->b:Lcom/google/android/gms/internal/ads/aps;

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 23
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->i()Z

    move-result v0

    .line 26
    if-eqz v0, :cond_8

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/aps;->b:Lcom/google/android/gms/internal/ads/aps;

    move-object v3, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 22
    goto :goto_4

    .line 28
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/aps;->a:Lcom/google/android/gms/internal/ads/aps;

    move-object v3, v0

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 30
    goto/16 :goto_2

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djb;->f:Lcom/google/android/gms/internal/ads/amp$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$a;->d()Lcom/google/android/gms/internal/ads/amp$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amp$c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;

    goto/16 :goto_3

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 42
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/djb;->c()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dis;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/bnl;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 56
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

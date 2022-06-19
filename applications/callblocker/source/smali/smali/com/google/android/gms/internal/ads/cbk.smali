.class public final Lcom/google/android/gms/internal/ads/cbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cbh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ub;

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/ug;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ub;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/ug;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbk;->a:Lcom/google/android/gms/internal/ads/ub;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cbk;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cbk;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cbk;->d:Lcom/google/android/gms/internal/ads/ug;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cbk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cbk;->f:Ljava/util/concurrent/Executor;

    .line 8
    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/cbh;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbk;->d:Lcom/google/android/gms/internal/ads/ug;

    const-string/jumbo v1, "ATTESTATION_TOKEN_FETCH"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cbh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cN:Lcom/google/android/gms/internal/ads/ect;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cbj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cbj;-><init>(Lcom/google/android/gms/internal/ads/cbk;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbk;->f:Ljava/util/concurrent/Executor;

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/cqr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cbm;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cbk;->f:Ljava/util/concurrent/Executor;

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ar:Lcom/google/android/gms/internal/ads/ect;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cbk;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crb;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    new-instance v2, Lcom/google/android/gms/internal/ads/cbl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/cbl;-><init>(Lcom/google/android/gms/internal/ads/cbk;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/crv;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbk;->a:Lcom/google/android/gms/internal/ads/ub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbk;->c:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/ads/cbk;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ub;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

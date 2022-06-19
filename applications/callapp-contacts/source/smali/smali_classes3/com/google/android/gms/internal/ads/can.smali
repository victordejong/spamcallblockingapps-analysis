.class public final Lcom/google/android/gms/internal/ads/can;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/caj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/caj<",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/afq;

.field final b:Lcom/google/android/gms/internal/ads/cah;

.field private final c:Lcom/google/android/gms/internal/ads/cpq;

.field private final d:Landroid/content/Context;

.field private e:Lcom/google/android/gms/internal/ads/aoa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cah;Lcom/google/android/gms/internal/ads/cpq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/can;->d:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/can;->c:Lcom/google/android/gms/internal/ads/cpq;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/can;->e:Lcom/google/android/gms/internal/ads/aoa;

    if-eqz v0, :cond_0

    .line 1021
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aoa;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cai;",
            "Lcom/google/android/gms/internal/ads/cal<",
            "-",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/can;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcip:Lcom/google/android/gms/internal/ads/zzvf;

    if-nez v0, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cam;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cam;-><init>(Lcom/google/android/gms/internal/ads/can;)V

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cap;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cap;-><init>(Lcom/google/android/gms/internal/ads/can;)V

    .line 16
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/can;->d:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/cqb;->a(Landroid/content/Context;Z)V

    .line 20
    instance-of p2, p3, Lcom/google/android/gms/internal/ads/cak;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/ads/cak;

    iget p2, p3, Lcom/google/android/gms/internal/ads/cak;->a:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 22
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/can;->c:Lcom/google/android/gms/internal/ads/cpq;

    .line 2006
    iput-object p1, p3, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 2024
    iput p2, p3, Lcom/google/android/gms/internal/ads/cpq;->n:I

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/cpq;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/afq;->p()Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/can;->d:Landroid/content/Context;

    .line 3002
    iput-object v1, p3, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 3004
    iput-object p1, p3, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 29
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/awm$a;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/awm$a;-><init>()V

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/awm$a;->a()Lcom/google/android/gms/internal/ads/awm;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 3012
    new-instance p3, Lcom/google/android/gms/internal/ads/bba;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cah;->a:Lcom/google/android/gms/internal/ads/bcy;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/cah;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 3013
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bza;->h()Lcom/google/android/gms/internal/ads/eki;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/google/android/gms/internal/ads/bba;-><init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/android/gms/internal/ads/eki;)V

    .line 31
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/bba;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/alp;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    .line 32
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/bbd;->a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bbd;->a()Lcom/google/android/gms/internal/ads/bbe;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/afq;->v()Lcom/google/android/gms/internal/ads/cqd;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/cqd;->a(I)V

    .line 36
    new-instance p2, Lcom/google/android/gms/internal/ads/aoa;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/afq;->d()Ljava/util/concurrent/Executor;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/can;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afq;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bbe;->a()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aor;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/aoa;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/dbt;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/can;->e:Lcom/google/android/gms/internal/ads/aoa;

    .line 38
    new-instance p3, Lcom/google/android/gms/internal/ads/cao;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/cao;-><init>(Lcom/google/android/gms/internal/ads/can;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/bbe;)V

    .line 4007
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/aoa;->c:Lcom/google/android/gms/internal/ads/dbt;

    new-instance p4, Lcom/google/android/gms/internal/ads/aod;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/aod;-><init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    invoke-static {p1, p4, p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return v0
.end method

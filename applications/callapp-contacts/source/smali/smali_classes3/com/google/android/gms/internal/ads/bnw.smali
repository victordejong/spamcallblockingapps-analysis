.class public final Lcom/google/android/gms/internal/ads/bnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/box;


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cpo;

.field private final b:Lcom/google/android/gms/internal/ads/bmw;

.field private final c:Lcom/google/android/gms/internal/ads/dbs;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lcom/google/android/gms/internal/ads/brb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bnw;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/cpo;Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/dbs;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/brb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnw;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnw;->b:Lcom/google/android/gms/internal/ads/bmw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bnw;->c:Lcom/google/android/gms/internal/ads/dbs;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bnw;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bnw;->e:Lcom/google/android/gms/internal/ads/brb;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bnw;)Lcom/google/android/gms/internal/ads/brb;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bnw;->e:Lcom/google/android/gms/internal/ads/brb;

    return-object p0
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/bnw;->f:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/cpk;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnw;->b:Lcom/google/android/gms/internal/ads/bmw;

    .line 1007
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->packageName:Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v2, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    .line 1011
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bmw;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v2, Lcom/google/android/gms/internal/ads/bmy;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/bmy;-><init>(Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 1013
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 1014
    const-class v2, Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lcom/google/android/gms/internal/ads/bmx;->a:Lcom/google/android/gms/internal/ads/daq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bmw;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 2015
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    .line 1016
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1017
    const-class v3, Lcom/google/android/gms/internal/ads/zzcpo;

    new-instance v4, Lcom/google/android/gms/internal/ads/bna;

    invoke-direct {v4, v0, p1, v2}, Lcom/google/android/gms/internal/ads/bna;-><init>(Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/zzauj;I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bmw;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 3015
    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/bnz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bnz;-><init>(Lcom/google/android/gms/internal/ads/bnw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnw;->c:Lcom/google/android/gms/internal/ads/dbs;

    .line 3019
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dg:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dh:Lcom/google/android/gms/internal/ads/af;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bnw;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 19
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/bny;->a:Lcom/google/android/gms/internal/ads/daq;

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 4015
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/bob;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bob;-><init>(Lcom/google/android/gms/internal/ads/bnw;)V

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 24
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

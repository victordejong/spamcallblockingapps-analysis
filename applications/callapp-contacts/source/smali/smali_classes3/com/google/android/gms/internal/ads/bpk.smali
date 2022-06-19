.class public final Lcom/google/android/gms/internal/ads/bpk;
.super Lcom/google/android/gms/internal/ads/sm;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/ti;

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bpv;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/ads/th;

.field private final f:Lcom/google/android/gms/internal/ads/ait;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/th;Lcom/google/android/gms/internal/ads/ait;Lcom/google/android/gms/internal/ads/ti;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/th;",
            "Lcom/google/android/gms/internal/ads/ait;",
            "Lcom/google/android/gms/internal/ads/ti;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/bpv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sm;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpk;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpk;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpk;->e:Lcom/google/android/gms/internal/ads/th;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bpk;->a:Lcom/google/android/gms/internal/ads/ti;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bpk;->f:Lcom/google/android/gms/internal/ads/ait;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bpk;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/ln;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/ln;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/ta;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/lj;

    sget-object v1, Lcom/google/android/gms/internal/ads/bpq;->a:Lcom/google/android/gms/internal/ads/lh;

    const-string v2, "AFMA_getAdDictionary"

    .line 69
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/ln;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)Lcom/google/android/gms/internal/ads/lg;

    move-result-object p2

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/ctj;->zzhtp:Lcom/google/android/gms/internal/ads/ctj;

    .line 71
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/cht;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/cht;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/bpo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/bpo;-><init>(Lcom/google/android/gms/internal/ads/cht;)V

    .line 61
    sget-object p2, Lcom/google/android/gms/internal/ads/bpn;->a:Lcom/google/android/gms/internal/ads/css;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtn:Lcom/google/android/gms/internal/ads/ctj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauj;->zzdys:Landroid/os/Bundle;

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/sr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/sr;",
            ")V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/ads/bpu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bpu;-><init>(Lcom/google/android/gms/internal/ads/bpk;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/ads/bpw;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/bpw;-><init>(Lcom/google/android/gms/internal/ads/bpk;Lcom/google/android/gms/internal/ads/sr;)V

    .line 138
    sget-object p2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 139
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcom/google/android/gms/internal/ads/li;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->c:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->zzaau()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/li;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->f:Lcom/google/android/gms/internal/ads/ait;

    .line 13
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ait;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/cht;

    move-result-object v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/bpy;->d:Lcom/google/android/gms/internal/ads/lk;

    sget-object v3, Lcom/google/android/gms/internal/ads/lm;->b:Lcom/google/android/gms/internal/ads/lh;

    const-string v4, "google.afma.response.normalize"

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/ln;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)Lcom/google/android/gms/internal/ads/lg;

    move-result-object v2

    .line 16
    new-instance v9, Lcom/google/android/gms/internal/ads/bpz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bpk;->c:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdvi:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bpk;->e:Lcom/google/android/gms/internal/ads/th;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdwh:Ljava/lang/String;

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/bpz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/th;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cht;->c()Lcom/google/android/gms/internal/ads/cti;

    move-result-object p2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/ct;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 20
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Request contained a PoolKey but split request is disabled."

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bpk;->b:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/bpv;

    if-nez v4, :cond_1

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_2

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/cht;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 35
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/ln;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtq:Lcom/google/android/gms/internal/ads/ctj;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/dbt;

    aput-object v0, v4, v5

    aput-object p1, v4, v3

    .line 37
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/bpj;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/bpj;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 38
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/csv;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v1

    .line 41
    sget-object v4, Lcom/google/android/gms/internal/ads/ctj;->zzhtr:Lcom/google/android/gms/internal/ads/ctj;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/dbt;

    aput-object p1, v7, v5

    aput-object v0, v7, v3

    aput-object v1, v7, v6

    .line 42
    invoke-virtual {p2, v4, v7}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/bpm;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/bpm;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 43
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/csv;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1

    .line 48
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/bqc;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/bpv;->b:Lorg/json/JSONObject;

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/bpv;->a:Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bqc;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ta;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/ctj;->zzhtq:Lcom/google/android/gms/internal/ads/ctj;

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtr:Lcom/google/android/gms/internal/ads/ctj;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/dbt;

    aput-object p1, v4, v5

    aput-object v0, v4, v3

    .line 55
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/bpl;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/bpl;-><init>(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 56
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/csv;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/ct;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bpt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bpt;-><init>(Lcom/google/android/gms/internal/ads/bpk;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bpv;

    if-nez v1, :cond_2

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 106
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzats;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/sp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V
    .locals 1

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/sr;)V

    .line 78
    new-instance p2, Lcom/google/android/gms/internal/ads/bpp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/bpp;-><init>(Lcom/google/android/gms/internal/ads/bpk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpk;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/sr;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bpk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/sr;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/ct;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyu:Lcom/google/android/gms/internal/ads/zzdrc;

    if-nez v0, :cond_1

    .line 83
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyu:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqp:I

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyu:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqq:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcom/google/android/gms/internal/ads/li;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->c:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->zzaau()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/li;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->f:Lcom/google/android/gms/internal/ads/ait;

    .line 89
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ait;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/cht;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cht;->c()Lcom/google/android/gms/internal/ads/cti;

    move-result-object v1

    .line 92
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/cht;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 94
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/ln;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p2

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/ctj;->zzhuf:Lcom/google/android/gms/internal/ads/ctj;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dbt;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bps;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/bps;-><init>(Lcom/google/android/gms/internal/ads/bpk;Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbt;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/csv;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1

    .line 85
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V
    .locals 1

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bpk;->c(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/sr;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            "I)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzli()Lcom/google/android/gms/internal/ads/li;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->c:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->zzaau()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/li;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/ads/cz;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpk;->f:Lcom/google/android/gms/internal/ads/ait;

    .line 119
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/ait;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/cht;

    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cht;->b()Lcom/google/android/gms/internal/ads/cha;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/lj;

    sget-object v3, Lcom/google/android/gms/internal/ads/lm;->b:Lcom/google/android/gms/internal/ads/lh;

    const-string v4, "google.afma.request.getSignals"

    .line 122
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/ln;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)Lcom/google/android/gms/internal/ads/lg;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/cht;->c()Lcom/google/android/gms/internal/ads/cti;

    move-result-object p2

    .line 124
    sget-object v2, Lcom/google/android/gms/internal/ads/ctj;->zzhts:Lcom/google/android/gms/internal/ads/ctj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdys:Landroid/os/Bundle;

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/bpr;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/bpr;-><init>(Lcom/google/android/gms/internal/ads/cha;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/ctj;->zzhtt:Lcom/google/android/gms/internal/ads/ctj;

    .line 127
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V
    .locals 1

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bpk;->b(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/sr;)V

    return-void
.end method

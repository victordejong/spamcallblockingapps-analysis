.class public final Lcom/google/android/gms/internal/ads/clj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cmh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aqx<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cmh<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/crj<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/aqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    sget-object v0, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/crj<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 5
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cmp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cmp;-><init>(Z)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/aqw;->a(Lcom/google/android/gms/internal/ads/cmp;)Lcom/google/android/gms/internal/ads/aqw;

    .line 7
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clj;->a:Lcom/google/android/gms/internal/ads/aqx;

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/crj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/crj;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cmm;->a:Lcom/google/android/gms/internal/ads/zzauj;

    if-eqz v1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cmm;->a:Lcom/google/android/gms/internal/ads/zzauj;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aor;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 13
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/cli;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/cli;-><init>(Lcom/google/android/gms/internal/ads/clj;Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/aor;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/clj;->b:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cll;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/cll;-><init>(Lcom/google/android/gms/internal/ads/crj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->b:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clj;->a:Lcom/google/android/gms/internal/ads/aqx;

    return-object v0
.end method

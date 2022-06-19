.class public final Lcom/google/android/gms/internal/ads/clt;
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
        "Lcom/google/android/gms/internal/ads/clx<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cqz;

.field final b:Ljava/util/concurrent/Executor;

.field c:Lcom/google/android/gms/internal/ads/dbi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbi<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cqz;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/clu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/clu;-><init>(Lcom/google/android/gms/internal/ads/clt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/clt;->c:Lcom/google/android/gms/internal/ads/dbi;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clt;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clt;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmm;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/clx<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cmb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clt;->a:Lcom/google/android/gms/internal/ads/cqz;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/clt;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/cmb;-><init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/cmk;Lcom/google/android/gms/internal/ads/cmj;Ljava/util/concurrent/Executor;)V

    .line 1007
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    if-eqz v1, :cond_0

    .line 1008
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    goto/16 :goto_1

    .line 1010
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/ct;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1011
    new-instance v1, Lcom/google/android/gms/internal/ads/cmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmb;->a()Lcom/google/android/gms/internal/ads/cri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/google/android/gms/internal/ads/cmf;-><init>(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/cmd;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    .line 1012
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cmb;->e:Lcom/google/android/gms/internal/ads/cmf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cmb;->c:Lcom/google/android/gms/internal/ads/cmj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cmb;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 1014
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/clq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 1015
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/cqz;->a()Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqs:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/clq;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/aqw;->a(Lcom/google/android/gms/internal/ads/clq;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v1

    .line 1017
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aqx;

    .line 1018
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aqx;->c()Lcom/google/android/gms/internal/ads/aor;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 1019
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/cqz;->a()Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v2

    .line 1049
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aor;->a:Lcom/google/android/gms/internal/ads/cti;

    sget-object v4, Lcom/google/android/gms/internal/ads/ctj;->zzhud:Lcom/google/android/gms/internal/ads/ctj;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/aor;->e:Lcom/google/android/gms/internal/ads/aqs;

    .line 1050
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/aqs;->b()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/aos;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/aos;-><init>(Lcom/google/android/gms/internal/ads/aor;Lcom/google/android/gms/internal/ads/zzdrc;)V

    .line 1051
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object v2

    .line 1053
    new-instance v3, Lcom/google/android/gms/internal/ads/aov;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/aov;-><init>(Lcom/google/android/gms/internal/ads/aor;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/aor;->f:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 1020
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/cmg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/cmg;-><init>(Lcom/google/android/gms/internal/ads/cmb;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cmb;->d:Ljava/util/concurrent/Executor;

    .line 1021
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzcpo;

    new-instance v3, Lcom/google/android/gms/internal/ads/cmd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/cmd;-><init>(Lcom/google/android/gms/internal/ads/cmb;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cmb;->d:Ljava/util/concurrent/Executor;

    .line 1022
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v1

    .line 1023
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/cme;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmb;->d:Ljava/util/concurrent/Executor;

    .line 2020
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 8
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cls;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cls;-><init>(Lcom/google/android/gms/internal/ads/clt;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/clt;->b:Ljava/util/concurrent/Executor;

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/clv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/clv;-><init>(Lcom/google/android/gms/internal/ads/clt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clt;->b:Ljava/util/concurrent/Executor;

    .line 10
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

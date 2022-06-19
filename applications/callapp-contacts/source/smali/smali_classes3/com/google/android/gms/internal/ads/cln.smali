.class final synthetic Lcom/google/android/gms/internal/ads/cln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/clk;

.field private final b:Lcom/google/android/gms/internal/ads/cmm;

.field private final c:Lcom/google/android/gms/internal/ads/clr;

.field private final d:Lcom/google/android/gms/internal/ads/cmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clk;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/clr;Lcom/google/android/gms/internal/ads/cmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cln;->a:Lcom/google/android/gms/internal/ads/clk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cln;->b:Lcom/google/android/gms/internal/ads/cmm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cln;->c:Lcom/google/android/gms/internal/ads/clr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cln;->d:Lcom/google/android/gms/internal/ads/cmj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cln;->a:Lcom/google/android/gms/internal/ads/clk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cln;->b:Lcom/google/android/gms/internal/ads/cmm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cln;->c:Lcom/google/android/gms/internal/ads/clr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cln;->d:Lcom/google/android/gms/internal/ads/cmj;

    check-cast p1, Lcom/google/android/gms/internal/ads/clx;

    if-eqz p1, :cond_2

    .line 1048
    iget-object v11, p1, Lcom/google/android/gms/internal/ads/clx;->a:Lcom/google/android/gms/internal/ads/cri;

    .line 1049
    new-instance v12, Lcom/google/android/gms/internal/ads/clr;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/clr;->a:Lcom/google/android/gms/internal/ads/cmj;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/clr;->b:Lcom/google/android/gms/internal/ads/cmm;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/clr;->c:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/clr;->d:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/clr;->e:Ljava/util/concurrent/Executor;

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/clr;->f:Lcom/google/android/gms/internal/ads/zzwc;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/clr;-><init>(Lcom/google/android/gms/internal/ads/cmj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/cri;)V

    .line 1051
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/clx;->c:Lcom/google/android/gms/internal/ads/crj;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1052
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/clk;->c:Lcom/google/android/gms/internal/ads/aqx;

    .line 1053
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/clk;->b:Lcom/google/android/gms/internal/ads/crr;

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/crr;->a(Lcom/google/android/gms/internal/ads/crx;)V

    .line 1054
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/clx;->c:Lcom/google/android/gms/internal/ads/crj;

    invoke-virtual {v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/clk;->a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1055
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/clk;->b:Lcom/google/android/gms/internal/ads/crr;

    .line 1056
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/crr;->b(Lcom/google/android/gms/internal/ads/crx;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1058
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 1059
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p1

    .line 1060
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/aqx;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/clk;->c:Lcom/google/android/gms/internal/ads/aqx;

    .line 1062
    new-instance p1, Lcom/google/android/gms/internal/ads/clp;

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/ads/clp;-><init>(Lcom/google/android/gms/internal/ads/clk;Lcom/google/android/gms/internal/ads/cmj;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clk;->d:Ljava/util/concurrent/Executor;

    .line 2019
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1064
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/clk;->b:Lcom/google/android/gms/internal/ads/crr;

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/crr;->a(Lcom/google/android/gms/internal/ads/crx;)V

    .line 1065
    new-instance v2, Lcom/google/android/gms/internal/ads/cmm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cmm;->b:Lcom/google/android/gms/internal/ads/cmk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/clx;->b:Lcom/google/android/gms/internal/ads/zzauj;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/cmm;-><init>(Lcom/google/android/gms/internal/ads/cmk;Lcom/google/android/gms/internal/ads/zzauj;)V

    move-object v1, v2

    .line 1066
    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/clk;->a:Lcom/google/android/gms/internal/ads/cmh;

    .line 1067
    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 1068
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/clk;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aqx;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/clk;->c:Lcom/google/android/gms/internal/ads/aqx;

    return-object p1
.end method

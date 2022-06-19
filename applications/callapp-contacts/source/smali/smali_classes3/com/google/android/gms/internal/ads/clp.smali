.class final synthetic Lcom/google/android/gms/internal/ads/clp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/clk;

.field private final b:Lcom/google/android/gms/internal/ads/cmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clk;Lcom/google/android/gms/internal/ads/cmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/clp;->a:Lcom/google/android/gms/internal/ads/clk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/clp;->b:Lcom/google/android/gms/internal/ads/cmj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/clp;->a:Lcom/google/android/gms/internal/ads/clk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/clp;->b:Lcom/google/android/gms/internal/ads/cmj;

    check-cast p1, Lcom/google/android/gms/internal/ads/crv;

    if-eqz p1, :cond_0

    .line 1035
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/crv;->a:Lcom/google/android/gms/internal/ads/crj;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/crv;->b:Lcom/google/android/gms/internal/ads/crx;

    if-eqz v2, :cond_0

    .line 1036
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/crv;->b:Lcom/google/android/gms/internal/ads/crx;

    check-cast v2, Lcom/google/android/gms/internal/ads/clr;

    .line 1037
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g;->a()Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object v3

    .line 1038
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$a;->a()Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/eht$g$c;->zzcaf:Lcom/google/android/gms/internal/ads/eht$g$c;

    .line 1039
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$c;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v4

    .line 1040
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$d;->a()Lcom/google/android/gms/internal/ads/eht$g$d$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$d$a;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v4

    .line 1041
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/eht$g$b;->a(Lcom/google/android/gms/internal/ads/eht$g$a$a;)Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object v3

    .line 1067
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v3

    .line 1042
    check-cast v3, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v3, Lcom/google/android/gms/internal/ads/eht$g;

    .line 1043
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/crv;->a:Lcom/google/android/gms/internal/ads/crj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/crj;->a:Lcom/google/android/gms/internal/ads/aor;

    .line 2048
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    .line 1043
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/awa;->c(Lcom/google/android/gms/internal/ads/eht$g;)V

    .line 1044
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/crv;->a:Lcom/google/android/gms/internal/ads/crj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/clr;->b:Lcom/google/android/gms/internal/ads/cmm;

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/clk;->a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1045
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;)V

    throw p1
.end method

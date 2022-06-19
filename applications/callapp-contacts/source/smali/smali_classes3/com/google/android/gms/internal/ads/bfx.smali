.class final synthetic Lcom/google/android/gms/internal/ads/bfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfv;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bfx;->a:Lcom/google/android/gms/internal/ads/bfv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bfx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bfx;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bfx;->a:Lcom/google/android/gms/internal/ads/bfv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bfx;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bfx;->c:Ljava/lang/String;

    .line 1050
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bfv;->c:Lcom/google/android/gms/internal/ads/bif;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    const/4 v4, 0x0

    .line 1051
    invoke-virtual {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v2

    .line 1053
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zm;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zm;

    move-result-object v3

    .line 1054
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/bfv;->a(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1055
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v5, :cond_0

    .line 1056
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->c()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    goto :goto_0

    .line 1057
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->b()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    .line 1059
    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/bgc;

    invoke-direct {v6, p1, v2, v3}, Lcom/google/android/gms/internal/ads/bgc;-><init>(Lcom/google/android/gms/internal/ads/bfv;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/zm;)V

    .line 1060
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    .line 1061
    invoke-interface {v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

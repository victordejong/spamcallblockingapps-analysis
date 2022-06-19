.class final synthetic Lcom/google/android/gms/internal/ads/bga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/bfv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bga;->a:Lcom/google/android/gms/internal/ads/bfv;

    .line 1038
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/bfv;->c:Lcom/google/android/gms/internal/ads/bif;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqk()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    const/4 v2, 0x0

    .line 1039
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/bif;->a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    .line 1041
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zm;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zm;

    move-result-object v1

    .line 1042
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bfv;->a(Lcom/google/android/gms/internal/ads/adt;)V

    .line 1044
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/ads/bfz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bfz;-><init>(Lcom/google/android/gms/internal/ads/zm;)V

    .line 1045
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afg;)V

    .line 1046
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->bS:Lcom/google/android/gms/internal/ads/af;

    .line 1047
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 1048
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/adt;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method

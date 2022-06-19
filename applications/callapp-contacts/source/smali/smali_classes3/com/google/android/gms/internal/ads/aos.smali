.class final synthetic Lcom/google/android/gms/internal/ads/aos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aor;

.field private final b:Lcom/google/android/gms/internal/ads/zzdrc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aor;Lcom/google/android/gms/internal/ads/zzdrc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aos;->a:Lcom/google/android/gms/internal/ads/aor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aos;->a:Lcom/google/android/gms/internal/ads/aor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aos;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 1061
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdyu:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 1062
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aor;->d:Lcom/google/android/gms/internal/ads/boz;

    .line 2019
    new-instance v1, Lcom/google/android/gms/internal/ads/bpa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/bpa;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 2020
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/boz;->b:Lcom/google/android/gms/internal/ads/bon;

    .line 2021
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/ads/bpd;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/bpd;-><init>(Lcom/google/android/gms/internal/ads/bon;)V

    .line 2021
    new-instance v2, Lcom/google/android/gms/internal/ads/bpc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bpc;-><init>(Lcom/google/android/gms/internal/ads/boz;)V

    .line 2022
    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/google/android/gms/internal/ads/boz;->a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/bpg;Lcom/google/android/gms/internal/ads/daq;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

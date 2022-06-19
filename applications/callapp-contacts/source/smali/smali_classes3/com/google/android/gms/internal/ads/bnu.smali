.class final synthetic Lcom/google/android/gms/internal/ads/bnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bnv;

.field private final b:Lcom/google/android/gms/internal/ads/zzauj;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bnv;Lcom/google/android/gms/internal/ads/zzauj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnu;->a:Lcom/google/android/gms/internal/ads/bnv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnu;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/bnu;->c:I

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bnu;->a:Lcom/google/android/gms/internal/ads/bnv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnu;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/bnu;->c:I

    .line 1021
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bnv;->d:Lcom/google/android/gms/internal/ads/dsb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bpk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bpk;->c(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

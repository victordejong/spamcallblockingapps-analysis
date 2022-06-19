.class final synthetic Lcom/google/android/gms/internal/ads/bna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmw;

.field private final b:Lcom/google/android/gms/internal/ads/zzauj;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/zzauj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bna;->a:Lcom/google/android/gms/internal/ads/bmw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bna;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/bna;->c:I

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bna;->a:Lcom/google/android/gms/internal/ads/bmw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bna;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/bna;->c:I

    .line 1020
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bmw;->d:Lcom/google/android/gms/internal/ads/dsb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bpk;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bpk;->a(Lcom/google/android/gms/internal/ads/zzauj;I)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

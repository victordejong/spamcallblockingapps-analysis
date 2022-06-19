.class final synthetic Lcom/google/android/gms/internal/ads/bow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;

.field private final b:Lcom/google/android/gms/internal/ads/zzauj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bow;->a:Lcom/google/android/gms/internal/ads/dsv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bow;->b:Lcom/google/android/gms/internal/ads/zzauj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bow;->a:Lcom/google/android/gms/internal/ads/dsv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bow;->b:Lcom/google/android/gms/internal/ads/zzauj;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/box;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/box;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method

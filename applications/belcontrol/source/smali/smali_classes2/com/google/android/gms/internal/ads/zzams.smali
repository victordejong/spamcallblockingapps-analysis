.class public final synthetic Lcom/google/android/gms/internal/ads/zzams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzdlh:Ljava/lang/String;

.field private final zzdli:Lcom/google/android/gms/internal/ads/zzaif;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdlh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdli:Lcom/google/android/gms/internal/ads/zzaif;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdlh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzdli:Lcom/google/android/gms/internal/ads/zzaif;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzalx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-object p1
.end method

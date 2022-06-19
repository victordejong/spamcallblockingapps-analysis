.class public final synthetic Lcom/google/android/gms/internal/ads/zzawo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzeah:Lcom/google/android/gms/internal/ads/zzawm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzeah:Lcom/google/android/gms/internal/ads/zzawm;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzeah:Lcom/google/android/gms/internal/ads/zzawm;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzi(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

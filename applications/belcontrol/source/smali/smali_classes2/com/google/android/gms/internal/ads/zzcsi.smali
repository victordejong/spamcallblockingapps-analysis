.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnu;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzbeb;)Lcom/google/android/gms/internal/ads/zzbnu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcsi;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsi;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object v0

    return-object v0
.end method

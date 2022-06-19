.class public final synthetic Lcom/google/android/gms/internal/ads/zzcia;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyq;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzbeb;)Lcom/google/android/gms/internal/ads/zzbyq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcia;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    return-object v0
.end method


# virtual methods
.method public final zzams()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcia;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    return-void
.end method

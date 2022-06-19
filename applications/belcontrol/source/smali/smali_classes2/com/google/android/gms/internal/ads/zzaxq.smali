.class public final synthetic Lcom/google/android/gms/internal/ads/zzaxq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcle:Landroid/content/Context;

.field private final zzebo:Lcom/google/android/gms/internal/ads/zzaxc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxc;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzebo:Lcom/google/android/gms/internal/ads/zzaxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzcle:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzebo:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxq;->zzcle:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

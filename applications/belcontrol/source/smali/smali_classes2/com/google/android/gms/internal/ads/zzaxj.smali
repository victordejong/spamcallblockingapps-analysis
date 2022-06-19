.class public final synthetic Lcom/google/android/gms/internal/ads/zzaxj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdlo:Ljava/lang/String;

.field private final zzebo:Lcom/google/android/gms/internal/ads/zzaxc;

.field private final zzebp:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxc;Lcom/google/android/gms/internal/ads/zzaxv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzebo:Lcom/google/android/gms/internal/ads/zzaxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzebp:Lcom/google/android/gms/internal/ads/zzaxv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzdlo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzebo:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzebp:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxj;->zzdlo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Lcom/google/android/gms/internal/ads/zzaxv;Ljava/lang/String;)V

    return-void
.end method

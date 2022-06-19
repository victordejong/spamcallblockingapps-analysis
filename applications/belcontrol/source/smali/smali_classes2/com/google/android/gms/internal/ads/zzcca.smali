.class public final synthetic Lcom/google/android/gms/internal/ads/zzcca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzekn:Z

.field private final zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbu;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzekn:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzgdg:Lcom/google/android/gms/internal/ads/zzcbu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcca;->zzekn:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzbi(Z)V

    return-void
.end method

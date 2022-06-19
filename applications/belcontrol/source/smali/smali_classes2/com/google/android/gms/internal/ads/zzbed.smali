.class public final synthetic Lcom/google/android/gms/internal/ads/zzbed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeqt:Lcom/google/android/gms/internal/ads/zzbee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbed;->zzeqt:Lcom/google/android/gms/internal/ads/zzbee;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbed;->zzeqt:Lcom/google/android/gms/internal/ads/zzbee;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadg()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzact()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvx()V

    :cond_0
    return-void
.end method

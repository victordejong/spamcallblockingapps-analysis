.class public final synthetic Lcom/google/android/gms/internal/ads/zzbal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzefe:I

.field private final zzeiv:Lcom/google/android/gms/internal/ads/zzbam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbam;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzeiv:Lcom/google/android/gms/internal/ads/zzbam;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzefe:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzeiv:Lcom/google/android/gms/internal/ads/zzbam;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbal;->zzefe:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbam;->zzdj(I)V

    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqw;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzbrx:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(IIZ)V

    return-void
.end method

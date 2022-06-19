.class public final Lcom/google/android/gms/internal/ads/zzbas;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzejo:Lcom/google/android/gms/internal/ads/zzbam;

.field private final synthetic zzejs:I

.field private final synthetic zzejt:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbam;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejs:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejs:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbas;->zzejt:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaw;->zzk(II)V

    :cond_0
    return-void
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzbca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzefe:I

.field private final zzeff:I

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefe:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzeff:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzefe:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzeff:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbbr;->zzp(II)V

    return-void
.end method

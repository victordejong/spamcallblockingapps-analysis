.class public final Lcom/google/android/gms/internal/ads/zzeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzxq:I

.field private final synthetic zzxr:I

.field private final synthetic zzxs:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzea;III)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxq:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxr:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzea;->zzby()Lcom/google/android/gms/internal/ads/zzds;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxq:I

    int-to-long v3, v3

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxr:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzxs:I

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzds;->zza(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzea;->zzbz()Lcom/google/android/gms/internal/ads/zzdsy;

    move-result-object v1

    const/16 v2, 0x7e6

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

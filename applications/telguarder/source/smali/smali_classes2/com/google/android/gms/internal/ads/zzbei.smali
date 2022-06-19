.class final Lcom/google/android/gms/internal/ads/zzbei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzerl:Lcom/google/android/gms/internal/ads/zzawz;

.field private final synthetic zzern:Lcom/google/android/gms/internal/ads/zzbee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzawz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzern:Lcom/google/android/gms/internal/ads/zzbee;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzerl:Lcom/google/android/gms/internal/ads/zzawz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzern:Lcom/google/android/gms/internal/ads/zzbee;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzerl:Lcom/google/android/gms/internal/ads/zzawz;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/internal/ads/zzbee;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

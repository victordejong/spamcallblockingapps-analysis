.class final Lcom/google/android/gms/internal/ads/zzro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbtg:Landroid/view/View;

.field private final synthetic zzbth:Lcom/google/android/gms/internal/ads/zzrp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrp;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzbth:Lcom/google/android/gms/internal/ads/zzrp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzbtg:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzbth:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzbtg:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrp;->zzj(Landroid/view/View;)V

    return-void
.end method

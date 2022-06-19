.class final Lcom/google/android/gms/internal/ads/zzrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbtu:Lcom/google/android/gms/internal/ads/zzrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrr;->zzbth:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrr;->zzbtw:Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzrr;->zzbtx:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzrr;->zzbty:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zzrj;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

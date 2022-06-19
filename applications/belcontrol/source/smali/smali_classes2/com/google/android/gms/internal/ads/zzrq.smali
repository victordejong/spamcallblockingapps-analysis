.class public final Lcom/google/android/gms/internal/ads/zzrq;
.super Ljava/lang/Object;
.source ""

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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzrr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrq;->zzbtu:Lcom/google/android/gms/internal/ads/zzrr;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrr;->zzbth:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtw:Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrr;->zzbtx:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzrr;->zzbty:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zzrj;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

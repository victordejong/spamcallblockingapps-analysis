.class public final synthetic Lcom/google/android/gms/internal/ads/zzbfc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfe;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zzj(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzj(Landroid/net/Uri;)V

    return-void
.end method

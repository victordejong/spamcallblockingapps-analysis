.class final synthetic Lcom/google/android/gms/internal/ads/zzbfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfe;


# instance fields
.field private final zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zzj(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzeuk:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzev(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzj(Landroid/net/Uri;)V

    return-void
.end method

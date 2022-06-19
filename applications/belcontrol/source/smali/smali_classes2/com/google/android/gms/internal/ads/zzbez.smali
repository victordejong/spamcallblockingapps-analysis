.class public final Lcom/google/android/gms/internal/ads/zzbez;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/zzbfd;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfm;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzeuh:Lcom/google/android/gms/internal/ads/zzbfe;

.field private final zzeui:Lcom/google/android/gms/internal/ads/zzbfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfd;Lcom/google/android/gms/internal/ads/zzbfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/zzbfe;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeuh:Lcom/google/android/gms/internal/ads/zzbfe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    return-void
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfd;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "Context is null, ignoring."

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfd;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfo;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeui:Lcom/google/android/gms/internal/ads/zzbfd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbfd;->zzabe()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URL is empty, ignoring message"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbfb;-><init>(Lcom/google/android/gms/internal/ads/zzbez;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic zzfn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbez;->zzeuh:Lcom/google/android/gms/internal/ads/zzbfe;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfe;->zzj(Landroid/net/Uri;)V

    return-void
.end method

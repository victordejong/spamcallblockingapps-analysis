.class public final Lcom/google/android/gms/internal/ads/aeq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/aeu;",
        ":",
        "Lcom/google/android/gms/internal/ads/aez;",
        ":",
        "Lcom/google/android/gms/internal/ads/afb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/aer;

.field private final b:Lcom/google/android/gms/internal/ads/aeu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aeu;Lcom/google/android/gms/internal/ads/aer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/aer;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aeq;->a:Lcom/google/android/gms/internal/ads/aer;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    return-void
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    check-cast v0, Lcom/google/android/gms/internal/ads/aez;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aez;->E()Lcom/google/android/gms/internal/ads/die;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 1023
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/die;->b:Lcom/google/android/gms/internal/ads/cxx;

    if-nez v0, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/aeu;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "Context is null, ignoring."

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-object v1

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aeu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    check-cast v2, Lcom/google/android/gms/internal/ads/afb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/afb;->s()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aeq;->b:Lcom/google/android/gms/internal/ads/aeu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/aeu;->d()Landroid/app/Activity;

    move-result-object v3

    .line 26
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/cxx;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URL is empty, ignoring message"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aes;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aes;-><init>(Lcom/google/android/gms/internal/ads/aeq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

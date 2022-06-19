.class public final Lcom/google/android/gms/internal/ads/wo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/xo0;",
        ":",
        "Lcom/google/android/gms/internal/ads/ep0;",
        ":",
        "Lcom/google/android/gms/internal/ads/gp0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vo0;

.field private final b:Lcom/google/android/gms/internal/ads/xo0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xo0;Lcom/google/android/gms/internal/ads/vo0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/vo0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wo0;->a:Lcom/google/android/gms/internal/ads/vo0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/xo0;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wo0;->a:Lcom/google/android/gms/internal/ads/vo0;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vo0;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/xo0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ep0;->A()Lcom/google/android/gms/internal/ads/u;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u;->b()Lcom/google/android/gms/internal/ads/q;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/xo0;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/xo0;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "Context is null, ignoring."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/xo0;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/xo0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wo0;->b:Lcom/google/android/gms/internal/ads/xo0;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/xo0;->g()Landroid/app/Activity;

    move-result-object v3

    check-cast v2, Landroid/view/View;

    .line 8
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/q;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URL is empty, ignoring message"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v1, Lcom/google/android/gms/internal/ads/uo0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/uo0;-><init>(Lcom/google/android/gms/internal/ads/wo0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

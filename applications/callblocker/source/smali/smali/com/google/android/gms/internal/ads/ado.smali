.class public final Lcom/google/android/gms/internal/ads/ado;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/ads;",
        ":",
        "Lcom/google/android/gms/internal/ads/aea;",
        ":",
        "Lcom/google/android/gms/internal/ads/aec;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;

.field private final b:Lcom/google/android/gms/internal/ads/ads;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ads;Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/adt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ado;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    .line 5
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/ado;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/act;",
            ")",
            "Lcom/google/android/gms/internal/ads/ado",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ado;

    new-instance v1, Lcom/google/android/gms/internal/ads/adr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/adr;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ado;-><init>(Lcom/google/android/gms/internal/ads/ads;Lcom/google/android/gms/internal/ads/adt;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ado;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    const-string/jumbo v0, "Click string is empty, not proceeding."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, ""

    .line 27
    :goto_0
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    check-cast v0, Lcom/google/android/gms/internal/ads/aea;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aea;->y()Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    const-string/jumbo v0, "Signal utils is empty, ignoring."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, ""

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    const-string/jumbo v0, "Signals object is empty, ignoring."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, ""

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    .line 23
    const-string/jumbo v0, "Context is null, ignoring."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, ""

    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ads;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    check-cast v0, Lcom/google/android/gms/internal/ads/aec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aec;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ado;->b:Lcom/google/android/gms/internal/ads/ads;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ads;->f()Landroid/app/Activity;

    move-result-object v3

    .line 27
    invoke-interface {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "URL is empty, ignoring message"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/adq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/adq;-><init>(Lcom/google/android/gms/internal/ads/ado;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

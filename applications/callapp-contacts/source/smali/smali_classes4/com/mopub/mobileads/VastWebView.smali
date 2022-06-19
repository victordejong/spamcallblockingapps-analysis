.class public Lcom/mopub/mobileads/VastWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastWebView$b;,
        Lcom/mopub/mobileads/VastWebView$a;
    }
.end annotation


# instance fields
.field c:Lcom/mopub/mobileads/VastWebView$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1052
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 1053
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollbarOverlay(Z)V

    .line 1055
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1056
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setScrollBarStyle(I)V

    .line 34
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setBackgroundColor(I)V

    .line 37
    new-instance p1, Lcom/mopub/mobileads/VastWebView$b;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VastWebView$b;-><init>(Lcom/mopub/mobileads/VastWebView;)V

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setId(I)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/mopub/mobileads/VastWebView;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastWebView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastResource;->initializeWebView(Lcom/mopub/mobileads/VastWebView;)V

    return-object v0
.end method

.class final Lcom/mopub/mobileads/VastWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastWebView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastWebView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Lcom/mopub/mobileads/VastWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-boolean p1, p0, Lcom/mopub/mobileads/VastWebView$b;->b:Z

    if-nez p1, :cond_1

    return v0

    .line 94
    :cond_1
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastWebView$b;->b:Z

    .line 95
    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->c:Lcom/mopub/mobileads/VastWebView$a;

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->c:Lcom/mopub/mobileads/VastWebView$a;

    invoke-interface {p1}, Lcom/mopub/mobileads/VastWebView$a;->onVastWebViewClick()V

    goto :goto_0

    .line 88
    :cond_2
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastWebView$b;->b:Z

    :cond_3
    :goto_0
    return v0
.end method

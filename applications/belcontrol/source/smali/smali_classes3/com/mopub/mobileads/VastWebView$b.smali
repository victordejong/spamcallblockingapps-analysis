.class public Lcom/mopub/mobileads/VastWebView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/mopub/mobileads/VastWebView;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView$b;->b:Lcom/mopub/mobileads/VastWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Z

    if-nez p1, :cond_1

    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Z

    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$b;->b:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->f:Lcom/mopub/mobileads/VastWebView$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/mopub/mobileads/VastWebView$a;->onVastWebViewClick()V

    goto :goto_0

    :cond_2
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastWebView$b;->a:Z

    :cond_3
    :goto_0
    return v0
.end method

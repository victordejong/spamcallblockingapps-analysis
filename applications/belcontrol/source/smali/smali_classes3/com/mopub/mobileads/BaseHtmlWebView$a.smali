.class public Lcom/mopub/mobileads/BaseHtmlWebView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/BaseHtmlWebView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/BaseHtmlWebView;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/BaseHtmlWebView$a;->a:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/mopub/mobileads/BaseHtmlWebView$a;->a:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-static {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->h(Lcom/mopub/mobileads/BaseHtmlWebView;)Lcom/mopub/mobileads/ViewGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

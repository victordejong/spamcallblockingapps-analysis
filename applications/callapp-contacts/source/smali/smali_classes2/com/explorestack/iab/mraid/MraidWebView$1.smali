.class final Lcom/explorestack/iab/mraid/MraidWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidWebView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidWebView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidWebView$1;->a:Lcom/explorestack/iab/mraid/MraidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidWebView$1;->a:Lcom/explorestack/iab/mraid/MraidWebView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidWebView;->a(Lcom/explorestack/iab/mraid/MraidWebView;)Lcom/explorestack/iab/mraid/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/explorestack/iab/mraid/k;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

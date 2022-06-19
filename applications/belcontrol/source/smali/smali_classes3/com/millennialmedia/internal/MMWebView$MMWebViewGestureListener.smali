.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewGestureListener"
.end annotation


# instance fields
.field public webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    const/4 p1, 0x1

    return p1
.end method

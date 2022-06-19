.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewOptions"
.end annotation


# instance fields
.field public final enableEnhancedAdControl:Z

.field public final enableMoat:Z

.field public final interstitial:Z

.field public final transparent:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->interstitial:Z

    iput-boolean p2, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->transparent:Z

    iput-boolean p3, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableMoat:Z

    iput-boolean p4, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableEnhancedAdControl:Z

    return-void
.end method

.method public static getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    return-object v0
.end method

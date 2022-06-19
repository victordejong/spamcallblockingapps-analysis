.class public Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/CustomEventBanner$CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEventBannerListenerImpl"
.end annotation


# instance fields
.field private containerLayout:Landroid/widget/RelativeLayout;

.field private inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->containerLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onClicked()V

    return-void
.end method

.method public onCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onCollapsed()V

    return-void
.end method

.method public onExpanded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onExpanded()V

    return-void
.end method

.method public onRequestFailed(Lcom/millennialmedia/mediation/ErrorCode;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    return-void
.end method

.method public onRequestSucceeded(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->containerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$CustomEventBannerListenerImpl;->inlineAdapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displaySucceeded()V

    return-void
.end method

.class public Lnet/pubnative/lite/sdk/vpaid/VideoAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;
    }
.end annotation


# instance fields
.field private mVisibilityListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 45
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->mVisibilityListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 46
    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 31
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->mVisibilityListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1, p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setVisibilityListener(Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->mVisibilityListener:Lnet/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener;

    :cond_0
    return-void
.end method

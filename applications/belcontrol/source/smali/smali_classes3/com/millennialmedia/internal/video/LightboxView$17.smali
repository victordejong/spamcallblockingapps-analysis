.class public Lcom/millennialmedia/internal/video/LightboxView$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->createMMWebViewListener(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public final synthetic val$lightboxListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$17;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$17;->val$lightboxListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$17;->val$lightboxListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$17;->val$lightboxListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onClicked()V

    return-void
.end method

.method public onFailed()V
    .locals 0

    return-void
.end method

.method public onLoaded()V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 0

    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0

    return-void
.end method

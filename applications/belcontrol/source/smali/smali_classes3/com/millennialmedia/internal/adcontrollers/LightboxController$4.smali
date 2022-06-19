.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->createMMWebViewListener(Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field public final synthetic val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

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

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onClicked()V

    return-void
.end method

.method public onFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initFailed()V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initSucceeded()V

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

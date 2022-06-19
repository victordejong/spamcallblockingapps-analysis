.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->close()V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onAdLeftApplication()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onClick()V

    return-void
.end method

.method public onFailed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    return-void
.end method

.method public onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initSucceeded()V

    return-void
.end method

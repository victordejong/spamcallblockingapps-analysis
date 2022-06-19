.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;->release()V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$602(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

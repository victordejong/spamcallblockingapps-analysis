.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->onPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$300(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attaching Lightbox in onPrepared."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$400(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)V

    :cond_1
    return-void
.end method

.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field public final synthetic val$adContent:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$adContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$adContent:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$000(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST content did not produce a valid InLineAd instance."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->impressions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WrapperAd must contain at least one Impression URL."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->isVPAID(Lcom/millennialmedia/internal/video/VASTParser$InLineAd;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVPAIDWebView(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVASTVideoView(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST XML I/O error."

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VAST XML Parsing error."

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    :goto_1
    return-void
.end method

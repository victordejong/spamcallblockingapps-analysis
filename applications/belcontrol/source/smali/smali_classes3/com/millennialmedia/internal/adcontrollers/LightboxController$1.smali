.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$100(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$002(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    new-instance v1, Lcom/millennialmedia/internal/MMWebView;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v4}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$500(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$700(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$602(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$600(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$100(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$600(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$800(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/video/LightboxView;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

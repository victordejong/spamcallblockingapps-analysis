.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->createVPAIDWebView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/millennialmedia/internal/video/VPAIDWebView;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/millennialmedia/internal/video/VPAIDWebView;-><init>(Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    const-string v1, "mmVpaidWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$602(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$700(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VPAIDWebView;->setVastDocuments(Ljava/util/List;)V

    return-void
.end method

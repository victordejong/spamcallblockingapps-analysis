.class public Lcom/millennialmedia/internal/adcontrollers/WebController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->init(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field public final synthetic val$adContent:Ljava/lang/String;

.field public final synthetic val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iput-object p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$options:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerOptions;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$002(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    return-void
.end method

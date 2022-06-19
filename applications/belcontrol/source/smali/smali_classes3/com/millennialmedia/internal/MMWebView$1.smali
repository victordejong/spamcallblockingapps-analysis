.class public Lcom/millennialmedia/internal/MMWebView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;

.field public final synthetic val$contentUrl:Ljava/lang/String;

.field public final synthetic val$injectedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$1;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$contentUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$injectedContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$1;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$contentUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$injectedContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, "mmadsdk"

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/MMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

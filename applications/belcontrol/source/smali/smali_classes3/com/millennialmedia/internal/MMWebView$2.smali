.class public Lcom/millennialmedia/internal/MMWebView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->access$400(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    return-void
.end method

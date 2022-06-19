.class public Lcom/millennialmedia/InlineAd$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/InlineAd$5;

.field public final synthetic val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd$5;Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$5$1;->this$1:Lcom/millennialmedia/InlineAd$5;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$5$1;->val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5$1;->val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$5$1;->this$1:Lcom/millennialmedia/InlineAd$5;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/InlineAd$InlineListener;->onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5$1;->this$1:Lcom/millennialmedia/InlineAd$5;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3800(Lcom/millennialmedia/InlineAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$5$1;->this$1:Lcom/millennialmedia/InlineAd$5;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$5;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3900(Lcom/millennialmedia/InlineAd;)V

    :cond_0
    return-void
.end method

.class public Lcom/millennialmedia/InlineAd$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd;->onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/InlineAd;

.field public final synthetic val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$6;->this$0:Lcom/millennialmedia/InlineAd;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$6;->val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->val$localInlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$6;->this$0:Lcom/millennialmedia/InlineAd;

    new-instance v2, Lcom/millennialmedia/InlineAd$InlineErrorStatus;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/millennialmedia/InlineAd$InlineErrorStatus;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/InlineAd$InlineListener;->onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3800(Lcom/millennialmedia/InlineAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$6;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$3900(Lcom/millennialmedia/InlineAd;)V

    :cond_0
    return-void
.end method

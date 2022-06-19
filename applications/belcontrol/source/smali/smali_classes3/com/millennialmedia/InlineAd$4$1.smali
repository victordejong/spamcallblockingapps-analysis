.class public Lcom/millennialmedia/InlineAd$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$4;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/InlineAd$4;

.field public final synthetic val$adContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/InlineAd$4;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$4$1;->val$adContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->val$adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->val$adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$2202(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$2300(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidth(Lcom/millennialmedia/InlineAd;)I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2300(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeight(Lcom/millennialmedia/InlineAd;)I

    move-result v1

    new-instance v2, Lcom/millennialmedia/InlineAd$AdSize;

    invoke-direct {v2, v0, v1}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$2400(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$2200(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->display(Landroid/widget/RelativeLayout;Lcom/millennialmedia/InlineAd$AdSize;)V

    return-void
.end method

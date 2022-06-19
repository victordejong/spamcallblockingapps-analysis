.class final Lio/bidmachine/ads/networks/vast/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/vast/b;->onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/vast/b;

.field final synthetic val$iabClickCallback:Lcom/explorestack/iab/utils/c;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/vast/b;Lcom/explorestack/iab/utils/c;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/b$1;->this$0:Lio/bidmachine/ads/networks/vast/b;

    iput-object p2, p0, Lio/bidmachine/ads/networks/vast/b$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/b$1;->val$iabClickCallback:Lcom/explorestack/iab/utils/c;

    invoke-interface {v0}, Lcom/explorestack/iab/utils/c;->clickHandled()V

    return-void
.end method

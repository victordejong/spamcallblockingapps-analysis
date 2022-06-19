.class final Lio/bidmachine/ViewAdObject$a;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ViewAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lio/bidmachine/ViewAdObject$a;->this$0:Lio/bidmachine/ViewAdObject;

    .line 151
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method


# virtual methods
.method public final onAdLoaded(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$a;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-static {v0}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$a;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-static {v0}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$a;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-static {v0, p1}, Lio/bidmachine/ViewAdObject;->access$002(Lio/bidmachine/ViewAdObject;Landroid/view/View;)Landroid/view/View;

    .line 160
    iget-object p1, p0, Lio/bidmachine/ViewAdObject$a;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    return-void
.end method

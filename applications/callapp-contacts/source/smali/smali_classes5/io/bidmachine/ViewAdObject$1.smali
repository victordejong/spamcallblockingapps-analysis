.class final Lio/bidmachine/ViewAdObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ViewAdObject;->show(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ViewAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewShown()V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processShown()V

    return-void
.end method

.method public final onViewTrackingFinished()V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$1;->this$0:Lio/bidmachine/ViewAdObject;

    invoke-virtual {v0}, Lio/bidmachine/ViewAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processImpression()V

    return-void
.end method

.class Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->scheduleVisibilityCheck()V

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$1;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;->clear()V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

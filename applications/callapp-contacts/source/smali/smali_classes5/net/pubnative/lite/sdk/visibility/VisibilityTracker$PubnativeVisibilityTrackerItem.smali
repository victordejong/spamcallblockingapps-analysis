.class public Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PubnativeVisibilityTrackerItem"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mMinVisibilityPercent:D

.field public mTrackingView:Landroid/view/View;

.field final synthetic this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;


# direct methods
.method protected constructor <init>(Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->this$0:Lnet/pubnative/lite/sdk/visibility/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-class p1, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 181
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnet/pubnative/lite/sdk/visibility/VisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

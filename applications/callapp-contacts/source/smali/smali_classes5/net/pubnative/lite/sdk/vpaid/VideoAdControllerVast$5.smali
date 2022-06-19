.class Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;
.super Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->createTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;JJZI)V
    .locals 6

    .line 154
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    iput p7, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->val$duration:I

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lnet/pubnative/lite/sdk/vpaid/helpers/TimerWithPause;-><init>(JJZ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 157
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$400(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    move-result-object v0

    long-to-int p2, p1

    iget p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->val$duration:I

    invoke-virtual {v0, p2, p1}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->setProgress(II)V

    .line 158
    iget p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->val$duration:I

    sub-int/2addr p1, p2

    .line 160
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$900(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)I

    move-result p2

    if-ltz p2, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$900(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)I

    move-result p2

    if-le p1, p2, :cond_1

    .line 161
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->isRewarded()Z

    move-result p2

    if-nez p2, :cond_0

    .line 162
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$400(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;

    move-result-object p2

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/vpaid/vast/ViewControllerVast;->showSkipButton()V

    .line 164
    :cond_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$902(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;I)I

    .line 167
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$1000(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;

    .line 169
    iget v2, v1, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->timeMillis:I

    if-le p1, v2, :cond_2

    .line 170
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$300(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->post(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    iget-object v3, v1, Lnet/pubnative/lite/sdk/vpaid/models/vpaid/TrackingEvent;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$1100(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;Ljava/lang/String;)V

    .line 172
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_3
    iget-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;->access$1000(Lnet/pubnative/lite/sdk/vpaid/VideoAdControllerVast;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

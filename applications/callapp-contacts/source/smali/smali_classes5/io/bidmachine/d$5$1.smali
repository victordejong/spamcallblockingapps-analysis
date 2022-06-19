.class final Lio/bidmachine/d$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/d$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$Callback<",
        "Lio/bidmachine/protobuf/InitResponse;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/d$5;


# direct methods
.method constructor <init>(Lio/bidmachine/d$5;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lio/bidmachine/utils/BMError;)V
    .locals 6

    .line 231
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/d;->currentInitRequest:Lio/bidmachine/ApiRequest;

    .line 232
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {v0}, Lio/bidmachine/d;->access$500(Lio/bidmachine/d;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 233
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {}, Lio/bidmachine/d;->access$900()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/bidmachine/d;->access$502(Lio/bidmachine/d;J)J

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {v2}, Lio/bidmachine/d;->access$500(Lio/bidmachine/d;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    invoke-static {v0, v2, v3}, Lio/bidmachine/d;->access$502(Lio/bidmachine/d;J)J

    .line 236
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {v0}, Lio/bidmachine/d;->access$500(Lio/bidmachine/d;)J

    move-result-wide v2

    invoke-static {}, Lio/bidmachine/d;->access$1000()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 237
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {}, Lio/bidmachine/d;->access$1000()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/bidmachine/d;->access$502(Lio/bidmachine/d;J)J

    .line 240
    :cond_1
    :goto_0
    invoke-static {}, Lio/bidmachine/f;->isNetworksInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v2}, Lio/bidmachine/d;->access$1100(Lio/bidmachine/d;Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v3, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v3, v3, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    .line 244
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object v0

    .line 243
    invoke-static {v2, v3, v0}, Lio/bidmachine/d;->access$400(Lio/bidmachine/d;Landroid/content/Context;Ljava/util/List;)V

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reschedule init request ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {v2}, Lio/bidmachine/d;->access$500(Lio/bidmachine/d;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {v0}, Lio/bidmachine/d;->access$600(Lio/bidmachine/d;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    .line 249
    invoke-static {v2}, Lio/bidmachine/d;->access$500(Lio/bidmachine/d;)J

    move-result-wide v2

    .line 248
    invoke-static {v0, v2, v3}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    .line 251
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-static {v0, v2}, Lio/bidmachine/d;->access$700(Lio/bidmachine/d;Lio/bidmachine/InitializationCallback;)V

    .line 252
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    .line 253
    invoke-static {v0}, Lio/bidmachine/d;->access$800(Lio/bidmachine/d;)Lio/bidmachine/TrackingObject;

    move-result-object v0

    sget-object v2, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 252
    invoke-static {v0, v2, v1, p1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lio/bidmachine/utils/BMError;

    invoke-virtual {p0, p1}, Lio/bidmachine/d$5$1;->onFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onSuccess(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 4

    .line 213
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/d;->currentInitRequest:Lio/bidmachine/ApiRequest;

    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lio/bidmachine/d;->access$200(Lio/bidmachine/d;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    .line 216
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lio/bidmachine/d;->access$300(Lio/bidmachine/d;Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    .line 218
    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v2, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v2, v2, Lio/bidmachine/d$5;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lio/bidmachine/d;->access$400(Lio/bidmachine/d;Landroid/content/Context;Ljava/util/List;)V

    .line 220
    :cond_0
    iget-object p1, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object p1, p1, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lio/bidmachine/d;->access$502(Lio/bidmachine/d;J)J

    .line 221
    iget-object p1, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object p1, p1, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {p1}, Lio/bidmachine/d;->access$600(Lio/bidmachine/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    .line 222
    iget-object p1, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object p1, p1, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    iget-object v0, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object v0, v0, Lio/bidmachine/d$5;->val$callback:Lio/bidmachine/InitializationCallback;

    invoke-static {p1, v0}, Lio/bidmachine/d;->access$700(Lio/bidmachine/d;Lio/bidmachine/InitializationCallback;)V

    .line 223
    iget-object p1, p0, Lio/bidmachine/d$5$1;->this$1:Lio/bidmachine/d$5;

    iget-object p1, p1, Lio/bidmachine/d$5;->this$0:Lio/bidmachine/d;

    invoke-static {p1}, Lio/bidmachine/d;->access$800(Lio/bidmachine/d;)Lio/bidmachine/TrackingObject;

    move-result-object p1

    sget-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    invoke-static {p1, v0, v1, v1}, Lio/bidmachine/BidMachineEvents;->eventFinish(Lio/bidmachine/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    invoke-virtual {p0, p1}, Lio/bidmachine/d$5$1;->onSuccess(Lio/bidmachine/protobuf/InitResponse;)V

    return-void
.end method

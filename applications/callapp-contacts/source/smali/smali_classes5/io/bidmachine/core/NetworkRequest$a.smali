.class final Lio/bidmachine/core/NetworkRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/core/NetworkRequest;


# direct methods
.method private constructor <init>(Lio/bidmachine/core/NetworkRequest;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$1;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lio/bidmachine/core/NetworkRequest$a;-><init>(Lio/bidmachine/core/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$100(Lio/bidmachine/core/NetworkRequest;)V

    .line 504
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-virtual {v0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;

    move-result-object v0

    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$a;->this$0:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$Callback;->onFail(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.class final Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;-><init>(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;


# direct methods
.method constructor <init>(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->REPORTING:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    invoke-static {v0, v1}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->access$setState$p(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;Lcom/sinch/verification/core/verification/interceptor/InterceptorState;)V

    .line 35
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-virtual {v0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getShouldInterceptorStopWhenTimedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-virtual {v0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->stop()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-virtual {v0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getInterceptionListener()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    move-result-object v0

    new-instance v1, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException;

    invoke-direct {v1}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionTimeoutException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;->onCodeInterceptionError(Ljava/lang/Throwable;)V

    .line 39
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-virtual {v0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->onInterceptorTimedOut()V

    return-void
.end method

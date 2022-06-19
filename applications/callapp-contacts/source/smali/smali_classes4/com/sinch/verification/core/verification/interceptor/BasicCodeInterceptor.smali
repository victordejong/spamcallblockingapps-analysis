.class public abstract Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020)H&J\u0008\u0010+\u001a\u00020)H&J\u0008\u0010,\u001a\u00020)H&J\u0006\u0010-\u001a\u00020)J\u0006\u0010.\u001a\u00020)R\u0014\u0010\t\u001a\u00020\nX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R+\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00038V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001dX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u001aX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001bR\u001e\u0010%\u001a\u00020$2\u0006\u0010\u0011\u001a\u00020$@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;",
        "timeoutInitial",
        "",
        "interceptionListener",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V",
        "cancelHandler",
        "Landroid/os/Handler;",
        "getCancelHandler",
        "()Landroid/os/Handler;",
        "delayedStopRunnable",
        "Ljava/lang/Runnable;",
        "getInterceptionListener",
        "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "<set-?>",
        "interceptionTimeout",
        "getInterceptionTimeout",
        "()J",
        "setInterceptionTimeout",
        "(J)V",
        "interceptionTimeout$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "isPastInterceptionTimeout",
        "",
        "()Z",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "getLogger",
        "()Lcom/sinch/logging/Logger;",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "shouldInterceptorStopWhenTimedOut",
        "getShouldInterceptorStopWhenTimedOut",
        "Lcom/sinch/verification/core/verification/interceptor/InterceptorState;",
        "state",
        "getState",
        "()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;",
        "initializeCancelHandler",
        "",
        "onInterceptorStarted",
        "onInterceptorStopped",
        "onInterceptorTimedOut",
        "start",
        "stop",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final cancelHandler:Landroid/os/Handler;

.field private final delayedStopRunnable:Ljava/lang/Runnable;

.field private final interceptionListener:Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

.field private final interceptionTimeout$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final logger:Lcom/sinch/logging/Logger;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field private final shouldInterceptorStopWhenTimedOut:Z

.field private state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/w;

    const-class v2, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    const-string v3, "interceptionTimeout"

    const-string v4, "getInterceptionTimeout()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/w;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/v;)Lkotlin/reflect/g;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
    .locals 1

    const-string v0, "interceptionListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->interceptionListener:Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    iput-object p4, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    .line 17
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->cancelHandler:Landroid/os/Handler;

    .line 18
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p3

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    .line 20
    sget-object p3, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->IDLE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->shouldInterceptorStopWhenTimedOut:Z

    .line 33
    new-instance p3, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;

    invoke-direct {p3, p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$delayedStopRunnable$1;-><init>(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V

    check-cast p3, Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    .line 42
    sget-object p3, Lkotlin/properties/a;->a:Lkotlin/properties/a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;

    invoke-direct {p2, p1, p1, p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 85
    iput-object p2, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->interceptionTimeout$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getState$p(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)Lcom/sinch/verification/core/verification/interceptor/InterceptorState;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    return-object p0
.end method

.method public static final synthetic access$initializeCancelHandler(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->initializeCancelHandler()V

    return-void
.end method

.method public static final synthetic access$setState$p(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;Lcom/sinch/verification/core/verification/interceptor/InterceptorState;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    return-void
.end method

.method private final initializeCancelHandler()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->DONE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel handler initialized with timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getInterceptionTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->cancelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->cancelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getInterceptionTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getCancelHandler()Landroid/os/Handler;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->cancelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInterceptionListener()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->interceptionListener:Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    return-object v0
.end method

.method public getInterceptionTimeout()J
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->interceptionTimeout$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getLogger()Lcom/sinch/logging/Logger;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    return-object v0
.end method

.method public final getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public getShouldInterceptorStopWhenTimedOut()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->shouldInterceptorStopWhenTimedOut:Z

    return v0
.end method

.method public final getState()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    return-object v0
.end method

.method public final isPastInterceptionTimeout()Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->REPORTING:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->DONE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onInterceptorStarted()V
.end method

.method public abstract onInterceptorStopped()V
.end method

.method public abstract onInterceptorTimedOut()V
.end method

.method public setInterceptionTimeout(J)V
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->interceptionTimeout$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final start()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->IDLE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    const-string v1, "Code interceptor started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->STARTED:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    iput-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    .line 52
    invoke-direct {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->initializeCancelHandler()V

    .line 53
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->onInterceptorStarted()V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    const-string v1, "Interceptor already started"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final stop()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    sget-object v1, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->DONE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    const-string v1, "Code interceptor stopped"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->DONE:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    iput-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->state:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    .line 63
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->cancelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->onInterceptorStopped()V

    .line 65
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getInterceptionListener()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;->onCodeInterceptionStopped()V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->logger:Lcom/sinch/logging/Logger;

    const-string v1, "Interceptor already stopped"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

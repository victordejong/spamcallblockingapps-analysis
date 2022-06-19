.class public final Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;
.super Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;
.implements Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020.2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0002J\u0008\u00104\u001a\u00020.H\u0016J\u0010\u00105\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0016J\u0008\u00106\u001a\u00020.H\u0016J\u0008\u00107\u001a\u00020.H\u0016J\u0008\u00108\u001a\u00020.H\u0016R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0017\u001a\u0004\u0008!\u0010\"R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u0017\u001a\u0004\u0008*\u0010+\u00a8\u00069"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;",
        "Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;",
        "Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;",
        "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;",
        "context",
        "Landroid/content/Context;",
        "flashCallPatternMatcher",
        "Lcom/sinch/verification/core/internal/pattern/PatternMatcher;",
        "callHistoryReader",
        "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;",
        "callHistoryStartDate",
        "Ljava/util/Date;",
        "reportTimeout",
        "",
        "interceptionTimeout",
        "interceptionListener",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;",
        "(Landroid/content/Context;Lcom/sinch/verification/core/internal/pattern/PatternMatcher;Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;Ljava/util/Date;JJLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;)V",
        "callHistoryContentObserver",
        "Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;",
        "getCallHistoryContentObserver",
        "()Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;",
        "callHistoryContentObserver$delegate",
        "Lkotlin/Lazy;",
        "<set-?>",
        "Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;",
        "codeInterceptionState",
        "getCodeInterceptionState",
        "()Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;",
        "delayedStopRunnable",
        "Ljava/lang/Runnable;",
        "flashCallStateListener",
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;",
        "getFlashCallStateListener",
        "()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;",
        "flashCallStateListener$delegate",
        "shouldInterceptorStopWhenTimedOut",
        "",
        "getShouldInterceptorStopWhenTimedOut",
        "()Z",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "getTelephonyManager",
        "()Landroid/telephony/TelephonyManager;",
        "telephonyManager$delegate",
        "checkCallLog",
        "",
        "codeIntercepted",
        "number",
        "",
        "sourceType",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "onCallHistoryChanged",
        "onIncomingCallRinging",
        "onInterceptorStarted",
        "onInterceptorStopped",
        "onInterceptorTimedOut",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final callHistoryContentObserver$delegate:Lkotlin/Lazy;

.field private final callHistoryReader:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;

.field private callHistoryStartDate:Ljava/util/Date;

.field private codeInterceptionState:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

.field private final context:Landroid/content/Context;

.field private final delayedStopRunnable:Ljava/lang/Runnable;

.field private final flashCallPatternMatcher:Lcom/sinch/verification/core/internal/pattern/PatternMatcher;

.field private final flashCallStateListener$delegate:Lkotlin/Lazy;

.field private final reportTimeout:J

.field private final telephonyManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sinch/verification/core/internal/pattern/PatternMatcher;Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;Ljava/util/Date;JJLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashCallPatternMatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryReader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callHistoryStartDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptionListener"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    .line 42
    invoke-direct {p0, p7, p8, p9, v0}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;-><init>(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->flashCallPatternMatcher:Lcom/sinch/verification/core/internal/pattern/PatternMatcher;

    iput-object p3, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryReader:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;

    iput-object p4, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryStartDate:Ljava/util/Date;

    iput-wide p5, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->reportTimeout:J

    cmp-long p1, p7, p5

    if-gtz p1, :cond_0

    .line 55
    new-instance p1, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$telephonyManager$2;

    invoke-direct {p1, p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$telephonyManager$2;-><init>(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->telephonyManager$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;

    invoke-direct {p1, p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;-><init>(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->flashCallStateListener$delegate:Lkotlin/Lazy;

    .line 63
    new-instance p1, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$callHistoryContentObserver$2;

    invoke-direct {p1, p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$callHistoryContentObserver$2;-><init>(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryContentObserver$delegate:Lkotlin/Lazy;

    .line 67
    new-instance p1, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$delayedStopRunnable$1;

    invoke-direct {p1, p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$delayedStopRunnable$1;-><init>(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    .line 74
    sget-object p1, Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;->NONE:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->codeInterceptionState:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    return-void

    .line 51
    :cond_0
    new-instance p1, Lcom/sinch/verification/core/internal/error/CodeInterceptionException;

    const-string p2, "Interception timeout cannot be greater then report timeout"

    invoke-direct {p1, p2}, Lcom/sinch/verification/core/internal/error/CodeInterceptionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic access$getContext$p(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final checkCallLog()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 107
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getLogger()Lcom/sinch/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking call history since "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryStartDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryStartDate:Ljava/util/Date;

    .line 109
    iget-object v2, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryReader:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;

    invoke-interface {v2, v0, v1}, Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;->readIncomingCalls(J)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->flashCallPatternMatcher:Lcom/sinch/verification/core/internal/pattern/PatternMatcher;

    invoke-virtual {v3, v2}, Lcom/sinch/verification/core/internal/pattern/PatternMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v1

    .line 127
    :cond_1
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 112
    sget-object v0, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->LOG:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-direct {p0, v4, v0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->codeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V

    :cond_2
    return-void
.end method

.method private final codeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->isPastInterceptionTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;->LATE:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;->NORMAL:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    :goto_0
    iput-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->codeInterceptionState:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    .line 119
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->isPastInterceptionTimeout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getInterceptionListener()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;->onCodeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->stop()V

    return-void
.end method

.method private final getCallHistoryContentObserver()Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->callHistoryContentObserver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;

    return-object v0
.end method

.method private final getFlashCallStateListener()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->flashCallStateListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;

    return-object v0
.end method

.method private final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->telephonyManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public final getCodeInterceptionState()Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->codeInterceptionState:Lcom/sinch/verification/flashcall/verification/interceptor/CodeInterceptionState;

    return-object v0
.end method

.method public final getShouldInterceptorStopWhenTimedOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCallHistoryChanged()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->checkCallLog()V

    return-void
.end method

.method public final onIncomingCallRinging(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->flashCallPatternMatcher:Lcom/sinch/verification/core/internal/pattern/PatternMatcher;

    invoke-virtual {v0, p1}, Lcom/sinch/verification/core/internal/pattern/PatternMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->INTERCEPTION:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-direct {p0, p1, v0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->codeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V

    :cond_0
    return-void
.end method

.method public final onInterceptorStarted()V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getFlashCallStateListener()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 79
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCallHistoryContentObserver()Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;->registerOn(Landroid/content/ContentResolver;)V

    .line 80
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->checkCallLog()V

    return-void
.end method

.method public final onInterceptorStopped()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCancelHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getFlashCallStateListener()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    invoke-direct {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCallHistoryContentObserver()Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;->unregisterFrom(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public final onInterceptorTimedOut()V
    .locals 6

    .line 90
    iget-wide v0, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->reportTimeout:J

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getInterceptionTimeout()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 91
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getLogger()Lcom/sinch/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onInterceptorTimedOut, still reporting calls for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lcom/sinch/logging/Logger$DefaultImpls;->debug$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->getCancelHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

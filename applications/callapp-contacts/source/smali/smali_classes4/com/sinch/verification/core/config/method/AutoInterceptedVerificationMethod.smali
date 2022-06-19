.class public abstract Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;
.super Lcom/sinch/verification/core/config/method/VerificationMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Service:",
        "Ljava/lang/Object;",
        "Interceptor::",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;",
        ">",
        "Lcom/sinch/verification/core/config/method/VerificationMethod<",
        "TService;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u001d\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\n\u001a\u0004\u0018\u00018\u0001X\u00a4\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;",
        "Service",
        "Interceptor",
        "Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;",
        "Lcom/sinch/verification/core/config/method/VerificationMethod;",
        "verificationServiceConfig",
        "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;",
        "verificationListener",
        "Lcom/sinch/verification/core/verification/response/VerificationListener;",
        "(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V",
        "codeInterceptor",
        "getCodeInterceptor",
        "()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;",
        "setCodeInterceptor",
        "(Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;)V",
        "stop",
        "",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/config/method/VerificationMethodConfig<",
            "TService;>;",
            "Lcom/sinch/verification/core/verification/response/VerificationListener;",
            ")V"
        }
    .end annotation

    const-string v0, "verificationServiceConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/config/method/VerificationMethod;-><init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 15
    new-instance p2, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;

    invoke-direct {p2}, Lcom/sinch/verification/core/verification/response/EmptyVerificationListener;-><init>()V

    check-cast p2, Lcom/sinch/verification/core/verification/response/VerificationListener;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;-><init>(Lcom/sinch/verification/core/config/method/VerificationMethodConfig;Lcom/sinch/verification/core/verification/response/VerificationListener;)V

    return-void
.end method


# virtual methods
.method protected abstract getCodeInterceptor()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TInterceptor;"
        }
    .end annotation
.end method

.method protected abstract setCodeInterceptor(Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInterceptor;)V"
        }
    .end annotation
.end method

.method public stop()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/sinch/verification/core/config/method/VerificationMethod;->stop()V

    .line 22
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/AutoInterceptedVerificationMethod;->getCodeInterceptor()Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptor;->stop()V

    :cond_0
    return-void
.end method

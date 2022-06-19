.class public final Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static synthetic onCodeIntercepted$default(Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    sget-object p2, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->INTERCEPTION:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;->onCodeIntercepted(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onCodeIntercepted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

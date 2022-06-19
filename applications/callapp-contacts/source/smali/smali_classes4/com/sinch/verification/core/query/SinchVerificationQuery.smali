.class public final Lcom/sinch/verification/core/query/SinchVerificationQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/query/VerificationQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0017\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sinch/verification/core/query/SinchVerificationQuery;",
        "Lcom/sinch/verification/core/query/VerificationQuery;",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "(Lcom/sinch/verification/core/config/general/GlobalConfig;)V",
        "verificationQueryService",
        "Lcom/sinch/verification/core/query/VerificationQueryService;",
        "getVerificationQueryService",
        "()Lcom/sinch/verification/core/query/VerificationQueryService;",
        "verificationQueryService$delegate",
        "Lkotlin/Lazy;",
        "queryByEndpoint",
        "",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "number",
        "",
        "callback",
        "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;",
        "queryById",
        "id",
        "queryByReference",
        "reference",
        "enqueueVerificationInfo",
        "Lretrofit2/Call;",
        "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
        "Companion",
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
.field public static final Companion:Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;


# instance fields
.field private final globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

.field private final verificationQueryService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->Companion:Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/sinch/verification/core/config/general/GlobalConfig;)V
    .locals 1

    const-string v0, "globalConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    .line 17
    new-instance p1, Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;

    invoke-direct {p1, p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;-><init>(Lcom/sinch/verification/core/query/SinchVerificationQuery;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->verificationQueryService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getGlobalConfig$p(Lcom/sinch/verification/core/query/SinchVerificationQuery;)Lcom/sinch/verification/core/config/general/GlobalConfig;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    return-object p0
.end method

.method private final enqueueVerificationInfo(Lretrofit2/Call;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
            ">;",
            "Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;",
            ")V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;

    invoke-direct {v1, p2}, Lcom/sinch/verification/core/query/callback/VerificationInfoApiCallback;-><init>(Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V

    check-cast v1, Lcom/sinch/verification/core/internal/utils/ApiCallback;

    .line 38
    invoke-static {p1, v0, v1}, Lcom/sinch/verification/core/internal/utils/CallExtensionsKt;->enqueue(Lretrofit2/Call;Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V

    return-void
.end method

.method private final getVerificationQueryService()Lcom/sinch/verification/core/query/VerificationQueryService;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->verificationQueryService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/core/query/VerificationQueryService;

    return-object v0
.end method

.method public static final withGlobalConfig(Lcom/sinch/verification/core/config/general/GlobalConfig;)Lcom/sinch/verification/core/query/VerificationQuery;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/query/SinchVerificationQuery;->Companion:Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;

    invoke-virtual {v0, p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;->withGlobalConfig(Lcom/sinch/verification/core/config/general/GlobalConfig;)Lcom/sinch/verification/core/query/VerificationQuery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final queryByEndpoint(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->getVerificationQueryService()Lcom/sinch/verification/core/query/VerificationQueryService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sinch/verification/core/query/VerificationQueryService;->queryByEndpoint(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->enqueueVerificationInfo(Lretrofit2/Call;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V

    return-void
.end method

.method public final queryById(Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->getVerificationQueryService()Lcom/sinch/verification/core/query/VerificationQueryService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/query/VerificationQueryService;->queryById(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->enqueueVerificationInfo(Lretrofit2/Call;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V

    return-void
.end method

.method public final queryByReference(Ljava/lang/String;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V
    .locals 1

    const-string v0, "reference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->getVerificationQueryService()Lcom/sinch/verification/core/query/VerificationQueryService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sinch/verification/core/query/VerificationQueryService;->queryByReference(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->enqueueVerificationInfo(Lretrofit2/Call;Lcom/sinch/verification/core/query/callback/VerificationInfoCallback;)V

    return-void
.end method

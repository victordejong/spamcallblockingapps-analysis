.class final Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/query/SinchVerificationQuery;-><init>(Lcom/sinch/verification/core/config/general/GlobalConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/sinch/verification/core/query/VerificationQueryService;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/sinch/verification/core/query/VerificationQueryService;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sinch/verification/core/query/SinchVerificationQuery;


# direct methods
.method constructor <init>(Lcom/sinch/verification/core/query/SinchVerificationQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;->this$0:Lcom/sinch/verification/core/query/SinchVerificationQuery;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/sinch/verification/core/query/VerificationQueryService;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;->this$0:Lcom/sinch/verification/core/query/SinchVerificationQuery;

    invoke-static {v0}, Lcom/sinch/verification/core/query/SinchVerificationQuery;->access$getGlobalConfig$p(Lcom/sinch/verification/core/query/SinchVerificationQuery;)Lcom/sinch/verification/core/config/general/GlobalConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/sinch/verification/core/query/VerificationQueryService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/core/query/VerificationQueryService;

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery$verificationQueryService$2;->invoke()Lcom/sinch/verification/core/query/VerificationQueryService;

    move-result-object v0

    return-object v0
.end method

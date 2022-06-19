.class final Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/initiation/InitiationApiCallback;-><init>(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Lretrofit2/Response<",
        "TT;>;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        "data",
        "<anonymous parameter 1>",
        "Lretrofit2/Response;",
        "invoke",
        "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)Lcom/sinch/verification/core/initiation/response/InitiationResponseData;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;

    invoke-direct {v0}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;->INSTANCE:Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)Lcom/sinch/verification/core/initiation/response/InitiationResponseData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit2/Response<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    check-cast p2, Lretrofit2/Response;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/initiation/InitiationApiCallback$1;->invoke(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)Lcom/sinch/verification/core/initiation/response/InitiationResponseData;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/query/SinchVerificationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;",
        "",
        "()V",
        "withGlobalConfig",
        "Lcom/sinch/verification/core/query/VerificationQuery;",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
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
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sinch/verification/core/query/SinchVerificationQuery$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final withGlobalConfig(Lcom/sinch/verification/core/config/general/GlobalConfig;)Lcom/sinch/verification/core/query/VerificationQuery;
    .locals 1

    const-string v0, "globalConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/sinch/verification/core/query/SinchVerificationQuery;

    invoke-direct {v0, p1}, Lcom/sinch/verification/core/query/SinchVerificationQuery;-><init>(Lcom/sinch/verification/core/config/general/GlobalConfig;)V

    check-cast v0, Lcom/sinch/verification/core/query/VerificationQuery;

    return-object v0
.end method

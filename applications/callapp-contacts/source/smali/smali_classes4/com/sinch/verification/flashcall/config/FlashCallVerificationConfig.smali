.class public final Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;
.super Lcom/sinch/verification/core/config/method/VerificationMethodConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sinch/verification/core/config/method/VerificationMethodConfig<",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationService;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000cB9\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;",
        "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;",
        "Lcom/sinch/verification/flashcall/FlashCallVerificationService;",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "number",
        "",
        "honourEarlyReject",
        "",
        "custom",
        "reference",
        "(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V",
        "Builder",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "globalConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/sinch/verification/flashcall/FlashCallVerificationService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    const-string v0, "globalConfig.retrofit.cr\u2026ationService::class.java)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 35
    new-instance v0, Lcom/sinch/metadata/AndroidMetadataFactory;

    .line 36
    invoke-interface {p1}, Lcom/sinch/verification/core/config/general/GlobalConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "2.1.3"

    const-string v4, "production"

    .line 35
    invoke-direct {v0, v1, v3, v4}, Lcom/sinch/metadata/AndroidMetadataFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/sinch/verification/utils/Factory;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    move-object v8, p1

    .line 27
    invoke-direct/range {v1 .. v9}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/Object;Lcom/sinch/verification/core/config/general/GlobalConfig;Lcom/sinch/verification/utils/Factory;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    move-object v4, p7

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v5, p7

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/sinch/verification/flashcall/config/FlashCallVerificationConfig;-><init>(Lcom/sinch/verification/core/config/general/GlobalConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

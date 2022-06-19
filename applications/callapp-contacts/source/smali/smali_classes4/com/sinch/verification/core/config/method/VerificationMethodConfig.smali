.class public abstract Lcom/sinch/verification/core/config/method/VerificationMethodConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/config/method/VerificationMethodProperties;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ApiService:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u000c\u001a\u00028\u0000\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0010\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u000c\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/method/VerificationMethodConfig;",
        "ApiService",
        "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
        "number",
        "",
        "custom",
        "reference",
        "honourEarlyReject",
        "",
        "acceptedLanguages",
        "",
        "Lcom/sinch/verification/core/verification/VerificationLanguage;",
        "apiService",
        "globalConfig",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "metadataFactory",
        "Lcom/sinch/verification/utils/Factory;",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "Lcom/sinch/metadata/model/PhoneMetadataFactory;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/Object;Lcom/sinch/verification/core/config/general/GlobalConfig;Lcom/sinch/verification/utils/Factory;)V",
        "getAcceptedLanguages",
        "()Ljava/util/List;",
        "getApiService",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getCustom",
        "()Ljava/lang/String;",
        "getGlobalConfig",
        "()Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "getHonourEarlyReject",
        "()Z",
        "getMetadataFactory",
        "()Lcom/sinch/verification/utils/Factory;",
        "getNumber",
        "getReference",
        "toString",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final acceptedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final apiService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TApiService;"
        }
    .end annotation
.end field

.field private final custom:Ljava/lang/String;

.field private final globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

.field private final honourEarlyReject:Z

.field private final metadataFactory:Lcom/sinch/verification/utils/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sinch/verification/utils/Factory<",
            "Lcom/sinch/metadata/model/PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final number:Ljava/lang/String;

.field private final reference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/Object;Lcom/sinch/verification/core/config/general/GlobalConfig;Lcom/sinch/verification/utils/Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;TApiService;",
            "Lcom/sinch/verification/core/config/general/GlobalConfig;",
            "Lcom/sinch/verification/utils/Factory<",
            "Lcom/sinch/metadata/model/PhoneMetadata;",
            ">;)V"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptedLanguages"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalConfig"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->custom:Ljava/lang/String;

    iput-object p3, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->reference:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->honourEarlyReject:Z

    iput-object p5, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->acceptedLanguages:Ljava/util/List;

    iput-object p6, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->apiService:Ljava/lang/Object;

    iput-object p7, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    iput-object p8, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->metadataFactory:Lcom/sinch/verification/utils/Factory;

    return-void
.end method


# virtual methods
.method public getAcceptedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->acceptedLanguages:Ljava/util/List;

    return-object v0
.end method

.method public final getApiService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TApiService;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->apiService:Ljava/lang/Object;

    return-object v0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->custom:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlobalConfig()Lcom/sinch/verification/core/config/general/GlobalConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->globalConfig:Lcom/sinch/verification/core/config/general/GlobalConfig;

    return-object v0
.end method

.method public getHonourEarlyReject()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->honourEarlyReject:Z

    return v0
.end method

.method public final getMetadataFactory()Lcom/sinch/verification/utils/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sinch/verification/utils/Factory<",
            "Lcom/sinch/metadata/model/PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->metadataFactory:Lcom/sinch/verification/utils/Factory;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "custom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getCustom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reference: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " honourEarlyReject: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getHonourEarlyReject()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "acceptedLanguages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Lcom/sinch/verification/core/config/method/VerificationMethodConfig;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

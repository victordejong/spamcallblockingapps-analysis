.class final Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation$2;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->getServerQuotaLimitation()Lcom/callapp/common/model/json/JSONQuotaLimitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/callapp/common/model/json/QuotaLimitPOJO;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method

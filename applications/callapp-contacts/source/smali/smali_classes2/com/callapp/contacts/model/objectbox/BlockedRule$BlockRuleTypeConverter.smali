.class Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/BlockedRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockRuleTypeConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;)Ljava/lang/Integer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    iget p1, p1, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 64
    iget v4, v3, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    sget-object p1, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->startsWith:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-object p1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter;->convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object p1

    return-object p1
.end method

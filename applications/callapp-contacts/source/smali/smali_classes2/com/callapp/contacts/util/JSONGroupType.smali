.class public Lcom/callapp/contacts/util/JSONGroupType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private group:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/JSONGroupType;

    .line 28
    iget v2, p0, Lcom/callapp/contacts/util/JSONGroupType;->group:I

    iget v3, p1, Lcom/callapp/contacts/util/JSONGroupType;->group:I

    if-eq v2, v3, :cond_2

    return v1

    .line 29
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/util/JSONGroupType;->type:I

    iget p1, p1, Lcom/callapp/contacts/util/JSONGroupType;->type:I

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getGroup()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/callapp/contacts/util/JSONGroupType;->group:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/callapp/contacts/util/JSONGroupType;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 34
    iget v0, p0, Lcom/callapp/contacts/util/JSONGroupType;->group:I

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget v1, p0, Lcom/callapp/contacts/util/JSONGroupType;->type:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONGroupType{group="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/util/JSONGroupType;->group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/util/JSONGroupType;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

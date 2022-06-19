.class public Lcom/callapp/common/model/json/JSONPhoneNumber;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x40fc50763af57290L


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public static fromRawPhoneNumByRegion(Ljava/lang/String;ILjava/lang/String;)Lcom/callapp/common/model/json/JSONPhoneNumber;
    .locals 1

    .line 77
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, p2}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    new-instance p2, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {p2}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/callapp/common/model/json/JSONPhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2, p1}, Lcom/callapp/common/model/json/JSONPhoneNumber;->setType(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONPhoneNumber;

    if-nez v2, :cond_2

    return v1

    .line 59
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 60
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 61
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 64
    :cond_3
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONPhoneNumber{phoneNumber=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONPhoneNumber;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

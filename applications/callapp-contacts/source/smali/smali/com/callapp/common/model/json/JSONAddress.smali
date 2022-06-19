.class public Lcom/callapp/common/model/json/JSONAddress;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient ADDR_CUSTOM_TYPE_ID:I = 0x0

.field public static final transient ADDR_HOME_TYPE_ID:I = 0x1

.field public static final transient ADDR_OTHER_TYPE_ID:I = 0x3

.field public static final transient ADDR_WORK_TYPE_ID:I = 0x2

.field private static final serialVersionUID:J = 0x720bc0246f1d7495L


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private poBox:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/callapp/common/model/json/JSONAddress;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>(Z)V

    .line 33
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    return-void
.end method

.method private addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/callapp/common/model/json/JSONAddress;->addSeparator(Ljava/lang/StringBuilder;)V

    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addSeparator(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static compareAddresses(Lcom/callapp/common/model/json/JSONAddress;Lcom/callapp/common/model/json/JSONAddress;)Lcom/callapp/common/model/json/JSONAddress;
    .locals 5

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 227
    :cond_2
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p0

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->isFromDevice()Z

    move-result v2

    .line 233
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONAddress;->isFromDevice()Z

    move-result v3

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    const-string v2, ","

    const-string v3, " "

    .line 242
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->m(Ljava/lang/String;)I

    move-result v2

    .line 246
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->m(Ljava/lang/String;)I

    move-result v3

    .line 249
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;)Z

    move-result v0

    .line 250
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    if-lt v2, v4, :cond_6

    return-object p0

    :cond_6
    if-eqz v1, :cond_7

    if-lt v3, v4, :cond_7

    return-object p1

    :cond_7
    if-lt v2, v3, :cond_8

    return-object p0

    :cond_8
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 143
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONAddress;

    if-nez v2, :cond_2

    return v1

    .line 146
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONAddress;

    .line 147
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 151
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 155
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 158
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 161
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 162
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 165
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 168
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 169
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 172
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 175
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 176
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 179
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 182
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 183
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    if-eqz p1, :cond_e

    return v1

    .line 186
    :cond_d
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/common/model/json/JSONAddress;->addPart(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getPoBox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-direct {p0, v0}, Lcom/callapp/common/model/json/JSONAddress;->addSeparator(Ljava/lang/StringBuilder;)V

    const-string v1, "P.O "

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getPoBox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoBox()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/callapp/common/model/json/JSONAddress;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    return-void
.end method

.method public setPoBox(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/callapp/common/model/json/JSONAddress;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONAddress{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONAddress;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONAddress;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", postalCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", poBox=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->poBox:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", street=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAddress;->street:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

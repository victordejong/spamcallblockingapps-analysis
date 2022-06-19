.class public Lcom/callapp/common/model/json/JSONCHLocalPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/common/model/json/PhoneFieldType;
.implements Ljava/io/Serializable;


# static fields
.field private static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field private static final TYPE_FAX:Ljava/lang/String; = "fax"

.field private static final TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field private static final TYPE_WEBSITE:Ljava/lang/String; = "website"

.field private static final serialVersionUID:J = -0x23e938cf46953b82L


# instance fields
.field private contact_value:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private element_name:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private refuse_advertising:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
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

    if-eqz p1, :cond_d

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 99
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;

    .line 101
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 107
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 108
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->element_name:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalPhone;->element_name:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    if-nez p1, :cond_d

    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public getContact_value()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getElement_name()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->element_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRefuse_advertising()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->element_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmailType()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    const-string v1, "email"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFaxType()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    const-string v1, "fax"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMobileType()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    const-string v1, "mobile"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneType()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    const-string v1, "phone"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWebsiteType()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    const-string v1, "website"

    invoke-static {v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContact_value(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->contact_value:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->display:Ljava/lang/String;

    return-void
.end method

.method public setElement_name(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->element_name:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->label:Ljava/lang/String;

    return-void
.end method

.method public setRefuse_advertising(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->refuse_advertising:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalPhone;->type:Ljava/lang/String;

    return-void
.end method

.class public Lcom/callapp/contacts/model/contact/WhitePagesData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x75e2ea048016a879L


# instance fields
.field private address:Lcom/callapp/common/model/json/JSONAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

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

    if-nez p1, :cond_1

    return v1

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    if-nez v2, :cond_2

    return v1

    .line 39
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    .line 40
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-nez v2, :cond_3

    .line 41
    iget-object v2, p1, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    if-eqz v2, :cond_4

    return v1

    .line 43
    :cond_3
    iget-object v3, p1, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 45
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 46
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    return v1

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/WhitePagesData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setAddress(Lcom/callapp/common/model/json/JSONAddress;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/WhitePagesData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-void
.end method

.class public Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# instance fields
.field private transient callReason:Ljava/lang/String;

.field private logoBgColor:Ljava/lang/Integer;

.field private logoUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;

    .line 54
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getCallReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->callReason:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoBgColor()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoBgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setCallReason(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->callReason:Ljava/lang/String;

    return-void
.end method

.method public setLogoBgColor(Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoBgColor:Ljava/lang/Integer;

    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/TwilioTrustedCommData;->name:Ljava/lang/String;

    return-void
.end method

.class public abstract Lcom/callapp/contacts/model/contact/PersonLookupData;
.super Lcom/callapp/contacts/model/contact/ExternalSourceData;
.source "SourceFile"


# instance fields
.field private final address:Lcom/callapp/common/model/json/JSONAddress;

.field private final fullName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/ExternalSourceData;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PersonLookupData;->fullName:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    new-instance p2, Lcom/callapp/common/model/json/JSONAddress;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/callapp/common/model/json/JSONAddress;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PersonLookupData;->address:Lcom/callapp/common/model/json/JSONAddress;

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PersonLookupData;->getCountryName()Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p2, p3}, Lcom/callapp/common/model/json/JSONAddress;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/PersonLookupData;->address:Lcom/callapp/common/model/json/JSONAddress;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/PersonLookupData;->setKey(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/callapp/common/model/json/JSONAddress;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PersonLookupData;->address:Lcom/callapp/common/model/json/JSONAddress;

    return-object v0
.end method

.method abstract getCountryName()Ljava/lang/String;
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/PersonLookupData;->fullName:Ljava/lang/String;

    return-object v0
.end method

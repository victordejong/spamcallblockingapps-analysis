.class public Lcom/callapp/contacts/loader/external/person/lookup/AuPersonLookupLoader;
.super Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader<",
        "Lcom/callapp/contacts/model/contact/AuPersonLookupData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/PersonLookupData;
    .locals 0

    .line 4049
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getAuPersonLookupData()Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PersonLookupData;
    .locals 1

    .line 2059
    new-instance v0, Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    invoke-direct {v0, p1, p2, p3}, Lcom/callapp/contacts/model/contact/AuPersonLookupData;-><init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 3

    .line 64
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getLocalNumberWithoutAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getNDC()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "(0%s)%s"

    .line 66
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/PersonLookupData;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    .line 3054
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setAuPersonLookupAuData(Lcom/callapp/contacts/model/contact/AuPersonLookupData;)V

    return-void
.end method

.method protected getAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/AuPersonLookupData;",
            ">;"
        }
    .end annotation

    .line 34
    const-class v0, Lcom/callapp/contacts/model/contact/AuPersonLookupData;

    return-object v0
.end method

.method protected getDataUrl()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cDovL3BlcnNvbmxvb2t1cC5jb20uQVUvc2VhcmNoP3NlYXJjaD10cnVlJnE9JXM"

    .line 1016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected getDataUrlHostName()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "cGVyc29ubG9va3VwLmNvbS5hdQ=="

    .line 2016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3f9

    return v0
.end method

.method public bridge synthetic getListenFields()Ljava/util/Set;
    .locals 1

    .line 10
    invoke-super {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getListenFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getRegionCode()Ljava/lang/String;
    .locals 1

    const-string v0, "AU"

    return-object v0
.end method

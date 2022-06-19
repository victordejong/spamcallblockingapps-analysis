.class public Lcom/callapp/contacts/util/model/UpdateNamesBuilder;
.super Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/SureCounter;",
            ">;Z)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method protected addToCountedMap(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 1

    .line 20
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->addToCountedMap(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    return p1
.end method

.class public Lcom/callapp/contacts/util/model/UpdateNameBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private forcedDataSource:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 15
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->forcedDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->getDataSourcePriority(Ljava/lang/String;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getDataSourcePriority(Ljava/lang/String;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J
    .locals 4

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J

    move-result-wide v0

    .line 39
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->forcedDataSource:Lcom/callapp/contacts/model/contact/DataSource;

    if-eqz p2, :cond_0

    if-ne p3, p2, :cond_0

    .line 41
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    iget-wide p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->priority:J

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    goto :goto_0

    .line 42
    :cond_0
    sget-object p2, Lcom/callapp/contacts/model/contact/DataSource;->PLACES_DATA_SOURCE:Ljava/util/EnumSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p2, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/callapp/contacts/model/contact/DataSource;->intent:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq p3, p2, :cond_1

    .line 43
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public bridge synthetic isValueChangedAndCanBeUse(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->isValueChangedAndCanBeUse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValueChangedAndCanBeUse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->isValueChangedAndCanBeUse(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->q(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateNameBuilder;->setValue(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->setValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void
.end method

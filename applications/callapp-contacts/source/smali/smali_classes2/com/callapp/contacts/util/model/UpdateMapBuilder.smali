.class public Lcom/callapp/contacts/util/model/UpdateMapBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Map;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 15
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateMapBuilder;
    .locals 1

    if-eqz p1, :cond_3

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 26
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 28
    check-cast p1, Ljava/util/Collection;

    .line 29
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 33
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->value:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_2
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateMapBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    :cond_3
    return-object p0
.end method

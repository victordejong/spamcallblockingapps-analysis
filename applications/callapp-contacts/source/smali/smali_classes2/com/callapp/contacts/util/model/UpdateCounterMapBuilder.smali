.class public Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/model/contact/SureCounter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final lowerCaseIfString:Z


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

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 18
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->value:Ljava/lang/Object;

    .line 19
    iput-boolean p4, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->lowerCaseIfString:Z

    return-void
.end method


# virtual methods
.method protected addToCountedMap(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->lowerCaseIfString:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/SureCounter;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/callapp/contacts/model/contact/SureCounter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/SureCounter;-><init>()V

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/SureCounter;->addToCounter(Z)V

    .line 40
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->value:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;
    .locals 2

    if-eqz p1, :cond_6

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 51
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    instance-of p2, p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1, p3}, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->addToCountedMap(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 59
    invoke-virtual {p0, p1, p3}, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->addToCountedMap(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 62
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    :cond_6
    return-object p0
.end method

.method public bridge synthetic useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateCounterMapBuilder;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/callapp/contacts/util/model/UpdateSetBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Ljava/util/Set;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Ljava/util/Set;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 15
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSetBuilder;
    .locals 1

    if-eqz p1, :cond_3

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 31
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 33
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->value:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 35
    iget-object p2, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->value:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    :cond_3
    return-object p0
.end method

.method public bridge synthetic useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 12
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateSetBuilder;->useValue(Ljava/util/Set;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useValue(Ljava/util/Set;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set;",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

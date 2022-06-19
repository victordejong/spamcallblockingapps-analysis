.class public abstract Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;->a:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 1

    .line 20
    check-cast p1, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    .line 1071
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;->a(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    .line 1073
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 1

    .line 20
    check-cast p2, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    .line 2034
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 2035
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p2, :cond_0

    .line 2037
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V

    .line 2039
    sget-object p2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2040
    new-instance p2, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader$1;-><init>(Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-static {p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)V
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;)Z
.end method

.method protected final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;->isLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    iget-object v1, p0, Lcom/callapp/contacts/loader/external/NotificationFromIMLoader;->a:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget-object v2, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    .line 61
    iget-object v3, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;",
            ">;"
        }
    .end annotation

    .line 27
    const-class v0, Lcom/callapp/contacts/model/contact/social/NotificationFromIMData;

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method protected abstract isLoaderEnabled()Z
.end method

.class public Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;
.super Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
        "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
        ">;"
    }
.end annotation


# instance fields
.field private final dontHave:Z

.field private final negatives:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 23
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->negatives:Ljava/util/Set;

    const-string p2, "DONTHAVE"

    .line 24
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dontHave:Z

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 3

    .line 111
    invoke-super {p0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLoadedFields()Ljava/util/Set;

    move-result-object v1

    .line 114
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 117
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 120
    :cond_1
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->updateBirthDate()V

    :cond_2
    return v0
.end method

.method protected isFieldValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 29
    invoke-static {p1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 32
    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    check-cast p2, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p2

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public bridge synthetic useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;
    .locals 7

    .line 41
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dontHave:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->value:Ljava/lang/Object;

    .line 43
    iput-boolean v1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    .line 44
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 45
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    iget-wide p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->priority:J

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->priority:J

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 51
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->valueIsForced:Z

    if-nez v0, :cond_4

    .line 55
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->negatives:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 58
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v2

    iget-boolean v3, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    if-ne v2, v3, :cond_3

    .line 61
    invoke-static {p3, p1}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide v2

    .line 62
    iget-wide v4, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->priority:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 68
    iput-object p2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->value:Ljava/lang/Object;

    .line 69
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 70
    invoke-static {p3, p1}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->priority:J

    .line 71
    invoke-virtual {p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    :cond_4
    return-object p0
.end method

.method public bridge synthetic useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;
    .locals 4

    .line 81
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dontHave:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->value:Ljava/lang/Object;

    .line 83
    iput-boolean v1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    .line 84
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 85
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    iget-wide p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->priority:J

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->priority:J

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->fieldName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->negatives:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    iput-object v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->value:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 98
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    .line 99
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->priority:J

    .line 101
    iget-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->sure:Z

    if-nez p1, :cond_1

    if-nez p3, :cond_2

    .line 102
    :cond_1
    iput-boolean v1, p0, Lcom/callapp/contacts/util/model/UpdateSocialIdBuilder;->valueIsForced:Z

    :cond_2
    return-object p0
.end method

.class public Lcom/callapp/contacts/loader/device/UserProfileLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 64
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 80
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;I)V
    .locals 1

    .line 166
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;

    invoke-direct {v0, p1, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;-><init>(ILcom/callapp/contacts/model/contact/ContactData;)V

    .line 202
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$8;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static b(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$2;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 100
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static c(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$3;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 113
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static d(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$4;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 126
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static e(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$6;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 150
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static f(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 162
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 4

    .line 39
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 43
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 45
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->d(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 47
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->e(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 49
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 51
    invoke-static {v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1130
    new-instance v1, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1139
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 55
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 56
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 57
    iget-object v3, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v0, v2}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;I)V

    goto :goto_0

    :cond_1
    return-void
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

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

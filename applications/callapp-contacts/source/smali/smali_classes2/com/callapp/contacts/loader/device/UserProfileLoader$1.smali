.class final Lcom/callapp/contacts/loader/device/UserProfileLoader$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/UserProfileLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserEmails()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    iget-object v3, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v3

    new-instance v4, Lcom/callapp/common/model/json/JSONEmail;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/contact/UserProfileData;->addEmail(Lcom/callapp/common/model/json/JSONEmail;)Z

    move-result v1

    or-int/2addr v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    :cond_1
    return-void
.end method

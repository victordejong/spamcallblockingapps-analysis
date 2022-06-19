.class final Lcom/callapp/contacts/loader/device/UserProfileLoader$7;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/UserProfileLoader;->f(Lcom/callapp/contacts/model/contact/ContactData;)V
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

    .line 154
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 157
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserAddress()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/callapp/common/model/json/JSONAddress;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/callapp/common/model/json/JSONAddress;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/contact/UserProfileData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$7;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateAddresses()V

    return-void
.end method

.class final Lcom/callapp/contacts/loader/device/UserProfileLoader$5;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/device/UserProfileLoader;
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

    .line 130
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserYoutubeChannel()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserProfileData()Lcom/callapp/contacts/model/contact/UserProfileData;

    move-result-object v1

    new-instance v2, Lcom/callapp/common/model/json/JSONWebsite;

    invoke-direct {v2, v0}, Lcom/callapp/common/model/json/JSONWebsite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/UserProfileData;->addWebsite(Lcom/callapp/common/model/json/JSONWebsite;)Z

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/UserProfileLoader$5;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    :cond_0
    return-void
.end method

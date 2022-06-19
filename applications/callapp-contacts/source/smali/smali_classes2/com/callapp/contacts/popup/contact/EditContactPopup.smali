.class public Lcom/callapp/contacts/popup/contact/EditContactPopup;
.super Lcom/callapp/contacts/popup/contact/BaseContactPopup;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/popup/contact/EditContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;-><init>(Lcom/callapp/contacts/model/contact/ContactData;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->f:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a:Z

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b(J)V

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->e(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->d:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1073
    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1201b0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a:Z

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Lcom/callapp/contacts/popup/contact/EditContactPopup$1;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/popup/contact/EditContactPopup$1;-><init>(Lcom/callapp/contacts/popup/contact/EditContactPopup;Lcom/callapp/contacts/model/contact/ContactData;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    goto :goto_0

    .line 62
    :cond_3
    new-instance v0, Lcom/callapp/contacts/popup/contact/EditContactPopup$2;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/popup/contact/EditContactPopup$2;-><init>(Lcom/callapp/contacts/popup/contact/EditContactPopup;Lcom/callapp/contacts/model/contact/ContactData;)V

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b:Lcom/callapp/contacts/popup/contact/BaseContactPopup;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/popup/contact/BaseContactPopup;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 120
    invoke-static {p4}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->b(Landroid/content/Intent;)J

    move-result-wide p1

    .line 1078
    iget-object p3, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p3

    invoke-static {p3, p4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->e(J)Ljava/lang/String;

    move-result-object p3

    .line 1084
    iget-object p4, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_1

    .line 1086
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-static {p4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 1089
    invoke-static {p4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1090
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1091
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->f:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->assertIntentDataExists()V

    .line 1093
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getIntentData()Lcom/callapp/contacts/model/contact/IntentData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/IntentData;->setFullName(Ljava/lang/String;)V

    .line 1094
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 1095
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DeviceData;->getNames()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1096
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/callapp/contacts/model/contact/DeviceData;->setFullName(Ljava/lang/String;)V

    .line 1097
    iget-object p4, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhoto()V

    .line 1099
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/SuggestContactManager;->b(J)V

    .line 1100
    invoke-static {v0, v1}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(J)V

    .line 1102
    iget-object p4, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->resetOnlyNotSureNetworks()V

    .line 1103
    iget-object p4, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 1080
    :cond_1
    iget-object p4, p0, Lcom/callapp/contacts/popup/contact/EditContactPopup;->d:Ljava/lang/String;

    invoke-static {p4, p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/EditContactPopup;->a(JZ)V

    return-void
.end method

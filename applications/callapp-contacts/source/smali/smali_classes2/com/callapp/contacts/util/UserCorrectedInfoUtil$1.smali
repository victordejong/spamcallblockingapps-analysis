.class final Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/framework/phone/Phone;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/PopupDoneListener;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    iput-object p2, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->c:Lcom/callapp/framework/phone/Phone;

    iput-object p4, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->a:Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, v1}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    const-string p1, "Business"

    goto :goto_0

    :cond_1
    const-string p1, "Person"

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v2, p3}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Z)V

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, p2, v2, v1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;I)V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 82
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->e:Ljava/lang/String;

    const-string v3, "contact type: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    .line 85
    iget-object v0, p1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget v3, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLcom/callapp/framework/phone/Phone;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    .line 98
    :cond_2
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 100
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->f:Landroid/content/Context;

    iget-object p3, p0, Lcom/callapp/contacts/util/UserCorrectedInfoUtil$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/manager/BlockManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->showBottomBarCheckBox(Z)V

    return-void
.end method

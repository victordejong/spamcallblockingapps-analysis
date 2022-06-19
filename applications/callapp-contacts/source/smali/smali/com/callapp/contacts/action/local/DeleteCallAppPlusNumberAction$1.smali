.class Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->c:Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 47
    iget-object p1, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    instance-of v0, p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->a:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setRecognized(Z)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a()V

    .line 56
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 1091
    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

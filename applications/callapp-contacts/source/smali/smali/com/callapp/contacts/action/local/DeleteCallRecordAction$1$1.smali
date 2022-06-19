.class Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1$1;->a:Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1$1;->a:Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    check-cast v0, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 50
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/CallRecorder;->contactId:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 55
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

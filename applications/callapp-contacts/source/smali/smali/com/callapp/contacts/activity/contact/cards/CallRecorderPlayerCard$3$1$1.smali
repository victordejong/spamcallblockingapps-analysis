.class Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 285
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 286
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$302(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Lcom/callapp/contacts/model/objectbox/CallRecorder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1;->a:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3;->b:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 288
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/CallRecordChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 290
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$3$1$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

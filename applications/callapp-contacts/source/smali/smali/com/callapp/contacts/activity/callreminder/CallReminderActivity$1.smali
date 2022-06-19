.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_2

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->isForeGroundVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V

    return-void

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$1;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Z

    :cond_2
    return-void
.end method

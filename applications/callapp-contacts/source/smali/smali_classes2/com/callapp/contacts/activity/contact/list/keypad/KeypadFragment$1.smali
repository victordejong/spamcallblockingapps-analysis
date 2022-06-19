.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 185
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SIM_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c()V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    :cond_1
    return-void
.end method

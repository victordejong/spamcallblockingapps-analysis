.class Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 3

    .line 22
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v1

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

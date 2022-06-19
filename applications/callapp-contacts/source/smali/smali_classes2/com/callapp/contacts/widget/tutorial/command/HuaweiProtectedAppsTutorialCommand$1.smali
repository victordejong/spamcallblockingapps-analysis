.class Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    iget-object p3, p0, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object p3

    const/4 p4, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, p4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

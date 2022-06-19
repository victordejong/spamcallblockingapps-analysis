.class Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    iget-object p3, p0, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand$1;->a:Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object p3

    const/4 p4, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, p4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

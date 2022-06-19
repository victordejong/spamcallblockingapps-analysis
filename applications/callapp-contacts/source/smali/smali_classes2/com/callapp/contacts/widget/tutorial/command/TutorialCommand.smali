.class public abstract Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/ContextRunnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/api/ContextRunnable<",
        "Lcom/callapp/contacts/activity/base/BaseActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/event/bus/EventBus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->a:Lcom/callapp/contacts/event/bus/EventBus;

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
.end method

.method public final b(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->a(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    :cond_0
    return-void
.end method

.method public abstract getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
.end method

.method protected getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public synthetic run(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->b(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    return-void
.end method

.class Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$100(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->access$000(Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$1;->this$0:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public isFinishing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

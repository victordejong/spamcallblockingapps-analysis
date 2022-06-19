.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$000(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$100(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    return-object v0
.end method

.method public hasIntentExtra(Ljava/lang/String;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$1;->this$0:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

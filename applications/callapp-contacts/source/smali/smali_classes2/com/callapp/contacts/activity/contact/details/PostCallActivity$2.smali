.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public finish()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finish()V

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$100(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    return-object v0
.end method

.method public getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$200(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public getRealContext()Landroid/content/Context;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    return-object v0
.end method

.method public hasIntentExtra(Ljava/lang/String;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFinishing()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$2;->this$0:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

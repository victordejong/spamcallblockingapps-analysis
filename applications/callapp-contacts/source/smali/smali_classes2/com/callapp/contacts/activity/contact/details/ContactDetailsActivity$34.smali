.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 2308
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

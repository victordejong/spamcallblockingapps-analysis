.class Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    const v0, 0x7f12029f

    if-eq p1, v0, :cond_1

    const v0, 0x7f12050f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->e(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->showMultiSelect(Z)V

    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;->d(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;->b:Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity;

    new-instance v1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity$3;)V

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteAllPresentedCallLogEntries(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

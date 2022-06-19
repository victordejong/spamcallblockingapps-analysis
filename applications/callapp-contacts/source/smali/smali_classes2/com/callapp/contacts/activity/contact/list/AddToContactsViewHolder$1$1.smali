.class Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;Landroid/view/View;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->d:Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->b:Ljava/lang/String;

    const-string v1, "phone"

    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;->c:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f120298
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

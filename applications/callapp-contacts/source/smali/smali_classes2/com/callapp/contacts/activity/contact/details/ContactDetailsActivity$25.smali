.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1375
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1
.end method

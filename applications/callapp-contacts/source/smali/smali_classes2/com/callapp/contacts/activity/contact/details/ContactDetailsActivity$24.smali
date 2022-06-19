.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1345
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isClickValid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onFullProfileImageClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

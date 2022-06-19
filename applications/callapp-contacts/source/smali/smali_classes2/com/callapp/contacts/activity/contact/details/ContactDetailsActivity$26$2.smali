.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;)V
    .locals 0

    .line 1496
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1499
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26$2;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

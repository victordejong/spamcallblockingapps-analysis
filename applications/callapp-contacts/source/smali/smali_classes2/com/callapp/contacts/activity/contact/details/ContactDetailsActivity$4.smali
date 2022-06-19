.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
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

    .line 532
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 2

    .line 535
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->UNSET_INCOGNITO:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_1

    .line 537
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_0

    .line 538
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/CallHistoryLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "EXTRA_INCOGNITO_CALL"

    .line 543
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

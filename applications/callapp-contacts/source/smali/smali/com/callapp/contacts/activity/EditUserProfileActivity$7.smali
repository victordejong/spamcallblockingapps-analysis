.class Lcom/callapp/contacts/activity/EditUserProfileActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$800(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 293
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$000(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$900(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1000(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    return-void
.end method

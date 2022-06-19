.class Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;I)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getFqlType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$1$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

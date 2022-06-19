.class Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_1

    if-eqz p4, :cond_1

    .line 176
    const-class p1, Lcom/callapp/contacts/model/contact/DataSource;

    invoke-static {p1, p4}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Ljava/lang/Class;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 179
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;

    iget-object p3, p3, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p3}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->onSocialStateChanged(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/contact/DataSource;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$1200(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->resetChosenPicture()V

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$1300(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    :cond_1
    return-void
.end method

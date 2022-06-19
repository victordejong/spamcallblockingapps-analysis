.class Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->getOnFooterClickedListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 171
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 172
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$900(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;->access$1000(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MySocialProfileCard$2;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

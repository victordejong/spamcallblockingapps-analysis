.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onButtonBarIconClicked(Landroid/view/View;)V
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

    .line 3382
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3385
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3386
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    .line 3387
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0, v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V

    :cond_0
    return-void
.end method

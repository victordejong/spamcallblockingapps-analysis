.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onButtonBarIconLongClicked(Landroid/view/View;)V
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

    .line 3330
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3344
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3345
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p2, p2, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3336
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3337
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x1

    invoke-static {p2, p2, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V

    .line 3338
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    .line 4091
    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$4vyk6xdcJE7X1xt09IIOFvqdZf0(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a(Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$9F3wPLxXWqzdugPT5q8fbmathxM(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->b(Lcom/callapp/framework/phone/Phone;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 2

    .line 3333
    invoke-static {}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3334
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$53$9F3wPLxXWqzdugPT5q8fbmathxM;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$53$9F3wPLxXWqzdugPT5q8fbmathxM;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;Lcom/callapp/framework/phone/Phone;)V

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$53$4vyk6xdcJE7X1xt09IIOFvqdZf0;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$53$4vyk6xdcJE7X1xt09IIOFvqdZf0;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;Lcom/callapp/framework/phone/Phone;)V

    invoke-static {p2, v0, v1}, Lcom/callapp/contacts/popup/OptInWithTopImagePopup;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3350
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3351
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x1

    invoke-static {p2, p2, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V

    :cond_1
    return-void
.end method

.class Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string p1, "Clicked on verify user number card"

    .line 102
    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->trackUserProfileEvent(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/VerifyPhoneNumberCard;->verifyNumber(Landroid/app/Activity;)V

    return-void
.end method

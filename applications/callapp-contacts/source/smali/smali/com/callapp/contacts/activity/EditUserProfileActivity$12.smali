.class Lcom/callapp/contacts/activity/EditUserProfileActivity$12;
.super Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->onTopBarIconClicked(Landroid/view/View;)V
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

    .line 422
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$12;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 0

    .line 426
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserFullName(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$12;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2100(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

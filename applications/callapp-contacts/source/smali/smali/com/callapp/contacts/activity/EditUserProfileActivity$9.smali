.class Lcom/callapp/contacts/activity/EditUserProfileActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->openAddUserDefinitionDialog()V
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

    .line 322
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$9;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 0

    .line 330
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserDefinition(Ljava/lang/String;)V

    .line 331
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$9;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1200(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->d(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;I)V
    .locals 0

    return-void
.end method

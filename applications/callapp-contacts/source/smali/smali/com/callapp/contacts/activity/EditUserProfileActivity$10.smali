.class Lcom/callapp/contacts/activity/EditUserProfileActivity$10;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->reloadContact()V
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

    .line 352
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 360
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 363
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->createSelfContactStackLoader()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    new-instance v3, Lcom/callapp/contacts/activity/-$$Lambda$W75w2pH9-_cy0BezHpmjwXO7w7c;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/activity/-$$Lambda$W75w2pH9-_cy0BezHpmjwXO7w7c;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 365
    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->loadSelfContact(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/SelfContactData;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1802(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$1900(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$2000(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

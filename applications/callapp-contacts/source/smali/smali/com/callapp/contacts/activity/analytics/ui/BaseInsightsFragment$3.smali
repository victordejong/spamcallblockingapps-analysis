.class Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->loadSelfContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->removeListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 207
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v1, v1, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 211
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/ContactLoaderManager;->createSelfContactStackLoader()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$Ix9so7gnimPcodv3fFd9WwdgnP8;-><init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V

    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 213
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->loadSelfContact(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/SelfContactData;

    move-result-object v0

    iput-object v0, v2, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardLoadedListener:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->cardLoadedListener:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$CardLoaded;->a()V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$3;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v2, v1, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_2
    return-void
.end method

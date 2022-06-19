.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->addCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 11

    .line 257
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllConferenceCalls()Ljava/util/List;

    move-result-object v0

    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 259
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    .line 261
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->access$200(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    iget-object v4, v4, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-direct {v3, v4, v1}, Lcom/callapp/contacts/activity/contact/cards/ConferenceCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/model/call/CallData;)V

    .line 265
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhoneOrigin()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v7

    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    sget-object v10, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONFERENCE_CALL_FIELDS:Ljava/util/EnumSet;

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v3, v2, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 268
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    iget-object v3, v2, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

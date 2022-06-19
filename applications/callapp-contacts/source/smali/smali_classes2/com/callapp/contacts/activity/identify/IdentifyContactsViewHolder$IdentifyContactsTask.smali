.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdentifyContactsTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

.field private b:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsData;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    return-void
.end method

.method private a(JLcom/callapp/framework/phone/Phone;)Z
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->c(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedContactId()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->c(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;JLcom/callapp/framework/phone/Phone;)Z
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a(JLcom/callapp/framework/phone/Phone;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 176
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->getSuggestedContactId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    .line 181
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a(JLcom/callapp/framework/phone/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

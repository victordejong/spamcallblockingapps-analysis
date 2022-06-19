.class public Lcom/callapp/contacts/manager/RestrictionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/RestrictionManager;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 5

    .line 26
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhoneOrigin()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 31
    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eq v2, v3, :cond_1

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-ne v0, v2, :cond_3

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->call:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    .line 36
    invoke-static {v0}, Lcom/callapp/contacts/manager/RestrictionManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_3
    return v1
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;)Z
    .locals 3

    .line 47
    sget-object v0, Lcom/callapp/contacts/manager/RestrictionManager;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/RestrictionManager;->b:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/callapp/contacts/manager/RestrictionManager;->b:Ljava/util/Set;

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "restrictedCountries"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    sget-object v2, Lcom/callapp/contacts/manager/RestrictionManager;->b:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/callapp/contacts/manager/RestrictionManager;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

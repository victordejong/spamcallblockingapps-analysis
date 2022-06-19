.class public Lcom/callapp/contacts/loader/business/GooglePlacesLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "Lcom/callapp/contacts/model/contact/GooglePlacesData;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    const-string v1, "aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9tYXBzL3NlYXJjaC8/YXBpPTEmcXVlcnk9YSZxdWVyeV9wbGFjZV9pZD0="

    .line 2016
    invoke-static {v1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/GooglePlacesData;)V
    .locals 6

    .line 114
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 115
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 116
    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->setGooglePlacesData(Lcom/callapp/contacts/model/contact/GooglePlacesData;)V

    .line 118
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 120
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$1;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 131
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$2;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$2;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 141
    :cond_1
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$3;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$3;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 151
    :cond_2
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$4;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$4;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 161
    :cond_3
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$5;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$5;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 171
    :cond_4
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$6;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$6;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 181
    :cond_5
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$7;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$7;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_6
    new-array v2, v5, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 191
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->priceRange:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 192
    new-instance v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$8;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$8;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 201
    :cond_7
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    new-instance v0, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$9;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader$9;-><init>(Lcom/callapp/contacts/loader/business/GooglePlacesLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 211
    :cond_8
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/GooglePlacesData;)Z
    .locals 4

    if-eqz p1, :cond_2

    .line 42
    invoke-static {}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->isGooogleMapsAppInstalled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getGooglePlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.google.android.apps.maps"

    .line 45
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return v1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/GooglePlacesData;->getUrlOrBuildUrl()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isGooogleMapsAppInstalled()Z
    .locals 2

    .line 68
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "com.google.android.apps.maps"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/PackageUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 0

    .line 37
    check-cast p1, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    .line 1104
    invoke-static {p1}, Lcom/callapp/contacts/loader/external/ExternalSourcesUtils;->a(Lcom/callapp/contacts/model/contact/GooglePlacesData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/GooglePlacesData;)V

    return-void
.end method

.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/GooglePlacesData;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 91
    const-class v1, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 94
    monitor-exit v1

    return-object p1

    .line 97
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/GooglePlacesData;)V

    .line 98
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/GooglePlacesData;",
            ">;"
        }
    .end annotation

    .line 79
    const-class v0, Lcom/callapp/contacts/model/contact/GooglePlacesData;

    return-object v0
.end method

.method public getExernalSourceId()I
    .locals 1

    const/16 v0, 0x3ea

    return v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

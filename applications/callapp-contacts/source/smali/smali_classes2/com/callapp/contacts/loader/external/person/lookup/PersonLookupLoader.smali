.class abstract Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;
.super Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/model/contact/PersonLookupData;",
        ">",
        "Lcom/callapp/contacts/loader/external/ExternalSourcesLoader<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/loader/external/ExternalSourcesLoader;-><init>()V

    return-void
.end method

.method private a(Lcom/callapp/framework/phone/Phone;Lorg/jsoup/select/c;)Lcom/callapp/contacts/model/contact/PersonLookupData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Lorg/jsoup/select/c;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    .line 161
    :goto_0
    sget v5, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a:I

    if-ge v2, v5, :cond_4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getAddress()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    invoke-virtual {p2, v2}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    invoke-static {v4}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lorg/jsoup/nodes/h;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    const-string v5, "a"

    .line 4868
    invoke-static {v5}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 5015
    invoke-static {v5}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 4871
    new-instance v6, Lorg/jsoup/select/d$aj;

    invoke-direct {v6, v5}, Lorg/jsoup/select/d$aj;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v3

    .line 4189
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4190
    invoke-virtual {v3, v0}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    invoke-static {v3}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lorg/jsoup/nodes/h;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_4
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    return-object v1

    .line 175
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v3, v4}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PersonLookupData;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lorg/jsoup/nodes/h;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/model/contact/ExternalSourceData;)Lcom/callapp/common/model/json/JSONExternalSourceContact;
    .locals 2

    .line 31
    check-cast p1, Lcom/callapp/contacts/model/contact/PersonLookupData;

    .line 5199
    new-instance v0, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONExternalSourceContact;-><init>()V

    if-eqz p1, :cond_1

    .line 5205
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PersonLookupData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5206
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PersonLookupData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setName(Ljava/lang/String;)V

    .line 5209
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PersonLookupData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5210
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/PersonLookupData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/json/JSONExternalSourceContact;->setAddresses(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/PersonLookupData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/model/contact/PersonLookupData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/ExternalSourceData;)V
    .locals 3

    .line 31
    check-cast p2, Lcom/callapp/contacts/model/contact/PersonLookupData;

    .line 6054
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 6055
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 6056
    invoke-virtual {p0, v1, p2}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/PersonLookupData;)V

    .line 6058
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object p2

    .line 6060
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6061
    new-instance v2, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$1;-><init>(Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 6069
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6070
    new-instance v0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$2;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader$2;-><init>(Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 6078
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/PersonLookupData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final c(Lcom/callapp/contacts/loader/api/LoadContext;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 86
    const-class v0, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 87
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 89
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getRegionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/PersonLookupData;

    move-result-object p1

    if-eqz p1, :cond_1

    const v3, 0x7f0b0038

    .line 98
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/model/contact/PersonLookupData;->isExpired(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    monitor-exit v2

    return-object v4

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getDataUrlHostName()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 108
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getDataUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/callapp/contacts/util/JSoupUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v3, "results-list"

    .line 1905
    invoke-static {v3}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 1907
    new-instance v5, Lorg/jsoup/select/d$k;

    invoke-direct {v5, v3}, Lorg/jsoup/select/d$k;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object p1

    const-string v3, "div.row"

    .line 3116
    invoke-static {v3}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 3117
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 3118
    invoke-static {v3}, Lorg/jsoup/select/h;->a(Ljava/lang/String;)Lorg/jsoup/select/d;

    move-result-object v3

    .line 3119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3120
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/h;

    .line 3124
    invoke-static {v3, v7}, Lorg/jsoup/select/Selector;->a(Lorg/jsoup/select/d;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v7

    .line 3125
    invoke-virtual {v7}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/h;

    .line 3126
    invoke-virtual {v6, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3127
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3128
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3132
    :cond_5
    new-instance p1, Lorg/jsoup/select/c;

    invoke-direct {p1, v5}, Lorg/jsoup/select/c;-><init>(Ljava/util/List;)V

    .line 118
    invoke-virtual {p1}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    const-string v5, "div"

    .line 3396
    invoke-static {v5, v3}, Lorg/jsoup/select/Selector;->a(Ljava/lang/String;Lorg/jsoup/nodes/h;)Lorg/jsoup/select/c;

    move-result-object v3

    .line 122
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    invoke-virtual {v3}, Lorg/jsoup/select/c;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_7

    .line 129
    invoke-virtual {v3, v6}, Lorg/jsoup/select/c;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/h;

    invoke-static {v5}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lorg/jsoup/nodes/h;)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->getRegionCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 139
    :cond_7
    invoke-direct {p0, v1, v3}, Lcom/callapp/contacts/loader/external/person/lookup/PersonLookupLoader;->a(Lcom/callapp/framework/phone/Phone;Lorg/jsoup/select/c;)Lcom/callapp/contacts/model/contact/PersonLookupData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 143
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-object p1

    .line 151
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "IOException for phone: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 153
    :cond_8
    monitor-exit v2

    return-object v4

    .line 103
    :cond_9
    :goto_1
    monitor-exit v2

    return-object v4

    .line 92
    :cond_a
    :goto_2
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected abstract getAddress()Z
.end method

.method protected abstract getDataUrl()Ljava/lang/String;
.end method

.method protected abstract getDataUrlHostName()Ljava/lang/String;
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

    .line 218
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method protected abstract getRegionCode()Ljava/lang/String;
.end method

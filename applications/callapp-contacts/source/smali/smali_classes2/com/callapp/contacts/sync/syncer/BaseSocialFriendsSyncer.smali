.class public abstract Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;",
        ">",
        "Lcom/callapp/contacts/sync/syncer/Syncer;"
    }
.end annotation


# static fields
.field protected static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/Friend;",
            ">;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

.field protected f:Lcom/callapp/common/util/Joiner;

.field protected g:Lcom/callapp/common/util/Joiner;

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    .line 58
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".connectionsCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const-string v0, " "

    .line 59
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/common/util/Joiner;->a()Lcom/callapp/common/util/Joiner;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->f:Lcom/callapp/common/util/Joiner;

    const-string v0, ""

    .line 60
    invoke-static {v0}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/String;)Lcom/callapp/common/util/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/common/util/Joiner;->a()Lcom/callapp/common/util/Joiner;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->g:Lcom/callapp/common/util/Joiner;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :goto_0
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 146
    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 147
    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_1

    .line 148
    aget-object v4, p3, v2

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p3, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 149
    aget-object v5, p3, v1

    aput-object v5, v4, v0

    aget-object v5, p3, v2

    aput-object v5, v4, v3

    .line 1167
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1170
    iget-object v5, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->g:Lcom/callapp/common/util/Joiner;

    invoke-virtual {v5, v4}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;)V

    .line 1173
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1174
    iget-object v5, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->g:Lcom/callapp/common/util/Joiner;

    invoke-virtual {v5, v4}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    aget-object v3, p3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    aget-object v3, p3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    aget-object v3, p3, v1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_4
    array-length p3, p3

    if-ne p3, v3, :cond_5

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    .line 246
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/List;Z)Z

    move-result v0

    if-eqz p4, :cond_c

    .line 249
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 250
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 251
    invoke-static {p5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, " "

    .line 254
    invoke-static {p3, v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 257
    :goto_0
    iget-object v5, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 258
    invoke-static {p3, v6}, Lcom/callapp/common/util/RegexUtils;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 260
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/List;Z)Z

    move-result v0

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    iget-object v7, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 263
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/callapp/contacts/model/Friend;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {p4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_1

    .line 266
    invoke-virtual {v6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    iget-object v7, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 268
    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/callapp/contacts/model/Friend;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_4
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    if-ne p3, v2, :cond_5

    .line 276
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/model/Friend;

    .line 277
    iget-object p4, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {p4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result p4

    iget-object p5, p3, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    iget-object p3, p3, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    invoke-static {p4, p2, p5, p3}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 278
    :cond_5
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    if-le p3, v2, :cond_8

    .line 280
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 281
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_6
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/callapp/contacts/model/Friend;

    .line 282
    iget-object v4, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v4

    iget-object v5, p5, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-static {v4, p2, v5}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 283
    invoke-interface {p3, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    :cond_7
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    if-ne p4, v2, :cond_8

    .line 287
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/model/Friend;

    .line 288
    iget-object p4, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {p4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result p4

    iget-object p5, p3, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    iget-object p3, p3, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    invoke-static {p4, p2, p5, p3}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    if-nez v0, :cond_c

    .line 294
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p3

    if-ne p3, v2, :cond_9

    .line 295
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/List;Z)Z

    move-result v1

    goto :goto_5

    .line 296
    :cond_9
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result p3

    if-le p3, v2, :cond_c

    .line 297
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 298
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_a
    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/callapp/contacts/model/Friend;

    .line 299
    iget-object v3, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v4, p5, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-virtual {p0, v3, p2, v4}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->canMatchProfileToContact(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 300
    invoke-interface {p3, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 304
    :cond_b
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    if-ne p4, v2, :cond_c

    .line 305
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/List;Z)Z

    move-result v1

    goto :goto_5

    :cond_c
    move v1, v0

    :cond_d
    :goto_5
    return v1
.end method

.method private a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/sync/model/SyncerContext;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/Friend;",
            ">;Z)Z"
        }
    .end annotation

    .line 317
    invoke-static {p3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 318
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/Friend;

    if-nez v1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v3, v0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, v3, p4}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->markProfileAsSureOrUnsure(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    const/4 v1, 0x1

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v2

    iget-object v3, v0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    invoke-static {v2, p2, v3, v0}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->destroy()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    return-void
.end method

.method protected abstract getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 13

    .line 184
    iget-object v6, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 185
    iget-object v7, p1, Lcom/callapp/contacts/sync/model/SyncerContext;->singleNameCount:Ljava/util/Map;

    .line 187
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, " "

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->g:Lcom/callapp/common/util/Joiner;

    invoke-virtual {v0, v8}, Lcom/callapp/common/util/Joiner;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    .line 199
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {v0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    .line 202
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 209
    :cond_2
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    .line 210
    sget-object v2, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    sget-object v2, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    invoke-static {v0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 219
    :goto_0
    array-length v0, v8

    if-ge v10, v0, :cond_7

    add-int/lit8 v11, v10, 0x1

    move v12, v11

    .line 220
    :goto_1
    array-length v0, v8

    const/4 v1, 0x1

    if-ge v12, v0, :cond_5

    array-length v0, v8

    const/4 v2, 0x2

    if-le v0, v2, :cond_5

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->f:Lcom/callapp/common/util/Joiner;

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, v8, v10

    aput-object v3, v2, v9

    aget-object v3, v8, v12

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/common/util/Joiner;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/sync/model/SyncerContext;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 228
    :cond_5
    aget-object v0, v8, v10

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    aget-object v3, v8, v10

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    aget-object v1, v8, v10

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/Friend;

    if-eqz v0, :cond_6

    .line 232
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v1

    iget-object v2, v0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0}, Lcom/callapp/contacts/sync/MatchAndSuggestHelper;->a(ILcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v10, v11

    goto :goto_0

    .line 237
    :cond_7
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncEnd()Z
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget v1, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncStart()V
    .locals 5

    .line 101
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->b:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->c:Ljava/util/Map;

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/Friend;

    .line 106
    iget-object v2, v1, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    .line 107
    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string v3, " "

    .line 116
    invoke-direct {p0, v1, v2, v3}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a(Lcom/callapp/contacts/model/Friend;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/loader/im/SkypeLoader;->isSkypeInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getAllSkypeNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    .line 125
    :cond_2
    sget-object v0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->h:Ljava/util/Map;

    :cond_3
    return-void
.end method

.method public shouldSync()Z
    .locals 5

    .line 65
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 72
    :try_start_0
    invoke-virtual {v3, v1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(ZZ)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->i:Ljava/util/Map;
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iput v3, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->d:I

    .line 81
    iget-object v3, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 83
    iget v4, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->d:I

    if-nez v4, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "Number of friends is zero, terminating %s sync"

    invoke-static {v0, v3, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->setSyncEnabled(Z)V

    return v2

    :cond_1
    if-ne v4, v3, :cond_2

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Number of friends (%s) has remained the same, terminating %s sync"

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->setSyncEnabled(Z)V

    return v2

    .line 74
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "Terminating %s sync cuz QuotaReachedException"

    invoke-static {v0, v3, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->setSyncEnabled(Z)V

    return v2

    :cond_2
    return v0
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/BaseSocialFriendsSyncer;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

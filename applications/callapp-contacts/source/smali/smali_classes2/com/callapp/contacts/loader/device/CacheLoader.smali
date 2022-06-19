.class public Lcom/callapp/contacts/loader/device/CacheLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/loader/api/LoadContext;",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;Z)V"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    .line 36
    instance-of v2, v1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v1, p0}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;-><init>(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/api/ContactDataLoader;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->getLoaders()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/loader/device/CacheLoader;->d:Z

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/loader/device/CacheLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;Z)V

    return-void
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

    .line 21
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    return-object v0
.end method

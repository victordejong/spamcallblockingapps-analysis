.class public abstract Lcom/callapp/contacts/loader/BaseCompoundLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/loader/SimpleContactLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->b:Ljava/util/Set;

    .line 22
    iput-boolean p1, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->c:Z

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/callapp/contacts/loader/SimpleContactLoader;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>(Z)V

    .line 31
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 32
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/SimpleContactLoader;->getListenFields()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method protected abstract a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
.end method

.method public a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a:Ljava/util/List;

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 69
    iget-object v1, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/loader/SimpleContactLoader;

    .line 70
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 73
    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/loader/api/ContactDataLoader;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const-string v2, "Error loading %s"

    invoke-static {v4, v3, v2, v5}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->c:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->a:Ljava/util/List;

    iget-boolean v1, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->d:Z

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/loader/device/CacheLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Ljava/util/List;Z)V

    :cond_0
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

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseCompoundLoader;->b:Ljava/util/Set;

    return-object v0
.end method

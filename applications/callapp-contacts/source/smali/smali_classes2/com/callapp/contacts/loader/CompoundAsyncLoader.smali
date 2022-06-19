.class public Lcom/callapp/contacts/loader/CompoundAsyncLoader;
.super Lcom/callapp/contacts/loader/BaseCompoundLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>()V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/callapp/contacts/loader/SimpleContactLoader;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/loader/BaseCompoundLoader;-><init>(Z[Lcom/callapp/contacts/loader/SimpleContactLoader;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v0

    .line 28
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->c:Ljava/util/Set;

    .line 29
    iget-object v2, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/loader/SimpleContactLoader;

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v3}, Lcom/callapp/contacts/loader/SimpleContactLoader;->getListenFields()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    :cond_2
    new-instance v4, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;-><init>(Lcom/callapp/contacts/loader/CompoundAsyncLoader;Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 41
    :cond_3
    iget-boolean v1, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

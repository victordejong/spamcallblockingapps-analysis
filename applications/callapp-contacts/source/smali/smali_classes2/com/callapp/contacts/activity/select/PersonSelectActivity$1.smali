.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    .line 161
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 163
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->b:Z

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    .line 168
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 179
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->b:Z

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move-object v9, v1

    move v10, v2

    const/4 v7, 0x1

    goto/16 :goto_3

    .line 184
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 186
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 188
    :cond_2
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->b:Z

    if-eqz v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v2

    .line 191
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_3
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 198
    iget-object v4, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v4}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v4

    .line 199
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/PersonData;

    .line 202
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 203
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 206
    :cond_5
    iget-object v5, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 207
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 211
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 214
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 215
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 216
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 217
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 219
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    const/4 v1, 0x0

    move-object v9, v0

    move v10, v4

    const/4 v7, 0x0

    .line 226
    :goto_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v8

    .line 227
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    new-instance v1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;ZLjava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 164
    :cond_9
    throw v1
.end method

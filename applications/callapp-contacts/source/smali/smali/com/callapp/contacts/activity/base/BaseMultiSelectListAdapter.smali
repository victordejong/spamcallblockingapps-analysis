.class public abstract Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemData:",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/base/BaseContactHolder;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "TItemData;TViewHolder;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TItemData;>;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItemData;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    return-void
.end method

.method private c(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemData;)Z"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "TItemData;>;)V"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    if-eq v0, p1, :cond_2

    .line 100
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->d:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->getCheckedRowsCount()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;->onMultiSelectModeToggled(ZI)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->d()V

    .line 110
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 113
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemData;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz v0, :cond_1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    .line 139
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->setChecked(Z)V

    .line 141
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->d:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->getCheckedRowsCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;->onSelectedAmountChanged(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->setChecked(Z)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->d:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->getCheckedRowsCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;->onSelectedAmountChanged(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCheckedRows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItemData;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedRowsCount()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInMultiSelectMode()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->e:Z

    return v0
.end method

.method public setMultiSelectListener(Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->d:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    return-void
.end method

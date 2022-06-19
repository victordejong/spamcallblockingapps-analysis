.class public abstract Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragment<",
        "Ljava/util/List<",
        "TT;>;>;",
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;"
    }
.end annotation


# instance fields
.field protected itemClickListener:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

.field private setMultiSelectOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setMultiSelectOnStart:Z

    return-void
.end method


# virtual methods
.method public abstract filterReq(Ljava/lang/CharSequence;Z)V
.end method

.method public getCheckedRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->getCheckedRows()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedCounter()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->getCheckedRowsCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInMultiSelectMode()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->isInMultiSelectMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectModeToggled(ZI)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->listener:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;->onMultiSelectModeToggled(ZI)V

    :cond_0
    return-void
.end method

.method public onSelectedAmountChanged(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->listener:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;->onSelectedAmountChanged(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->setData(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    instance-of p1, p1, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->shouldShowMultiSelectOnStart()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->a(ZLjava/util/List;)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->setMultiSelectListener(Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;)V

    return-void
.end method

.method public setMultiSelectListener(Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->listener:Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter$MultiSelectEvents;

    return-void
.end method

.method public setOnItemClickedListener(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->itemClickListener:Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;

    return-void
.end method

.method protected shouldShowMultiSelectOnStart()Z
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->isInMultiSelectMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setMultiSelectOnStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showMultiSelect(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;->a(ZLjava/util/List;)V

    return-void

    .line 48
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->setMultiSelectOnStart:Z

    return-void
.end method

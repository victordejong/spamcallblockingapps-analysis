.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseCallAppAdapter<",
        "Ljava/util/List<",
        "TData;>;TData;TViewHolder;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TData;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TData;>;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

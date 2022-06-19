.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataHolder:",
        "Ljava/lang/Object;",
        "Data:",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TViewHolder;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataHolder;"
        }
    .end annotation
.end field

.field protected b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field private c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

.field private d:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 22
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter$1;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->d:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    .line 31
    new-instance v0, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 59
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;->isTypeAbleToEnrich(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewHolder;TData;)V"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    .line 1045
    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public abstract getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TData;"
        }
    .end annotation
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 15
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;

    .line 1082
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p2

    .line 1083
    instance-of v0, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    if-eqz v0, :cond_0

    .line 1084
    move-object v0, p2

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 1085
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c:Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;

    .line 2041
    iget-object v1, v1, Lcom/callapp/contacts/manager/CallAppEnrichedItemsManager;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1085
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->setLoaded(Z)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->d:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    iput-object v0, p1, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    .line 1088
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V

    return-void
.end method

.method public abstract setData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataHolder;)V"
        }
    .end annotation
.end method

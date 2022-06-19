.class public abstract Lcom/callapp/contacts/activity/favorites/DragItemAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;,
        Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "TData;TViewHolder;>;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

.field private d:J

.field private e:J


# direct methods
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

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    const-wide/16 p1, -0x1

    .line 41
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->d:J

    .line 42
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->e:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;",
            "TData;)V"
        }
    .end annotation

    .line 76
    iget-wide v0, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    iput-wide v0, p1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->v:J

    .line 77
    iget-object v0, p1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-wide v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->d:J

    iget-wide v3, p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->contactId:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->c:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder;->setDragStartCallback(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public getDropTargetId()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->e:J

    return-wide v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 72
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getUniqueItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getUniqueItemId(I)J
.end method

.method setDragItemId(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->d:J

    return-void
.end method

.method setDragStartedListener(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->c:Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;

    return-void
.end method

.method setDropTargetId(J)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->e:J

    return-void
.end method

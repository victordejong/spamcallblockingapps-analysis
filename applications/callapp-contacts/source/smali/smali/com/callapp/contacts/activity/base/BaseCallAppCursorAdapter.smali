.class public abstract Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "ViewHolder:",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseCallAppAdapter<",
        "Landroid/database/Cursor;",
        "TDataType;TViewHolder;>;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Landroid/database/DataSetObserver;

.field private e:Landroid/util/SparseIntArray;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V
    .locals 1

    .line 21
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->f:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->e:Landroid/util/SparseIntArray;

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    .line 25
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getIndexColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->f:I

    .line 26
    new-instance p1, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver;-><init>(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->d:Landroid/database/DataSetObserver;

    .line 27
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->d:Landroid/database/DataSetObserver;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    return p1
.end method


# virtual methods
.method protected abstract a(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataType;"
        }
    .end annotation
.end method

.method public final b()Z
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getIndexColumnName()Ljava/lang/String;
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TDataType;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    iget v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->e:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemViewType(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    return v0
.end method

.method public setData(Landroid/database/Cursor;)V
    .locals 2

    .line 1069
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/cursor/Cursors;->a(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->d:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1

    .line 1074
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1077
    :cond_1
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    .line 1078
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 1079
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->d:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_2

    .line 1080
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->d:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1082
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->getIndexColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->f:I

    const/4 p1, 0x1

    .line 1083
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    .line 1084
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 1086
    iput p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->f:I

    const/4 p1, 0x0

    .line 1087
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->c:Z

    .line 1088
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->notifyDataSetChanged()V

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppCursorAdapter;->setData(Landroid/database/Cursor;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setHasStableIds(Z)V

    return-void
.end method

.class public Le/e/a/e0/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/e0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/e0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Le/e/a/e0/d$b;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic f:Le/e/a/e0/d;


# direct methods
.method constructor <init>(Le/e/a/e0/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Le/e/a/e0/d$a;-><init>(Le/e/a/e0/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Le/e/a/e0/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/liulishuo/filedownloader/model/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/e/a/e0/d$a;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Le/e/a/e0/d$a;->d:Landroid/util/SparseArray;

    iput-object p3, p0, Le/e/a/e0/d$a;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Le/e/a/e0/d$b;

    iget-object v1, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-direct {v0, v1}, Le/e/a/e0/d$b;-><init>(Le/e/a/e0/d;)V

    iput-object v0, p0, Le/e/a/e0/d$a;->c:Le/e/a/e0/d$b;

    return-object v0
.end method

.method public m(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 0

    return-void
.end method

.method public o(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 2

    iget-object v0, p0, Le/e/a/e0/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 12

    const-string v0, "filedownloaderConnection"

    const-string v1, "filedownloader"

    iget-object v2, p0, Le/e/a/e0/d$a;->c:Le/e/a/e0/d$b;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le/e/a/e0/d$b;->c()V

    :cond_0
    iget-object v2, p0, Le/e/a/e0/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v3}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    :try_start_0
    iget-object v5, p0, Le/e/a/e0/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Le/e/a/e0/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v7, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v7}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v7, v1, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v7, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v7}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->G()Landroid/content/ContentValues;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a()I

    move-result v7

    if-le v7, v9, :cond_3

    iget-object v7, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-virtual {v7, v5}, Le/e/a/e0/d;->n(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v8}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v11, "id = ?"

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-virtual {v8, v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liulishuo/filedownloader/model/a;

    invoke-virtual {v6}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/liulishuo/filedownloader/model/a;->i(I)V

    iget-object v8, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v8}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v7}, Lcom/liulishuo/filedownloader/model/a;->l()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v8, v0, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Le/e/a/e0/d$a;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    iget-object v1, p0, Le/e/a/e0/d$a;->e:Landroid/util/SparseArray;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_6

    iget-object v1, p0, Le/e/a/e0/d$a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iget-object v2, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-virtual {v2, v1}, Le/e/a/e0/d;->n(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Le/e/a/e0/d$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v0}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v0}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/e/a/e0/d$a;->f:Le/e/a/e0/d;

    invoke-static {v1}, Le/e/a/e0/d;->r(Le/e/a/e0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public v(ILcom/liulishuo/filedownloader/model/FileDownloadModel;)V
    .locals 1

    iget-object v0, p0, Le/e/a/e0/d$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

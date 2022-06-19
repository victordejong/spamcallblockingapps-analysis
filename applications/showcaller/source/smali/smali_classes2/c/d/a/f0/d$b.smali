.class Lc/d/a/f0/d$b;
.super Ljava/lang/Object;
.source "SqliteDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/f0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/database/Cursor;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field final synthetic g:Lc/d/a/f0/d;


# direct methods
.method constructor <init>(Lc/d/a/f0/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/d/a/f0/d$b;->g:Lc/d/a/f0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/f0/d$b;->e:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lc/d/a/f0/d;->r(Lc/d/a/f0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "SELECT * FROM filedownloader"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/f0/d$b;->d:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/f0/d$b;->d:Landroid/database/Cursor;

    invoke-static {v0}, Lc/d/a/f0/d;->s(Landroid/database/Cursor;)Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->e()I

    move-result v1

    iput v1, p0, Lc/d/a/f0/d$b;->f:I

    return-object v0
.end method

.method b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/d/a/f0/d$b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2
    iget-object v0, p0, Lc/d/a/f0/d$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/d/a/f0/d$b;->e:Ljava/util/List;

    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-boolean v1, Lc/d/a/i0/d;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v4, "delete %s"

    .line 5
    invoke-static {p0, v4, v1}, Lc/d/a/i0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lc/d/a/f0/d$b;->g:Lc/d/a/f0/d;

    invoke-static {v1}, Lc/d/a/f0/d;->r(Lc/d/a/f0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "filedownloader"

    aput-object v6, v5, v3

    const-string v6, "_id"

    aput-object v6, v5, v2

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v7, "DELETE FROM %s WHERE %s IN (%s);"

    invoke-static {v7, v5}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lc/d/a/f0/d$b;->g:Lc/d/a/f0/d;

    invoke-static {v1}, Lc/d/a/f0/d;->r(Lc/d/a/f0/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "filedownloaderConnection"

    aput-object v5, v4, v3

    const-string v3, "id"

    aput-object v3, v4, v2

    aput-object v0, v4, v6

    invoke-static {v7, v4}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/f0/d$b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/a/f0/d$b;->a()Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/f0/d$b;->e:Ljava/util/List;

    iget v1, p0, Lc/d/a/f0/d$b;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

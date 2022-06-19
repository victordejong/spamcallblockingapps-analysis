.class public Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "OrmLiteCursorLoader.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao$DaoObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/j256/ormlite/dao/Dao$DaoObserver;"
    }
.end annotation


# instance fields
.field protected cursor:Landroid/database/Cursor;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field protected query:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object p3, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 66
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 68
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public getQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/stmt/PreparedQuery;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    .line 45
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->getCursor()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    return-object v0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public onChange()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onContentChanged()V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 108
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->onStopLoading()V

    .line 109
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->unregisterObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->registerObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 83
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->forceLoad()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 87
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->forceLoad()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->cancelLoad()Z

    return-void
.end method

.method public setQuery(Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteCursorLoader;->query:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-void
.end method

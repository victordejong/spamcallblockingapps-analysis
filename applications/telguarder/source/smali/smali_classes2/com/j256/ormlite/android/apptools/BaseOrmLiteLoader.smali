.class public abstract Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.super Landroid/content/AsyncTaskLoader;
.source "BaseOrmLiteLoader.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao$DaoObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "TT;>;>;",
        "Lcom/j256/ormlite/dao/Dao$DaoObserver;"
    }
.end annotation


# instance fields
.field private cachedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChange()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->onContentChanged()V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 76
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->onStopLoading()V

    .line 77
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cachedResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cachedResults:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->unregisterObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cachedResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->deliverResult(Ljava/util/List;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cachedResults:Ljava/util/List;

    if-nez v0, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->forceLoad()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->registerObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cancelLoad()Z

    return-void
.end method

.method public setDao(Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

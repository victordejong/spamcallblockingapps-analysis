.class public Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;
.super Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.source "OrmLitePreparedQueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<",
        "TT;TID;>;"
    }
.end annotation


# instance fields
.field private preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;)V

    .line 28
    iput-object p3, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-void
.end method


# virtual methods
.method public getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PreparedQuery is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dao is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreparedQuery(Lcom/j256/ormlite/stmt/PreparedQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-void
.end method

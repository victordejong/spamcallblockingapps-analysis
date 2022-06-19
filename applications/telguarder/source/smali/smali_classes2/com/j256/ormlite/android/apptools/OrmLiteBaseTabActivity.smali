.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;
.super Landroid/app/TabActivity;
.source "OrmLiteBaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/TabActivity;"
    }
.end annotation


# instance fields
.field private volatile created:Z

.field private volatile destroyed:Z

.field private volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->created:Z

    .line 21
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->destroyed:Z

    return-void
.end method


# virtual methods
.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_2

    .line 28
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->created:Z

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->destroyed:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call to onDestroy has already been made and the helper cannot be used after that point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Helper is null for some unknown reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A call has not been made to onCreate() yet so the helper is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-object v0
.end method

.method protected getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TH;"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0, p0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->getHelperInternal(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->created:Z

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->destroyed:Z

    return-void
.end method

.method protected releaseHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-void
.end method

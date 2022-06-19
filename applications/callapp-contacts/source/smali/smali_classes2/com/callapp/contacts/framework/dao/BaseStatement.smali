.class public abstract Lcom/callapp/contacts/framework/dao/BaseStatement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    return-void
.end method

.method private d()V
    .locals 2

    .line 58
    :try_start_0
    iget v0, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    mul-int/lit8 v0, v0, 0x46

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 24
    iget v0, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 30
    iget v2, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->d()V

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->b()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 50
    const-class v1, Lcom/callapp/contacts/framework/dao/BaseStatement;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 51
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->isNumTriesOK()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1068
    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 1071
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "database is locked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->d()V

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/dao/BaseStatement;->b()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 44
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getAnalyticsManager()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Successfully recovered from a %s exception"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Database"

    invoke-virtual {v4, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_2
    return-object v0

    .line 47
    :cond_5
    throw v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isNumTriesOK()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/callapp/contacts/framework/dao/BaseStatement;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.class final Landroidx/sqlite/db/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

.field private final d:Z

.field private final e:Ljava/lang/Object;

.field private f:Landroidx/sqlite/db/a/b$a;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/sqlite/db/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/sqlite/db/a/b;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Landroidx/sqlite/db/a/b;->b:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroidx/sqlite/db/a/b;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    .line 57
    iput-boolean p4, p0, Landroidx/sqlite/db/a/b;->d:Z

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/sqlite/db/a/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private c()Landroidx/sqlite/db/a/b$a;
    .locals 6

    .line 69
    iget-object v0, p0, Landroidx/sqlite/db/a/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/sqlite/db/a/a;

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroidx/sqlite/db/a/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroidx/sqlite/db/a/b;->d:Z

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroidx/sqlite/db/a/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Landroidx/sqlite/db/a/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    new-instance v3, Landroidx/sqlite/db/a/b$a;

    iget-object v4, p0, Landroidx/sqlite/db/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroidx/sqlite/db/a/b;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {v3, v4, v2, v1, v5}, Landroidx/sqlite/db/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/sqlite/db/a/a;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)V

    iput-object v3, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    goto :goto_0

    .line 78
    :cond_0
    new-instance v2, Landroidx/sqlite/db/a/b$a;

    iget-object v3, p0, Landroidx/sqlite/db/a/b;->a:Landroid/content/Context;

    iget-object v4, p0, Landroidx/sqlite/db/a/b;->b:Ljava/lang/String;

    iget-object v5, p0, Landroidx/sqlite/db/a/b;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/sqlite/db/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroidx/sqlite/db/a/a;Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;)V

    iput-object v2, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    .line 80
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    iget-boolean v2, p0, Landroidx/sqlite/db/a/b;->g:Z

    invoke-virtual {v1, v2}, Landroidx/sqlite/db/a/b$a;->setWriteAheadLoggingEnabled(Z)V

    .line 84
    :cond_1
    iget-object v1, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/sqlite/db/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Landroidx/sqlite/db/a/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Landroidx/sqlite/db/a/b;->f:Landroidx/sqlite/db/a/b$a;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, p1}, Landroidx/sqlite/db/a/b$a;->setWriteAheadLoggingEnabled(Z)V

    .line 100
    :cond_0
    iput-boolean p1, p0, Landroidx/sqlite/db/a/b;->g:Z

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroidx/sqlite/db/b;
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/sqlite/db/a/b;->c()Landroidx/sqlite/db/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/a/b$a;->a()Landroidx/sqlite/db/b;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroidx/sqlite/db/a/b;->c()Landroidx/sqlite/db/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/sqlite/db/a/b$a;->close()V

    return-void
.end method

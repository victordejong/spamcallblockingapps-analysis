.class public Lh1/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lh1/a;Lg1/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg1/b$a;

.field public final synthetic b:[Lh1/a;


# direct methods
.method public constructor <init>(Lg1/b$a;[Lh1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1/c$a$a;->a:Lg1/b$a;

    iput-object p2, p0, Lh1/c$a$a;->b:[Lh1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/c$a$a;->a:Lg1/b$a;

    iget-object v1, p0, Lh1/c$a$a;->b:[Lh1/a;

    invoke-static {v1, p1}, Lh1/c$a;->k([Lh1/a;Landroid/database/sqlite/SQLiteDatabase;)Lh1/a;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lh1/a;->d()Ljava/lang/String;

    .line 3
    iget-object v1, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lh1/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/b$a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 6
    :catch_0
    :goto_0
    :try_start_1
    iget-object v2, p1, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 8
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/b$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p1}, Lh1/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/b$a;->a(Ljava/lang/String;)V

    .line 10
    :cond_2
    throw v2

    :catch_1
    nop

    :goto_3
    if-eqz v1, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg1/b$a;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {p1}, Lh1/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg1/b$a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method

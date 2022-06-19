.class final Landroidx/room/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;

.field private final c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/room/n;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Landroidx/room/n;->b:Ljava/io/File;

    .line 44
    iput-object p3, p0, Landroidx/room/n;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 7

    .line 49
    new-instance v6, Landroidx/room/m;

    iget-object v1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/room/n;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/n;->b:Ljava/io/File;

    iget-object v0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;

    iget v4, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$a;->a:I

    iget-object v0, p0, Landroidx/room/n;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;

    .line 54
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$b;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/room/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ILandroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    return-object v6
.end method

.class final Landroidx/sqlite/db/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/sqlite/db/a/a;->a(Landroidx/sqlite/db/d;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/sqlite/db/d;

.field final synthetic b:Landroidx/sqlite/db/a/a;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/a/a;Landroidx/sqlite/db/d;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/sqlite/db/a/a$1;->b:Landroidx/sqlite/db/a/a;

    iput-object p2, p0, Landroidx/sqlite/db/a/a$1;->a:Landroidx/sqlite/db/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 165
    iget-object p1, p0, Landroidx/sqlite/db/a/a$1;->a:Landroidx/sqlite/db/d;

    new-instance v0, Landroidx/sqlite/db/a/d;

    invoke-direct {v0, p4}, Landroidx/sqlite/db/a/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Landroidx/sqlite/db/d;->a(Landroidx/sqlite/db/c;)V

    .line 166
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method

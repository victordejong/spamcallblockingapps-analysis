.class Lb/r/a/g/a$b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/a/g/a;->x(Lb/r/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/r/a/e;

.field final synthetic b:Lb/r/a/g/a;


# direct methods
.method constructor <init>(Lb/r/a/g/a;Lb/r/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/r/a/g/a$b;->b:Lb/r/a/g/a;

    iput-object p2, p0, Lb/r/a/g/a$b;->a:Lb/r/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object p1, p0, Lb/r/a/g/a$b;->a:Lb/r/a/e;

    new-instance v0, Lb/r/a/g/d;

    invoke-direct {v0, p4}, Lb/r/a/g/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lb/r/a/e;->e(Lb/r/a/d;)V

    .line 2
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method

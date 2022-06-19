.class public Lc9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9/f;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/media/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object v0, p0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    new-instance v1, Lc9/b;

    invoke-direct {v1, p1, v0}, Lc9/b;-><init>(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Lc9/g;
    .locals 1

    .line 1
    iget-object p2, p0, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget p2, Lc9/g;->b:I

    .line 2
    instance-of p2, p1, Lc9/g;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lc9/g;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lc9/g;

    invoke-direct {p2, p1}, Lc9/g;-><init>(Landroid/database/Cursor;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
